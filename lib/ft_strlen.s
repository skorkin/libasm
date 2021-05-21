global	_ft_strlen

section	.text
_ft_strlen:
		mov rax, -1
step:	inc rax	
		mov cl, byte [rdi + rax]
		cmp cl, 0
		jne	step
		ret
