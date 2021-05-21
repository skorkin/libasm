global	_ft_strcmp

section	.text
_ft_strcmp:
		mov rax, 0
		mov rcx, -1
cycle:	inc rcx
		mov al, byte [rdi + rcx]
		mov bl, byte [rsi + rcx]
		cmp al, 0
		je	return
		cmp bl, 0
		je	return
		cmp al, bl
		je	cycle
return:
		movzx rax, al
		movzx rbx, bl
		sub rax, rbx
		ret
