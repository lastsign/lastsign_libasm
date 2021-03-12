; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcmp.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ptycho <marvin@42.fr>                      +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/01/25 22:01:56 by ptycho            #+#    #+#              ;
;    Updated: 2021/01/25 22:01:56 by ptycho           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section	.text
		global _ft_strcmp

_ft_strcmp:
                cmp rdi, 0
                je .null
                cmp rsi, 0
                je .null
				xor rax, rax
				xor rbx, rbx
				xor r15, r15
.loop:
				cmp byte[rdi + r15], 0
				je .end
				cmp byte[rdi + r15], 0
				je .end
				mov al, byte[rdi + r15]
				mov bl, byte[rsi + r15]
				cmp rax, rbx
				jne .end
				inc r15
				jmp .loop
.end:
				mov al, byte[rdi + r15]
				mov bl, byte[rsi + r15]
				sub rax, rbx
				ret
.null:
                cmp rdi, rsi
                jz .equal
                jg .more
                jmp .less
.equal:
                mov rax, 0
                ret
.more:
                mov rax, 1
                ret
.less:
                mov rax, -1
                ret