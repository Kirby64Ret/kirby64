import struct
import math
from KirbyCSdatatypes import *

globBank = 0
globIndex = 0

symbols = {}

#-------------------------------------------------------------------------------
#Geo Block Functions

def SegPtrList(start,rom):
    i=0
    arr = []
    while(True):
        ar = struct.unpack(">L",rom[start+i:start+i+4])
        arr.append(ar)
        if ar[0] == 0:
            break
        i+=4
    return arr

def GetGeoHeader(rom,start):
    header = []
    for s in Geo_Header.keys():
        v = struct.unpack(">L",rom[start+s:start+s+4])
        header.append([Geo_Header[s],v])
    return header

def GetGeoVertRefs(rom,start,GH):
    start = start+(GH[4][1][0]&0xFFFFFF)
    symbols[start | 0x04000000] = "bank_%d_index_%d_vert_load_refs_%08X" % (globBank, globIndex, start | 0x04000000)
    refs = SegPtrList(start,rom)
    return refs

def GetGeoImgRefs(rom,start,GH):
    refStart = start+(GH[3][1][0]&0xFFFFFF)
    symbols[refStart | 0x04000000] = "bank_%d_index_%d_tex_img_refs_%08X" % (globBank, globIndex, refStart | 0x04000000)
    refs = SegPtrList(refStart,rom)
    for r in refs:
        refAddr = r[0]
        ptrlocation = start + (refAddr & 0x00FFFFFF)
        v = struct.unpack(">LL",rom[ptrlocation:ptrlocation + 8])
        if v[1] != 0 and v[1] & 0xFF000000 == 0:
            print(f"assets/image/bank_{v[1] >> 16}/{v[1] & 0xFFFF} is a palette!")
    return refs

def GetLayout(rom,start,GH,end):
    start = start+(GH[0][1][0]&0xFFFFFF)
    layout = []
    end = end+(GH[0][1][0]&0xFFFFFF)
    len = end-start
    i=0
    env = []
    Envfx = False
    symbols[start | 0x04000000] = "bank_%d_index_%d_layout_%08X" % (globBank, globIndex, start | 0x04000000)
    while(True):
        v = []
        for s in Layout.keys():
            q = struct.unpack(Layout.get(s)[0],rom[start+s+i:i+start+s+Layout.get(s)[2]])
            if s == 4:
                q2 = struct.unpack(Layout.get(s)[0],rom[start+s+i:i+start+s+Layout.get(s)[2]])[0]
                if q2 != 0 and q2 != 0x80000000:
                    symbols[q2] = "bank_%d_index_%d_entry_point_%08X" % (globBank, globIndex, q2)
            v.append([Layout.get(s)[1],q])
        if Envfx:
            env.append(v)
        else:
            layout.append(v)
        if v[1][1][0] == 0x12 and (v[2][1][0]&0x80000000==0x80000000):
            Envfx = True
        elif v[1][1][0] == 0x12:
            break
        elif (Envfx == True and (v[0][1][0]&0x8000)==0x8000) or i>(len-48):
            break
        i+=44
    return [layout,env]

def GetEntryPoints(rom,start,Layout,DLmembers):
    entry = []
    starts = []
    for L in Layout:
        #Only get ones in bank 4.
        if L[2][1][0]&0xFF000000 !=0x04000000:
            continue
        Estart = start+(L[2][1][0]&0xFFFFFF)
        starts.append(L[2][1][0])
        i=0
        E = []
        while(True):
            DLm = DLmembers+1
            v = struct.unpack(">%dL"%DLm,rom[Estart+i:Estart+i+DLm*4])
            E.append(v)
            if v[0] == 4:
                break
            i+=DLm*4
        entry.append(E)
    for i in starts:
        symbols[i | 0x04000000] = "bank_%d_index_%d_entry_point_%08X" % (globBank, globIndex, i | 0x04000000)
        # print("%08X" % i)
    return [entry,starts]

def GetEntryPoints14(rom,start,ptr):
    entry = []
    starts = []
    Estart = start+(ptr&0xFFFFFF)
    starts.append(ptr)
    i=0
    E = []
    while(True):
        v = struct.unpack(">2L",rom[Estart+i:Estart+i+8])
        E.append(v)
        if v[0] == 4:
            break
        i+=8
    entry.append(E)
    for i in starts:
        symbols[i | 0x04000000] = "bank_%d_index_%d_entry_point_%08X" % (globBank, globIndex, i | 0x04000000)
        # print("%08X" % i)
    return [entry,starts]

def GetEntryPoints1B(rom,start,Layout):
    entry = []
    starts = []
    for L in Layout:
        #Only get ones in bank 4.
        if L[2][1][0]&0xFF000000 !=0x04000000:
            continue
        Estart = start+(L[2][1][0]&0xFFFFFF)
        starts.append(L[2][1][0])
        i=0
        E = []
        v = struct.unpack(">L",rom[Estart+i:Estart+i+4])[0]
        q = struct.unpack(">L",rom[Estart+i+4:Estart+i+8])[0]
        #This is a bit idiotic but I do this so I don't have to
        #create if statements for each specific render mode.
        E.append([0,v])
        E.append([0,q])
        entry.append(E)
    entry.append([[4,0]])
    for i in starts:
        symbols[i | 0x04000000] = "bank_%d_index_%d_entry_point_%08X" % (globBank, globIndex, i | 0x04000000)
        # print("%08X" % i)
    return [entry,starts]

def GetGroups(rom,start,Layout):
    group = []
    starts = []
    for L in Layout:
        if L[2][1][0]&0xFF000000 !=0x04000000:
            continue
        group.append([0,(L[2][1][0])])
        starts.append(L[2][1][0])
    group.append([4,0])
    return [[group],starts]

def GetMicrocode(rom,start,EP,end,DLmembers):
    f3d = []
    starts = []
    jumps = []
    jumped = 0
    for p in EP:
        for s in p:
            if s[0] == 4:
                continue
            #an entry point can have any number of DL members in it theoretically
            for j in range(1,DLmembers+1,1):
                ex2 = []
                #I dynamically create new entry points to deal with jumps.
                #This should deal with that error
                if j>=len(s):
                    continue
                if s[j]==0:
                    continue
                Fstart = start + (s[j]&0xFFFFFF)
                starts.append(s[j])
                if Fstart>end:
                    break
                endDL = 0xDF00000000000000
                JumpEnd = 0xDE01000000000000
                JUMP = 0xDE00000000000000
                BZ = 0xE100000000000000
                i=0
                while(True):
                    f = struct.unpack(">Q",rom[Fstart+i:Fstart+i+8])
                    if f[0] >> 56 == 0x01:
                        symbols[f[0] & 0xFFFFFFFF] = "bank_%d_index_%d_vtx_%08X" % (globBank, globIndex, f[0] & 0xFFFFFFFF)
                    ex2.append(f)
                    if ((f[0] & 0xFF00000000000000)==JUMP) or ((f[0] & 0xFFFFFFFF00000000)==BZ):
                        if f[0]&0xFF000000==0x04000000:
                            newEP = (0x1,f[0]&0xFFFFFFFF)
                            if newEP not in jumps:
                                p.append(newEP)
                                jumps.append(newEP)
                                jumped = newEP
                    if f[0] == endDL:
                        # print("%08X" % (i + 0x040030E8))
                        break
                    if f[0]&0xFFFFFFFF00000000 == JumpEnd:
                        # print("poopsie")
                        break
                    if Fstart+i>end:
                        # print("oopsie")
                        break
                    i+=8
                f3d.extend([ex2])
    for p in EP:
        for a in jumps:
            if a in p:
                p.remove(a)
    return [f3d,starts]

#switched to dumping verts raw and have gotten better results. Easier to parse too.
def GetGeoVerticesOld(rom,start,VR):
    Verts = []
    starts = []
    Vbufs = []
    ranges = []
    for ref in VR:
        if ref[0] == 0:
            break
        Vstart = start + (ref[0]&0xFFFFFF)
        G_VTX = struct.unpack(">2L",rom[Vstart:Vstart+8])
        num = (G_VTX[0]&0x000FF000)>>12
        VLoad = (G_VTX[1]&0x00FFFFFF)+start
        #remove duplicate verts and clip buffers
        if G_VTX[1] in starts:
            #low hanging fruit
            continue
        skip=0
        for v in Vbufs:
            #skips
            if VLoad<(v[0]+v[1]*16) and VLoad>v[0]:
                skip=1
                break
        if not skip:
            Vbufs.append([VLoad,num])
            starts.append(G_VTX[1])
    #Now I must sort the lists
    starts.sort()
    Vbufs.sort(key=lambda x: x[0])
    for ref in Vbufs:
        VB = []
        for i in range(ref[1]):
            Vert = []
            for q in Geo_Vert.keys():
                Vert.append([Geo_Vert.get(q)[1],struct.unpack(Geo_Vert.get(q)[0],rom[i*16+ref[0]+q:i*16+ref[0]+q+Geo_Vert.get(q)[2]])])
            VB.append(Vert)
        Verts.append(VB)
    return [Verts,starts]

def GetGeoVertices(rom,start,starts):
    startGV =start + 0x20
    if not starts:
        return None
    q = starts.copy()
    q.sort()
    end = q[0]
    GV = []
    for i in range(startGV,(end&0xFFFFFF)+start,16):
        V = []
        for q in Geo_Vert.keys():
            V.append([Geo_Vert.get(q)[1],struct.unpack(Geo_Vert.get(q)[0],rom[i+q:i+q+Geo_Vert.get(q)[2]])])
        GV.append(V)
    return GV

def GetTextureScrolls(rom,start,GH):
    TS = GH[1][1][0]
    ts = []
    Unk = GH[6][1][0]
    l = Unk-TS
    if TS and Unk:
        Hstart = start+(TS&0x00FFFFFF)
        symbols[Hstart | 0x04000000] = "bank_%d_index_%d_texscroll_header_%08X" % (globBank, globIndex, Hstart | 0x04000000)
        h = []
        ptrs = []
        i=0
        k=0
        while(True):
            word = struct.unpack(">L",rom[Hstart+i*4:i*4+4+Hstart])
            if word[0]==0x99999999:
                h.append(word)
                k=i*4+4
                break
            elif word[0]:
                symbols[word[0]] = "bank_%d_index_%d_texture_scroll_subheader_%08X" % (globBank, globIndex, word[0])
                ptrs.append(word)
                h.append(word)
            else:
                h.append(word)
            i+=1
        Dptrs = []
        Header2 = []
        for p in ptrs:
            Pstart = start+(p[0]&0x00FFFFFF)
            i=0
            L = []
            while(True):
                word = struct.unpack(">L",rom[Pstart+i*4:i*4+4+Pstart])
                if word[0]==0x99999999:
                    L.append(word)
                    break
                elif word[0]:
                    symbols[word[0]] = "bank_%d_index_%d_texture_scroll_%08X" % (globBank, globIndex, word[0])
                    Dptrs.append(word)
                    L.append(word)
                else:
                    L.append(word)
                i+=1
            Header2.append([L,p[0]])
        #Now Dptrs is a list of pointers to my 0x78 byte structs.
        #Header 2 is a list of all the ptr headers that was inside the main header.
        #The texture scroll order should be TSheader,padding,structs,Secondary Headers.
        #I will check for padding, but seeing the address of the first thing inside Dptrs, and seeing if
        #it matches with the end of the main header, aka variable k.
        StructStart = start+(Dptrs[0][0]&0x00FFFFFF)
        PadStart = Hstart+k
        pad = []
        padLen = StructStart-PadStart
        for p in range(padLen)[::4]:
            pad.append(struct.unpack(">L",rom[PadStart+p:PadStart+p+4]))
        tHs = [*h]
        tPad = [*pad]
        #Now dumping TS structs.
        prev = StructStart
        TUnk = []
        for D in Dptrs:
            Dstart = start+(D[0]&0x00FFFFFF)
            if (Dstart-prev)>0x78:
                R = (Dstart-prev-0x78)//4
                TUnk.append(struct.unpack(">%dL"%R,rom[prev+0x78:prev+0x78+R*4]))
            else:
                TUnk.append(())
            prev = Dstart
            scroll = []
            for o,t in TextureScrollStruct.items():
                scroll.append(struct.unpack(t[0],rom[Dstart+o:Dstart+o+t[2]]))
            ts.append([scroll,D[0]])
        return [tHs,ts,Header2,tPad,TUnk]
    else:
        return [None,None,None,None,None]

def GetUnknown2(rom,start,GH):
    Unk = GH[6][1][0]
    num = GH[5][1][0]
    u = []
    if Unk:
        start = start+(Unk&0x00FFFFFF)
        symbols[start | 0x04000000] = "bank_%d_index_%d_anims_%08X" % (globBank, globIndex, start | 0x04000000)
        for b in range(num):
            u.append(struct.unpack(">L",rom[start+4*b:start+4*b+4]))
        return u
    else:
        return []

dlists = []

def GetGeoBlockData(rom,start,end):
    GH = GetGeoHeader(rom,start)
    [THS,TS,H2,tPad,tUnk] = GetTextureScrolls(rom,start,GH)
    VR = GetGeoVertRefs(rom,start,GH)
    IR = GetGeoImgRefs(rom,start,GH)
    #Depending on whether the layout is 0x17 or 0x18 the seg ptrs are different
    #In 5-4-7 and 5-4-8 a render mode of 0x1C is used which I have no idea about.
    if GH[2][1][0] == 0x17:
        [L,env] = GetLayout(rom,start,GH,end)
        [SP,SPstart] = GetGroups(rom,start,L)
        [f3d,starts] = GetMicrocode(rom,start,SP,end,1) #I get the end ptr here for while loop safety
        SP = []
    elif GH[2][1][0] == 0x18:
        [L,env] = GetLayout(rom,start,GH,end)
        [SP,SPstart] = GetEntryPoints(rom,start,L,1)
        [f3d,starts] = GetMicrocode(rom,start,SP,end,1) #I get the end ptr here for while loop safety
    elif GH[2][1][0] == 0x1C:
        [L,env] = GetLayout(rom,start,GH,end)
        #basically the same as 0x18, but entry points have two DL members.
        [SP,SPstart] = GetEntryPoints(rom,start,L,2)
        [f3d,starts] = GetMicrocode(rom,start,SP,end,2) #I get the end ptr here for while loop safety
    elif GH[2][1][0] == 0x14:
        L = []
        env = []
        [SP,SPstart] = GetEntryPoints14(rom,start,GH[0][1][0])
        [f3d,starts] = GetMicrocode(rom,start,SP,end,1) #I get the end ptr here for while loop safety
    elif GH[2][1][0] == 0x13:
        L = []
        env = []
        SP = [[[0,GH[0][1][0]],[4,0]]]
        SPstart = [GH[0][1][0]]
        [f3d,starts] = GetMicrocode(rom,start,SP,end,1) #I get the end ptr here for while loop safety
    elif GH[2][1][0] == 0x1B:
        [L,env] = GetLayout(rom,start,GH,end)
        [SP,SPstart] = GetEntryPoints1B(rom,start,L)
        [f3d,starts] = GetMicrocode(rom,start,SP,end,1) #I get the end ptr here for while loop safety
    else:
        f3d = []
        SP = []
        starts = []
        SPstart = []
        L = []
        env = []
    for i in starts:
        symbols[i] = "bank_%d_index_%d_dl_%08X" % (globBank, globIndex, i)
    GV = GetGeoVertices(rom,start,starts)
    #old cringe method which I'm now retiring. Caused me to parse entire DL
    #too many times.
    images = []
    unk = GetUnknown2(rom,start,GH)
    VBs = [] #old code
    return [GH,GV,f3d,IR,VR,SP,L,TS,images,starts,SPstart,VBs,unk,env,THS,H2,tPad,tUnk]

def WriteGeoBlock(file,GeoBlock,rom):
    RM = GeoBlock[0][2][1][0]
    file.write(
        "#include <ultra64.h>\n"
        "#include \"geo_block_header.h\"\n"
        "#include \"stages.h\"\n\n"
        )

    for ket in symbols:
        if "subheader" in symbols[ket]:
            file.write("extern struct TextureScroll *%s[];\n" % symbols[ket])
        if "_dl_" in symbols[ket]:
            file.write("extern Gfx %s[];\n" % symbols[ket])

    file.write("\n")

    WriteGeoHeader(file,GeoBlock[0])
    WriteGeoVerts(file,GeoBlock[1],GeoBlock[11])
    WriteGeoF3d2(file,GeoBlock[2],GeoBlock[9])
    WriteImgRefs(file,GeoBlock[3])
    WriteVertRefs(file,GeoBlock[4])
    #deal with entry points to display lists differently
    #depending on render mode.
    if RM==0x18 or RM==0x17 or RM==0x14:
        WriteEntryPoints(file,GeoBlock[5],GeoBlock[10])
    elif RM==0x1B:
        WriteDLPairs(file,GeoBlock[5],GeoBlock[10])
    elif RM==0x1C:
        WriteEntryPoints1C(file,GeoBlock[5],GeoBlock[10])
    if RM!=0x13:
        WriteLayout(file,GeoBlock[6],GeoBlock[13],GeoBlock[0])
    else:
        file.write("\n// No entry points in render mode 0x13\n")
        file.write("\n// No layout in render mode 0x13\n")
    WriteTS(file,GeoBlock[0],GeoBlock[7],GeoBlock[14],GeoBlock[15],GeoBlock[16],GeoBlock[17])
    WriteUnk2(file,GeoBlock[0],GeoBlock[12])
    if globBank == 3 and globIndex == 97:
        file.write("\n%s\n" % bank_3_index_97_hardcode)
    if globBank == 3 and globIndex == 96:
        file.write("\n%s\n" % bank_3_index_96_hardcode)
    if globBank == 3 and globIndex == 98:
        file.write("\n%s\n" % bank_3_index_98_hardcode)
    file.close()
    del file

def WriteGeoHeader(file,GH):
    global globBank, globIndex
    buf = ""
    buf += "\nstruct GeoBlockHeader bank_%d_index_%d_geo_block_header = {\n" % (globBank, globIndex)
    for h in zip(GH,Geo_Header.keys()):
        if h[1] == 0x1c:
            buf += "    /*0x%02X*/ 0x%X,\n};\n\n"%(h[1],h[0][1][0])
        elif h[1] == 0:
            if h[0][1][0] == 0:
                buf += "    /*0x%02X*/ NULL,\n"%(h[1],h[0][1][0])
            else:
                if h[0][1][0] in symbols:
                    if "entry_point" in symbols[h[0][1][0]]:
                        file.write("extern struct EntryPoint %s[];\n" % symbols[h[0][1][0]])
                    elif "_dl_" in symbols[h[0][1][0]]:
                        file.write("extern Gfx %s[];\n" % symbols[h[0][1][0]])
                    else:
                        file.write("extern struct Layout %s[];\n" % symbols[h[0][1][0]])
                    buf += "    /*0x%02X*/ %s,\n"%(h[1],symbols[h[0][1][0]])
                else:
                    buf += "    /*0x%02X*/ 0x%08X,\n"%(h[1],h[0][1][0])
        elif h[1] == 4:
            if h[0][1][0] == 0:
                buf += "    /*0x%02X*/ NULL,\n"%(h[1])
            else:
                if h[0][1][0] in symbols:
                    file.write("extern struct TextureScroll **%s[];\n" % symbols[h[0][1][0]])
                # buf += "    /*0x%02X*/ (struct TextureScroll **) 0x%08X,\n"%(h[1],h[0][1][0])
                    buf += "    /*0x%02X*/ %s,\n"%(h[1],symbols[h[0][1][0]])
                else:
                    buf += "    /*0x%02X*/ 0x%08X,\n"%(h[1],h[0][1][0])
        elif h[1] == 0xC:
            if h[0][1][0] == 0:
                buf += "    /*0x%02X*/ NULL,\n"%(h[1])
            else:
                file.write("extern Gfx *%s[];\n" % symbols[h[0][1][0]])
                buf += "    /*0x%02X*/ %s,\n"%(h[1],symbols[h[0][1][0]])
        elif h[1] == 16:
            if h[0][1][0] == 0:
                buf += "    /*0x%02X*/ NULL,\n"%(h[1])
            else:
                file.write("extern Gfx *%s[];\n" % symbols[h[0][1][0]])
                buf += "    /*0x%02X*/ %s,\n"%(h[1],symbols[h[0][1][0]])
        elif h[1] == 0x18:
            if h[0][1][0] == 0:
                buf += "    /*0x%02X*/ NULL,\n"%(h[1])
            else:
                file.write("extern u32 %s[];\n" % symbols[h[0][1][0]])
                buf += "    /*0x%02X*/ %s,\n"%(h[1],symbols[h[0][1][0]])
        else:
            buf += "    /*0x%02X*/ 0x%X,\n"%(h[1],h[0][1][0])
    file.write(buf)

def tc(a):
    return struct.unpack('>h', bytes.fromhex(str(a)))[0]

import binascii
def WriteGeoVerts(file,GV,VBs):
    global globBank, globIndex
    if not GV:
        return
    # file.write("%s\n"%Geo_Vertices_Comment)
    segAddr = 0x04000020
    hits = 0
    for j,v in enumerate(GV):
        if segAddr in symbols:
            if hits == 0:
                file.write("Vtx bank_%d_index_%d_vtx_04000020[] = {\n" % (globBank, globIndex))
            else:
                file.write("};\n\nVtx bank_%d_index_%d_vtx_%08X[] = {\n" % (globBank, globIndex, segAddr))
            hits+=1
        file.write("    {{{"+"{:>6}, {:>7}, {:>7}".format(
                    v[0][1][0],
                    v[0][1][1],
                    v[0][1][2],
            ) + "}, " + "{}, ".format(v[1][1][0])+"{"+"{:>6}, {:>7}".format(
                v[2][1][0],
                v[2][1][1],
                ) + "}, {"+"0x{:02x}, 0x{:02x}, 0x{:02x}, 0x{:02x}".format(
                    int(v[3][1][0]),
                    int(v[3][1][1]),
                    int(v[3][1][2]),
                    int(v[3][1][3]),
                )+"}}},\n"
            )
        segAddr += 16
    file.write("};\n\n")

import subprocess
from bank_specific_leftover_data import *
def WriteGeoF3d2(file,f3d,starts):
    global globBank, globIndex

    n=0
    #Sorting stuff when writing so its in the same order it is in the ROM
    NewStarts = [[i,s] for i,s in enumerate(starts)]
    NewStarts.sort(key= lambda x: x[1])
    NewF3D = [f3d[i[0]] for i in NewStarts]
    for j,l in enumerate(NewF3D):
        file.write("Gfx bank_%d_index_%d_dl_%08X[] = {\n"%(globBank, globIndex, NewStarts[n][1]))
        n+=1

        dl_str = ""
        for k,cmd in enumerate(l):
            #idk why I built this to work off hex strings but now it
            #fucks my ass and I have to do this dumb method.
            dl_str += "%016X"%cmd[0]
        proc = subprocess.Popen(
            "tools/gfxdis_f3dex2 -x -d " + str(dl_str)
            ,
            shell=True,
            stdout=subprocess.PIPE,
        )
        toReturn = proc.communicate()[0].decode("ascii")

        tr = toReturn.split("\n")[1:-2]
        # print(len(tr) == len(l))
        # if n== 2:
        #     print(toReturn)
        if len(tr) == len(l):
            for i in range(len(tr)):
                tmp_line = tr[i]
                if "gsSPVertex" in tmp_line:
                    tr2 = tmp_line.replace(",", " ").replace("(", " ").replace(")"," ").split()
                    ad = int(tr2[1], 16)
                    if ad in symbols:
                        tr2[1] = "bank_%d_index_%d_vtx_%08X" % (globBank, globIndex, ad)
                    tmp_line = "    gsSPVertex(%s, %s, %s)," % (tr2[1], tr2[2], tr2[3])
                if "gsSPDisplayList" in tmp_line:
                    tr2 = tmp_line.replace(",", " ").replace("(", " ").replace(")"," ").split()
                    ad = int(tr2[1], 16)
                    if ad in symbols:
                        tr2[1] = "bank_%d_index_%d_dl_%08X" % (globBank, globIndex, ad)
                    tmp_line = "    gsSPDisplayList(%s)," % (tr2[1])
                if "gsSPBranchLessZ" in tmp_line:
                    tr2 = tmp_line.replace(",", " ").replace("(", " ").replace(")"," ").split()
                    ad = int(tr2[1], 16)
                    if ad in symbols:
                        tr2[1] = "bank_%d_index_%d_dl_%08X" % (globBank, globIndex, ad)
                    tmp_line = "    gsSPBranchLessZ(%s, %s, %s, %s, %s, %s)," % (tr2[1], tr2[2], tr2[3], tr2[4], tr2[5], tr2[6])
                tr[i] = tmp_line
            file.write('\n'.join(tr) + "\n")
        else:
            # This check was originally intended to fix bank 7,
            # but since those DL's dont have actual F3D in them,
            # it will be necessary to find a better solution
            # for now, the DL's are hardcoded if they fail
            for i in l:
                file.write("{0x%08X, 0x%08X},\n" % (i[0] >> 32, i[0] & 0xFFFFFFFF))
                # proc = subprocess.Popen(
                #     "tools/gfxdis_f3dex2 -x -i -d " + str(hex(i[0]))[2:]
                #     ,
                #     shell=True,
                #     stdout=subprocess.PIPE,
                # )
                # tr = proc.communicate()[0].decode("ascii")
                # tmp_line = tr.split("\n")[1]
                # print(tmp_line)
                # if "gsSPVertex" in tmp_line:
                #     tr2 = tmp_line.replace(",", " ").replace("(", " ").replace(")"," ").split()
                #     ad = int(tr2[1], 16)
                #     if ad in symbols:
                #         tr2[1] = "bank_%d_index_%d_vtx_%08X" % (globBank, globIndex, ad)
                #     tmp_line = "    gsSPVertex(%s, %s, %s)," % (tr2[1], tr2[2], tr2[3])
                # if "gsSPDisplayList" in tmp_line:
                #     tr2 = tmp_line.replace(",", " ").replace("(", " ").replace(")"," ").split()
                #     ad = int(tr2[1], 16)
                #     if ad in symbols:
                #         tr2[1] = "bank_%d_index_%d_dl_%08X" % (globBank, globIndex, ad)
                #     tmp_line = "    gsSPDisplayList(%s)," % (tr2[1])
                # if "gsSPBranchLessZ" in tmp_line:
                #     tr2 = tmp_line.replace(",", " ").replace("(", " ").replace(")"," ").split()
                #     ad = int(tr2[1], 16)
                #     if ad in symbols:
                #         tr2[1] = "bank_%d_index_%d_dl_%08X" % (globBank, globIndex, ad)
                #     tmp_line = "    gsSPBranchLessZ(%s, %s, %s, %s, %s, %s)," % (tr2[1], tr2[2], tr2[3], tr2[4], tr2[5], tr2[6])
                # tr[i] = tmp_line

        file.write("};\n\n")
    if int(globIndex) == 112 and int(globBank) == 1:
        file.write(bank_1_index_112 % (globBank, globIndex))
    if int(globIndex) in [70, 97] and int(globBank) == 2:
        file.write(bank_1_index_112 % (globBank, globIndex))
    if int(globIndex) == 207 and int(globBank) == 7:
        file.write(bank_1_index_112 % (globBank, globIndex))
    if int(globIndex) in [1] and int(globBank) == 3:
        file.write(bank_1_index_112 % (globBank, globIndex))


def WriteLayout(file,L,env,GH):
    global globBank, globIndex
    if GH[2][1][0]==0x14:
        file.write("// No layout in render mode 0x14\n")
        return
    # file.write("\n// Layouts Start at 0x%X\n"%GH[0][1][0])
    file.write("\nstruct Layout bank_%d_index_%d_layout_%08X[] = {\n"%(globBank, globIndex, GH[0][1][0]))
    tmpAddr = GH[0][1][0]
    for i,l in enumerate(L):
        file.write("    {\n")
        for h in zip(l,Layout.keys()):
            if h[1] == 0x20:
                file.write("        /*0x%02X*/ {%s},\n    },\n"%(h[1],str(h[0][1])[1:-1]))
            elif h[1]==4:
                if h[0][1][0] == 0:
                    file.write("        /*0x%02X*/ NULL,\n"%h[1])
                else:
                    if h[0][1][0] in symbols:
                        file.write("        /*0x%02X*/ (struct EntryPoint *) %s,\n"%(h[1],symbols[h[0][1][0]]))
                    else:
                        file.write("        /*0x%02X*/ (struct EntryPoint *) 0x%08X,\n"%(h[1],h[0][1][0]))
            elif h[1]<8:
                file.write("        /*0x%02X*/ 0x%X,\n"%(h[1],h[0][1][0]))
            else:
                file.write("        /*0x%02X*/ {%s},\n"%(h[1],str(h[0][1])[1:-1]))
        tmpAddr += 0x2C
    #repeat for envfx, could do this smarter but I don't feel like it.
    file.write("// start of Environment Effects" * (len(env) != 0))
    for i,e in enumerate(env):
        file.write("\n    {\n")
        for h in zip(e,Layout.keys()):
            if h[1]<8:
                file.write("        /*0x%02X*/ 0x%X,\n"%(h[1],h[0][1][0]))
            else:
                file.write("        /*0x%02X*/ {%s},\n"%(h[1],str(h[0][1])[1:-1]))
        file.write("    },\n")
        tmpAddr += 0x2C
    file.write("};\n")

def getOffset(segAddr):
    tmp = 0
    fd = sorted([i for i in symbols])
    for i in fd:
        if segAddr < i:
            break
        tmp = i
    return ("bank_%d_index_%d_dl_%08X" % (globBank, globIndex,tmp), int((segAddr - tmp) / 8))

def WriteImgRefs(file,IR):
    global globBank, globIndex
    file.write("\n// Img Load F3DEX2 cmd refs\nGfx *%s[] = {\n" % [symbols[i] for i in symbols if "img_refs" in symbols[i]][0])
    for i,im in enumerate(IR):
        if im[0] == 0:
            file.write("    NULL,\n")
        else:
            file.write("    %s + 0x%X,\n"%getOffset(im[0]))
    file.write("};\n")

def WriteVertRefs(file,VR):
    global globBank, globIndex
    file.write("\n// Vert Load F3DEX2 cmd refs\nGfx *%s[] = {\n" % [symbols[i] for i in symbols if "load_refs" in symbols[i]][0])
    for i,v in enumerate(VR):
        if v[0] == 0:
            file.write("    NULL,\n")
        else:
            file.write("    %s + 0x%X,\n"%getOffset(v[0]))
    file.write("};\n")

def WriteDLPairs(file,SP,starts):
    for i,ep in enumerate(zip(SP,starts)):
        file.write("\nGfx *bank_%d_index_%d_dl_pair_%08X[] = {\n"%(globBank, globIndex, ep[1]))
        symbols[ep[1]] = "bank_%d_index_%d_dl_pair_%08X" % (globBank, globIndex, ep[1])
        for p in ep[0]:
            if p[1] in symbols:
                file.write("    %s,\n"%symbols[p[1]])
            else:
                if p[1] == 0:
                    file.write("    NULL,\n")
                else:
                    file.write("    0x%08X,\n"%p[1])
        file.write("};\n")

def WriteEntryPoints(file,SP,starts):
    if len(SP) == 0:
        file.write("// No Entry Points\n")
        return
    for i,ep in enumerate(zip(SP,starts)):
        file.write("\nstruct EntryPoint bank_%d_index_%d_entry_point_%08X[] = {\n"%(globBank, globIndex, ep[1]))
        for p in ep[0]:
            if p[1] == 0:
                file.write("    {0x%X, NULL},\n"%p[0])
            else:
                if p[1] in symbols:
                    file.write("    {0x%X, %s},\n"%(p[0],symbols[p[1]]))
                else:
                    file.write("    {0x%X, (Gfx *) 0x%08X},\n"%(p[0],p[1]))
        file.write("};\n")

padCount = 0
def WriteEntryPoints1C(file,SP,starts):
    global globBank, globIndex, padCount
    #this is doodoo brain but don't want to rewrite all stuff
    if len(SP) == 0:
        file.write("// No Entry Points\n")
        return
    for i,ep in enumerate(zip(SP,starts)):
        file.write("\nstruct EntryPoint_1C bank_%d_index_%d_entry_point_%08X[] = {\n"%(globBank, globIndex,ep[1]))
        buf = ""
        if len(ep[0]) > 2:
            buf = "u32 bank_%d_index_%d_pad_%d[3] = {%08X, %08X, %08X};\n" % (globBank, globIndex, padCount,
                ep[0][2][0],
                ep[0][2][1],
                ep[0][2][2]
                )
            del ep[0][2]
            padCount += 1
        for p in ep[0]:
            # file.write("    {");
            file.write("    ");
            if p[0] in symbols:
                file.write("%s, " % symbols[p[0]])
            else:
                file.write("0x%08X, " % p[0])

            if p[1] in symbols:
                file.write("%s, " % symbols[p[1]])
            else:
                file.write("0x%08X, " % p[1])

            if p[2] in symbols:
                file.write("%s,\n"%symbols[p[2]])
            else:
                file.write("0x%08X,\n"%p[2])
            # if p[2] in symbols:
            #     file.write("%s,}\n"%symbols[p[2]])
            # else:
            #     file.write("0x%08X,}\n"%p[2])
        file.write("\n};\n")
        file.write(buf)

def WriteUnk2(file,GH,unk):
    if unk:
        file.write("\nu32 bank_%d_index_%d_anims_%08X[] = {\n"%(globBank, globIndex, GH[6][1][0]))
        for i,u in enumerate(unk):
            # if i+1==len(unk):
            #     file.write(" 0x%X"%u + "\n")
            # else:
            file.write("    BANK_INDEX(%d, %d)"%(u[0] >> 16, u[0] & 0xFFFF) + ",\n")
            # file.write("    0x%08X"%(u[0]) + ",\n")
        file.write("};\n")
    else:
        file.write("\n// No Animations\n")
        return

def WriteTS(file,GH,TS,THS,H2,tPad,tUnk):
    global globBank, globIndex
    if TS:
        #Write Main TS Header
        # file.write(TSComment)
        ga = GH[1][1][0]
        file.write("\nstruct TextureScroll **bank_%d_index_%d_texscroll_header_%08X[] = {\n"%(globBank, globIndex, GH[1][1][0]))
        for j,v in enumerate(THS):
            if v[0]==0:
                file.write("    NULL,\n")
            else:
                if v[0] in symbols:
                    file.write("    %s"%symbols[v[0]] + ",\n")
                else:
                    file.write("    (struct TextureScroll **) 0x%08X"%v + ",\n")
            ga += 4
        file.write("};\n")

        #write padding; dont write bad syntax if there's none
        if len(tPad) != 0:
            symbols[ga] = "bank_%d_index_%d_texture_ptr_%08X" % (globBank, globIndex, ga)
            file.write("\n\nu32 bank_%d_index_%d_texture_ptr_%08X[] = {\n" % (globBank, globIndex, ga))
        else:
            file.write("\n")

        for j,v in enumerate(tPad):
            # else:
            if v[0] == 0x99999999:
                file.write("    0x%X"%v + ",\n")
                if j + 1 != len(tPad) and j + 2 != len(tPad):
                    file.write("};\n\nu32 bank_%d_index_%d_texscroll_padding_%08X[] = {\n" % (globBank, globIndex, ga + 4))
                    symbols[ga + 4] = "bank_%d_index_%d_texscroll_padding_%08X" % (globBank, globIndex, ga + 4)
            else:
                if v[0] == 0:
                    file.write("    0,\n")
                else:
                    file.write("    BANK_INDEX(%d, %d)"%(v[0] >> 16, v[0] & 0xFFFF) + ",\n")
            if j+1==len(tPad):
                file.write("};\n\n")
            ga += 4
        # file.write("};\n\n")
        #Write TS structs
        for i,[t,u] in enumerate(zip(TS,tUnk)):
            if u:
                if len(u) != 0:
                    file.write("u32 bank_%d_index_%d_texture_ptr_%08X[] = {\n "%(globBank, globIndex, (t[1]-len(u)*4)))
                    symbols[t[1]-len(u)*4] = "bank_%d_index_%d_texture_ptr_%08X"%(globBank, globIndex,t[1]-len(u)*4)
                for p in u:
                    if p == 0x99999999:
                        file.write("    0x%08X,\n"%p)
                    elif p == 0:
                        file.write("    0,\n")
                    else:
                        file.write("    BANK_INDEX(%d, %d),\n"%(p >> 16, p & 65535))
                file.write("};\n\n")
            if t[0]:
                file.write("struct TextureScroll bank_%d_index_%d_texture_scroll_%08X = {\n"%(globBank, globIndex,t[1]))
                for j,[v,[k,type]] in enumerate(zip(t[0],TextureScrollStruct.items())):
                    #why yes, I did learn code exclusively on w3schools
                    if type[0]==">f":
                        file.write("    /*0x%02X*/ "%k+"%f"%v + ",\n")
                    elif j == 0x3:
                        if v[0] == 0:
                            file.write("    /*0x%02X*/ "%k+"NULL,\n")
                        else:
                            file.write("    /*0x%02X*/ %s,\n" % (k, symbols[v[0]]))
                            # file.write("    /*0x%02X*/ "%k+"(u32 *) 0x%08X"%v + ",\n")
                    elif j == 15:
                        file.write("    /*0x%02X*/ "%k+"(u32 *)0x%X"%v + ",\n")
                    elif type[0]==">4B":
                        file.write("    /*0x%02X*/ {"%k+str(v)[1:-1] + "},\n")
                    elif j+1==len(t[0]):
                        file.write("    /*0x%02X*/ "%k+"0x%X"%v)
                    else:
                        file.write("    /*0x%02X*/ "%k+"0x%X"%v + ",\n")
                file.write("\n};\n\n")
        #Write subheaders
        for j,v in enumerate(H2):
            file.write("\nstruct TextureScroll *bank_%d_index_%d_texture_scroll_subheader_%08X[] = {\n"%(globBank, globIndex, v[1]))
            for k,h in enumerate(v[0]):
                if h[0] == 0:
                    file.write("    NULL" + ",\n")
                else:
                    if h[0] in symbols:
                        file.write("    &%s,\n" % symbols[h[0]])
                    else:
                        file.write("    (struct TextureScroll *) 0x%08X"%h[0] + ",\n")
            file.write("};\n")
    else:
        file.write("\n// No Texture Scroll section\n\n")
        return

def GeometryBlock(stage,Kirb,start,end, write: bool = False):
    #Now Testing Formatting Geo Blocks
    GB = GetGeoBlockData(Kirb,start,end)
    if write:
        WriteGeoBlock(stage,GB,Kirb)
    return GB


import sys
def SingleGeo(filename: str, Bank: int, Index: int, write: bool = False):
    global globBank, globIndex
    globBank = Bank
    globIndex = Index
    #[start,end] = GetPointers(Bank,Index,"Geo_Block",Kirb)
    name = ("Bank_%d_Index_%d_Geo"%(Bank,Index))
    stage = open(filename.split("bin")[0]+"c",'w')
    Kirb=open(filename,'rb')
    Kirb=Kirb.read()
    stage.write("// Bank " + str(Bank) + " ID " + str(Index) + "\n")
    GeometryBlock(stage,Kirb,0,len(Kirb), write)

if __name__=='__main__':
    toks = sys.argv[1].split("/")
    bank = int(sys.argv[2])
    index = int(sys.argv[3])
    SingleGeo(sys.argv[1], bank, index)