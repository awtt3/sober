section .multiboot2_header
header_start:
    ; magic number
    dd 0xe85250d6 ; multiboot2
    ;architecture
    dd 0 ; protected mode i386 i think
    dd header_end - header_start ; total header length
    ;checksum
    dd 0x100000000 - (0xe85250d6 + 0 + (header_end - header_start))

    ;end tag
    dw 0
    dw 0
    dd 0
header_end:
