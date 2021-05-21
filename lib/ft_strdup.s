global	_ft_strdup

extern _malloc
extern _ft_strlen
extern _ft_strcpy
section	.text
_ft_strdup:
		call	_ft_strlen
		mov		rax, 1
		push	rdi
		mov		rdi, rax
		call	_malloc
		cmp		rax, 0
		jz		fail_exit
		pop		rsi
		mov		rdi, rax
		call	_ft_strcpy
		ret
fail_exit: 
		mov		rax, 0
		ret
