.data
plaintext_letter: .byte 'u'
letter_index: .word 3
plaintext_alphabet: .ascii "abbbbbbbbcdefffffffgggghiiijkklmnopqrstuuuuuvvvvvvwxxxxxxxxxyz\0"
ciphertext_alphabet: .ascii "StonyBrkUivesNwYadfAmcbghjlpquxzCDEFGHIJKLMOPQRTVWXZ0123456789\0"

.text
.globl main
main:
 	lbu $a0, plaintext_letter
	lw $a1, letter_index
	la $a2, plaintext_alphabet
	la $a3, ciphertext_alphabet
	jal encrypt_letter
	
	li $v0, 10
	syscall
	
	
.include "hwk2.asm"
