ENTRY(start)

SECTIONS {
	. = 1M;

	.boot :
	{
		/* Ensure that multiboot header is at the beginning */
		KEEP(*(.multiboot_header))
	}

	.text :
	{
		*(.text)
	}
}
