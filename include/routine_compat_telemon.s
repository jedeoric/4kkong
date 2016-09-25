
KBDCLICK1_RAM:	
.(
	LDX #<TELEMON_sound_bip_keyboard
	LDY #>TELEMON_sound_bip_keyboard
	.byt $00,$40
	rts
	TELEMON_sound_bip_keyboard
	.byt $1f,$00,$00,$00,$00,$00,$00,$3e,$10,$00,$00,$1f,$00,$00
.)


	