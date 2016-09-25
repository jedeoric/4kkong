
jmp start_program_compat ; dirty hack because it's impossible to do a macro with kbdclick : it generate a out of range error :/


#define CALL_HIRES\
	.byt 00,$1A;
#define CALL_TEXT\
	.byt 00,$19;	

	
#define CALL_KBDCLICK1\
	nop


	
#define CALL_KBDCLICK2\
	nop

; This is crap
#define CALL_LORES0\
	.byt 00,$1A:\
	.byt 00,$19;	

#define CALL_READKEYBOARD\
	.byt $00,$08
	

KBDCLICK1_RAM:	
.(
	pha
	tya
	pha
	txa
	pha
	
	LDX #<TELEMON_sound_bip_keyboard
	LDY #>TELEMON_sound_bip_keyboard
	.byt $00,$40
	pla
	tax
	pla
	tay
	pla
	rts
	TELEMON_sound_bip_keyboard
	.byt $1f,$00,$00,$00,$00,$00,$00,$3e,$10,$00,$00,$1f,$00,$00

.)

start_program_compat 
	
	