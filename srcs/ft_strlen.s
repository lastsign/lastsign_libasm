; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ptycho <marvin@42.fr>                      +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/01/25 18:31:30 by ptycho            #+#    #+#              ;
;    Updated: 2021/01/25 18:31:30 by ptycho           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section		.text 
			global _ft_strlen

_ft_strlen:
			cmp rdi, 0
			je .error
			mov rax, -1
.loop:      inc rax
			mov cl, byte[rdi + rax]
			cmp cl, 0
			jne	.loop
			ret
.error:
            mov rax, -1
            ret