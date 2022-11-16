;	似非DOS BOOT2 (DOS2)

	BDOS	EQU	0F37DH

	ORG	0C000H
;
;	BPB
;
	DB	0EBH,0FEH,090H	;BS_JmpBoot
	DB	"DOS     "	;BS_OEMName
	DW	512		;BPB_BytsPerSec
	DB	2		;BPB_SecPerClus
	DW	1		;BPB_RsvdSecCnt
	DB	2		;BPB_NumFATs
	DW	112		;BPB_RootEntCnt
	DW	1440		;BPB_TotSec16
	DB	0F9H		;BPB_Media
	DW	3		;BPB_FATSz16
	DW	9		;BPB_SecPerTrk
	DW	2		;BPB_NumHeads
	DW	0		;BPB_HiddSec(2バイト)
	JR	START		;ブートプログラムへジャンプ
	DB	"VOL_ID"	;MSX-DOS2判別用(VOL_IDなのでDOS2)
	DB	0		;ダーティディスクフラグ
	DB	"DOS2"		;ボリュームID(適当な4バイト)
	DS	5		;Reserved for future
;
;	ブートプログラム
;
START:
	RET	NC

	EX	DE,HL
	CALL	JP_HL

	LD	DE,FCB
	LD	C,00FH
	CALL	BDOS

	LD	DE,00100H
	LD	C,01AH		;(BDOS)DTAの設定
	CALL	BDOS

	LD	HL,0
	LD	(FCB+33),HL
	LD	(FCB+35),HL
	INC	L
	LD	(FCB+14),HL

	LD	DE,FCB
	LD	HL,0BF00H
	LD	C,027H		;(BDOS)ランダム・ブロック・リード
	CALL	BDOS

	JP	0100H
JP_HL:
	JP	(HL)

FCB:	DB	0, "DOS     SYS",0,0,0,0
