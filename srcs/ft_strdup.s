; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ptycho <marvin@42.fr>                      +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/01/26 16:39:56 by ptycho            #+#    #+#              ;
;    Updated: 2021/01/26 16:39:56 by ptycho           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
        global  _ft_strdup
        extern _malloc
        extern _ft_strlen
        extern _ft_strcpy

_ft_strdup:
                cmp rdi, 0
                je .error
                xor rax, rax
                push rdi
                call _ft_strlen
                mov rdi, rax
                call _malloc
                cmp rax, 0
                je .null
                mov rdi, rax
                pop rsi
                call _ft_strcpy
                ret
.null:
                ret
.error:
                mov rax, 0
                ret