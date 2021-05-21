global	_ft_write

extern ___error
section	.text
_ft_write:
		mov rax, 0x2000004
		syscall
		jc _error
		ret
_error:
		push	rdi
		mov		rdi, rax
		call	___error
		mov		[rax], rdi
		pop		rdi
		mov		rax, -1
		ret
