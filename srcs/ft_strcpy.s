; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ptycho <marvin@42.fr>                      +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/01/25 20:17:57 by ptycho            #+#    #+#              ;
;    Updated: 2021/01/25 20:17:57 by ptycho           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
		global _ft_strcpy

_ft_strcpy:
        cmp rsi, 0
        je .error
        cmp rdi, 0
        je .error
		mov rax, -1
.loop:	inc rax
		mov cl, byte [rsi + rax]
		mov	byte [rdi + rax], cl
		cmp cl, 0
		je .end
		jmp .loop

.end:
		movsx rax, cl
		movsx rdx, dl
		mov rax, rdi
		ret

.error:
        mov rax, 0
        ret