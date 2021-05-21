section .text
    global _ft_strcpy

_ft_strcpy:
	xor rdx, rdx
loop:
	mov al, byte[rsi + rdx]
	mov byte[rdi + rdx], al
	cmp al, 0
	jz end
	inc rdx
	jmp loop
end:
	mov rax, rdi
	ret