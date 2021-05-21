global	_ft_read

extern ___error
section	.text
_ft_read:
		mov rax, 0x2000003
		syscall
		jc error
		ret
error:
		push rdi
		mov rdi, rax
		call ___error
		mov [rax], rdi
		pop rdi
		mov rax, -1
		ret
