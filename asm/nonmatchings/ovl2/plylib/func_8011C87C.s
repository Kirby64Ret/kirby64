nonmatching func_8011C87C, 0x54

glabel func_8011C87C
    /* A52EC 8011C87C 3C058013 */  lui        $a1, %hi(gKirbyState)
    /* A52F0 8011C880 24A5E7C0 */  addiu      $a1, $a1, %lo(gKirbyState)
    /* A52F4 8011C884 3C04800D */  lui        $a0, %hi(D_800D6F10 + 0x8)
    /* A52F8 8011C888 3C02800D */  lui        $v0, %hi(D_800D6F38)
    /* A52FC 8011C88C A0A00004 */  sb         $zero, 0x4($a1)
    /* A5300 8011C890 ACA000AC */  sw         $zero, 0xAC($a1)
    /* A5304 8011C894 ACA000A8 */  sw         $zero, 0xA8($a1)
    /* A5308 8011C898 ACA0009C */  sw         $zero, 0x9C($a1)
    /* A530C 8011C89C ACA00098 */  sw         $zero, 0x98($a1)
    /* A5310 8011C8A0 ACA00094 */  sw         $zero, 0x94($a1)
    /* A5314 8011C8A4 24426F38 */  addiu      $v0, $v0, %lo(D_800D6F38)
    /* A5318 8011C8A8 24846F18 */  addiu      $a0, $a0, %lo(D_800D6F10 + 0x8)
  .L8011C8AC:
    /* A531C 8011C8AC 24840010 */  addiu      $a0, $a0, 0x10
    /* A5320 8011C8B0 AC80FFF4 */  sw         $zero, -0xC($a0)
    /* A5324 8011C8B4 AC80FFF8 */  sw         $zero, -0x8($a0)
    /* A5328 8011C8B8 AC80FFFC */  sw         $zero, -0x4($a0)
    /* A532C 8011C8BC 1482FFFB */  bne        $a0, $v0, .L8011C8AC
    /* A5330 8011C8C0 AC80FFF0 */   sw        $zero, -0x10($a0)
    /* A5334 8011C8C4 3C01800D */  lui        $at, %hi(D_800D6F10)
    /* A5338 8011C8C8 03E00008 */  jr         $ra
    /* A533C 8011C8CC AC206F10 */   sw        $zero, %lo(D_800D6F10)($at)
endlabel func_8011C87C
.size func_8011C87C, . - func_8011C87C
