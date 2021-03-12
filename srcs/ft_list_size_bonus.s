; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_list_size_bonus.s                               :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ptycho <marvin@42.fr>                      +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/01/27 14:10:46 by ptycho            #+#    #+#              ;
;    Updated: 2021/01/27 14:10:48 by ptycho           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
        global _ft_list_size

_ft_list_size:
                cmp rdi, 0
                jz .error
			    mov rsi, rdi
			    xor rax, rax
			    jmp .loop
.loop:
                cmp rdi, 0
                jz .end
                mov rdi, [rdi + 8]
                inc rax
                jmp	.loop
.end:
                mov rdi, rsi
                ret
.error:
                mov rax, -1
                ret
