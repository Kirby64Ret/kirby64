#ifndef _OVL2_6_H_
#define _OVL2_6_H_

#include "types.h"

struct Level
{
/*0X0*/ u8    world;
/*0X1*/ u8    level;
/*0X2*/ u8    area;
/*0X3*/ u8    warpID;
};


// Main Header
// The main header contains references to the three main sections of the level settings block: Collision, Nodes and the Entity List.

struct Entities {
    u32 unk0; // TODO: Populate
};

struct Main_Header
{
/*0x00*/    struct CollisionHeader    *collisionHeader;
/*0x04*/    struct NodeHeader         *nodeHeader;
/*0x08*/    struct Entities           *entityIDs;
/*0x0C*/    int                       force_structure_alignment;
};
// Collision
// Collision is handled by several different lists that combine to create the level geometry.

// Vertices
// Vertices are made up of unsorted s16 tripets of x, y and z position.
// 
// The vertex array starts with a 0x270F triplet and optionally ends with a single 0x9999. This is assumed to be for 4 byte alignment of the following sections.

// Triangles
// Triangles are made by connecting 3 vertices referenced by their index. (e.g. 0,1,2 is made up of vertices 0,1 and 2 in the list). Every Triangle has a struct that has additional parameters telling the game how to handle collision.

struct CollisionTriangle
{
/*0x0*/     u16    vertex[3];
/*0x6*/     u16    polyCount;
/*0x8*/     u16    normalType;          //(1 forward norm, 2 back norm, 4 no shadow, 8 non solid)
/*0xA*/     u16    collisionIndex; //based on col type this num references array pos
/*0xC*/     u16    breakParticle;       //(seen in DEDEDE hammer break)
/*0xE*/     u16    Halt_Movement;        //Stops kirby from moving/triggers automatic behavior.
/*0x10*/    u16    collisionParameter;           //ex.Amount to move kirby while on certain col types or Break Condition
/*0x12*/    u16    collisionType;       //see col type list
};
// The following is a list of Collision_Type values known.

#define COL_TYPE_DEFAULT 0x0  // - default
#define COL_TYPE_WALL_LADDER 0x1  // - wall ladder
#define COL_TYPE_ROPE 0x2  // - rope
#define COL_TYPE_DEATH_FLOOR 0x3  // - death floor
#define COL_TYPE_SEMI_SOLID 0x4  // - Platform you can jump through/Fall Through
#define COL_TYPE_WARP 0x8  // - warp
#define COL_TYPE_BREAKABLE 0x9  // - STAR BLOCK/Breakable Blocks
#define COL_TYPE_BREAKABLE_CEILING 0xD  // - Breakable Ceiling/Breaks when launched through
#define COL_TYPE_HAMMER_BREAKABLE 0x10 // - DEDEDE hammer break
#define COL_TYPE_BACKWARD_CONVEYOR 0x12 // - move kirby backwards while on top
#define COL_TYPE_FORWARD_CONVEYOR 0x13 // - move kirby forwards while on top
#define COL_TYPE_CUSTOM_14 0x14 // - Platform with custom movement (seems to be in some sort of object list separate from normal level geometry)

// The triangle list begins with a placeholder struct of (0,1,2,3,4,5,6,7,8,9)

struct Normal
{
/*0x0*/    f32 x;
           f32 y;
           f32 z;
/*0xC*/    f32 originOffset;
};
// Triangle Groups
// The triangle groups is a list of triangles used to make collision sorting more efficient.

// The triangle group list begins with a flag of 0x8192 and ends with 0x9999. Each triangle group is a u16 list of indices to the triangle struct array.

// Each triangle group represents one polygon index (0x6 in tri struct). The groups are defined by setting the msb at the last triangle in that group. This means any coplanar, connected N-gon will be a single polygon group.

// There should be an equal amount of items in the triangle list and triangle group list.

// Normal Groups
// The normal groups are a binary space partition tree of the level normals and corresponding triangles
// associated with those normals. Each normal group represents a node in the tree, and has a right and
// left child based on whether the ensemble of triangles is in front or behind the parent node.

// The first index of the normal group is (-1,-2,-3,-4), the search through the tree starts at the last
// member in the array, indices of zero refer to leaf nodes.

struct NormalGroup
{
/*0x0*/  u16  normalIndex;
/*0x2*/  u16  leftIndex;
/*0x4*/  u16  rightIndex;
/*0x6*/  u16  triCellIndex;
};
// Destructable Geometry Groups
// A Destructable Geo list is referenced by certain collision types using 0xA inside the col tri struct. This is so instead of destroying one triangle, all connected geometry is edited as a single rigid body.

// When a triangle is going to be edited, 0xA of the tri struct references the index into this list. This list will then tell the game the index to the array of destructable geo indices and the number of members in that array.

struct DynGeo_List
{
/*0x0*/  u16  Num_Dynamic_Geo_Group_Members; //Number of connected triangles
/*0x2*/  u16  Index_To_Dynamic_Geo_Group; //(0x30 in col header)
/*0x4*/  u16  Unk_Index; //Gets stored to unk struct
};
// The dynamic geo list usually ends with 0x9999, but it is not necessary. Potentially for alignment. The dynamic geo list can also be null, in that case the col header will have a null ptr to match.

// Destructable Geometry Indices
// Destructable geometry indices are an array of u16 indices that reference the tri struct array.

// When a triangle is being edited, 0xA in the tri struct points to the destructable geometry group. From there an index to this destructable geometry index list is given, and the number of members in that list.

// The dynamic geomtry group only has the references to triangles. The transformation (only destruction?) is applied based on col type or specific code.

// The dynamic geo geoup array usually ends with 0x9999, but its not necessary. Possibly for alignment. This list can also be null, and will have a null ptr in the col header to match.

// Water Data
// Water data is an array of water structs that will determine how kirby collides with water. Normals and a bounding box are used instead of polygons to determine collision. First kirby has to be inside the bounding box inside the water data struct. Then the normals are used. Normals are different than collision triangle geometry in that they define an infinite plane. The normal planes intersect to create a closed surface which is used as the collision check.

struct WaterData
{
/*0x0*/    u16    Num_Normals;
/*0x2*/    u16    Norm_Array_Index;
/*0x4*/    u8     Water_Box_Active;
/*0x5*/    u8     Activate_Water_Flow;
/*0x6*/    u8     Water_Flow_Direction;
/*0x7*/    u8     Water_Flow_Speed;
/*0x8*/    f32    Pos1;
/*0xC*/    f32    Pos2;
/*0x10*/   f32    Pos3;
/*0x14*/   f32    Pos4;
};
// Water Floats
// Works exactly like floats for other collision triangles. Lead by a (1,2,3,4) the followed by (3*norms,origin offset). See struct Normal. Follows all the conventions for normals that you'd expect, including n * r = -offset.

// This list is only accessed by being pointed to by the water data struct.

// Collision Header
// The collision header is referred to by the first index inside the main header. The collision header has the following format.

struct bgmaprecord
{
    u16 index;
    u16 part1;
    u16 part2;
    u16 code;
};

struct CollisionHeader
{
/*0x0*/    struct CollisionTriangle    *Triangles;
/*0x4*/    u32       Len_Triangles;
union v {
/*0x8*/    s16       *Vertices;
           f32       *VerticesF; 
} vertices;
/*0xC*/    u32       Len_Vertices;
/*0x10*/   struct Normal *Triangle_Normals;
/*0x14*/   u32       Len_Triangle_Normals;
/*0x18*/   u16       *Triangle_Cells;
/*0x1C*/   u32       Len_Triangle_Cells;
/*0x20*/   struct bgmaprecord *Triangle_Norm_Cells;
/*0x24*/   u32       Len_Triangle_Norm_Cells;
/*0x28*/   u32       Num_Floor_Norms; //Should be tri norm cells minus 1
/*0x2C*/   struct DynGeo_List     *Destructable_Groups;
/*0x30*/   u16       *Destructable_Indices;
/*0x34*/   struct WaterData      *WaterData;
/*0x38*/   u32       Len_WaterData;
/*0x3C*/   struct Normal          *Water_Normals;
/*0x40*/   u32       Len_Water_Normals;
};
// After the level loads the pointers are converted from offsets in the Level Settings Block to virtual addresses in a different RAM location accompanied by other collision data generated.

struct vCollisionHeader {
    u32 usingFloatVertices; // Always 0, since 16 bit vertices are used
    struct CollisionHeader header;
};

// Node Connectors
// Node connectors tell the game which nodes to use as kirby hits the boundaries of a node. The number of connections for each node is listed in the path node header.

struct Node_Connectors
{
/*0x00*/    u16     Go_Backwards;
/*0x02*/    u16     Current_Node;
/*0x04*/    u16     Connected_Node; //Not sure
/*0x06*/    u16     Go_Foward;
};
// Basically if a node is connected on both ends to the same node, there is only one node connector. In this case Go_Forward is used to determine if kirby should be allowed to pass or not. On the other hand Go_Backwards only allows movement through when 0. If there are two connections than backand front connect to different nodes. In that case the first determines backwards connection while the second determines forwards. Go_Backwards now determines all movement, with the same effect as the single node.


// NodeHeader
// The level nodes are referred to by the second index in the main header. This section tells the game how to move kirby as you progress through the level and how the camera should act.

struct PathNodeHeader
{
/*0x0*/    struct Kirby_Node          *Kirby_Node;
/*0x4*/    struct Path_Node_Footer    *Path_Node_Footer;
/*0x8*/    struct Node_Connectors     *Node_Connections; // array
/*0xC*/    u16      Num_Connections;
/*0xE*/    u16      Self_Connected;
};
struct NodeHeader
{
/*0x0*/    u32    pathNodeCount;
/*0x4*/    struct PathNodeHeader (*pathHeader)[];
/*0x8*/    u8     (*unkU8Array)[];
/*0xC*/    f32    (*unkF32Array)[];
};
// Path Node Headers
// Pathing nodes are sections of the level that have a defined path and camera movement for kirby as he progresses through the level.

// Each node has several parts which are pointed to by the path node header array.

// Path Nodes
// Path nodes are made up of 3 mandatory parts, and one optional part. A footer, a position matrix, and the boundary matrix are required. The optional section has unknown use.

// The path node footer contains pointers to the other sections, as well as important data for those sections.

// The boundary matrix is a N×1 matrix that has percentage completion for the positional matrix. This matrix tells the game how much each position in the position matrix contributes towards one node.

// The position matrix is a 3×N matrix which tells the game the absolute positioning of kirby as you progress through the level. This matrix is how kirby moves in both X and Z when you push to the right.

// All together these sections create a path which kirby will walk along when you push right/left. Theyre ordered in the rom as: Position matrix, boundary matrix, unknown path matrix, path node footer.

struct Path_Node_Footer
{
/*0x00*/    u32    FlagUnk; //0x200 if *Unk should be used
/*0x04*/    u32    Num_Node_Sections;
/*0x08*/    Vec3f  Position_Matrix;
/*0x0C*/    f32    Node_Length;
/*0x10*/    f32    (*Boundary_Matrix)[];
/*0x14*/    f32    (*Unk)[][5];
};
// The unknown section is almost always null. All that is known is that it follows the boundary matrix and is an areay of 5 floats, with length of Num_Node_Sections-1. The number of Position_Matrices is extended by FlagUnk/0x100. Since its always 0x0 or 0x200 depending on the unk section it is only ever extended by 2.

// Camera&Kirby Nodes
// These nodes tell the game how to move the camera with respect to the path nodes. There are settings for kirby's graphics, and warps as he progresses through the level, as well as camera movement.

// Thr flag in 0xE of Kirby_Node determines if 0x10 or 0x4 is read. A value of 0x10 reads unused3, and a value of 0x1 reads the warp. This wholly seems useless outside of setting up warps. Very likely to be old code left in.

// Opt_1 and opt_2 are used only in 5-5-1.

struct Camera_Node
{
/*0x00*/   u16    Camera_Type;
/*0x02*/   u8     Lock_X_pos;
/*0x03*/   u8     Lock_Y_pos;
/*0x04*/   u8     Lock_Z_pos;
/*0x05*/   u8     unused;
/*0x06*/   u8     unk1;
/*0x07*/   u8     unk2;
/*0x08*/   u8     Follow_X_Angle;
/*0x09*/   u8     unk4;
/*0x0A*/   u8     unk5;
/*0x0C*/   f32    X_Focus_Pos;
/*0x10*/   f32    Y_Focus_Pos;
/*0x14*/   f32    Flag; //usually 9999
/*0x18*/   f32    Near_Clip_Plane;
/*0x1C*/   f32    Far_Clip_Plane;
/*0x20*/   f32 Cam_Y_Pos[2];
/*0x28*/   f32 Cam_X_Pos[2];
/*0x30*/   f32 Cam_Z_Pos[2];
/*0x38*/   f32 FOV_Pair[2];
/*0x40*/   f32 Lateral_Y_Pos[2];
/*0x48*/   f32    Unk6;
/*0x4C*/   f32    Cam_X_Offset_Locked;
/*0x50*/   f32    Unk7;
/*0x54*/   f32    Cam_Y_Pos_Locked;
/*0x58*/   f32 Flag2[2]; //mostly a 9999 pair
/*0x60*/   f32    Focus_Y_Above; //while 0x6 is true
/*0x64*/   f32    Focus_Y_Below; //while 0x6 is true
/*0x68*/   f32    Focus_X_Left; //while 0x6 is true
/*0x6C*/   f32    Focus_X_Right; //while 0x6 is true
};
struct Kirby_Node
{
/*0x00*/    u8      Node_Number;
/*0x01*/    u8      Padding;
/*0x02*/    u16     unk2;
/*0x04*/    struct Level    Warps;
/*0x08*/    u8      unused;
/*0x09*/    u8      Shade_Left;
/*0x0A*/    u8      Shade_Center;
/*0x0B*/    u8      Shade_Right;
/*0x0C*/    u16     unused2;
/*0x0E*/    u16     Unkflag;
/*0x10*/    s16     unused3;
/*0x12*/    s16     unused4;
/*0x14*/    f32     opt_1;
/*0x18*/    f32     opt_2;
/*0x1C*/    u32     unused5;
/*0x20*/    struct Camera_Node    Camera;
};



// Entity List
// The entity list is an array of structs which spawn objects as kirby gets in range. It is terminated by an 0x99999999 marker. See Entity IDs for more info. This section is optional and if a not pointed to in the main header will not be used.

struct ColStateUnk4 {
    u16 cell;
    f32 projection; // how far kirby is from the plane
    // u16 unk6;
};



struct CollisionState {
    s32 numCells;

    struct ColStateUnk4 *unk4; // valid hits for normal cells

    /* 0x08 */ Vector currPos;

    /* 0x14 */ Vector nextPos;

    /* 0x20 */ Vector deltaPos;

    /* 0x2C */ struct Normal *someNormal;

    struct vCollisionHeader *unk30;

    struct Normal *unk34;
    struct Normal *unk38;
    u32 (*unk3C)(void);
    u8 (*unk40)(struct CollisionTriangle *a0, struct Normal *a1, struct Normal *a2, struct Normal *a3);
    u8 (*unk44)(struct Normal *a0, s32 arg1);
    u16 unk48;
    u16 unk4A;
    u16 unk4C;
    u16 unk4E;
};


#define FORWARD_NORMAL      (1 << 0)
#define BACKWARD_NORMAL     (1 << 1)
#define NO_SHADOW           (1 << 2)
#define NON_SOLID           (1 << 3)
#define DOUBLE_SIDED_NORMAL (FORWARD_NORMAL | BACKWARD_NORMAL)


#endif