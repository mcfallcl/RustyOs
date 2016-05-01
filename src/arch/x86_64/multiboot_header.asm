section .multiboot_header
header_start:
	dd 0xE85250D6			; multiboot 2 magic number
	dd 0				; arch 0 (protected mode i386)
	dd header_end - header_start	; header length
	; checksum
	dd 0x100000000 - (0xE85250D6 + 0 + (header_end - header_start))

	; insert optional multiboot tags here

	; required end tag
	dw 0	; type
	dw 0	; flags
	dd 8	; size
header_end:
