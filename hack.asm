.68000

.binfile "s3k.bin"

.org 0x4B0
// go to stage select immediately
move.b #$1C,($F600).w

.org 0x7BEC
// don't play music in stage select
nop
nop
nop
nop

.org 0x7C46
// don't fade in from black on stage select
nop
nop

.org 0x7C86
 // skip to LevelSelect_PressStart when stage select is starting
nop
nop
nop

.org 0x7DBE
// force hydrocity zone and go to LevelSelect_StartZone
move.w #$100,d0
bra.s $7DD6
