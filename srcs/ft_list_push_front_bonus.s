; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_list_push_front_bonus.s                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ptycho <marvin@42.fr>                      +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/01/27 15:30:26 by ptycho            #+#    #+#              ;
;    Updated: 2021/01/27 15:30:29 by ptycho           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
        extern _malloc
        global _ft_list_push_front

_ft_list_push_front:
                        push rdi
                        push rsi
                        mov rdi, 16
                        call _malloc
                        pop rsi
                        pop rdi
                        cmp rax, 0
                        jz .end
                        mov [rax], rsi
                        mov rcx, [rdi]
                        mov [rax+8], rcx
                        mov [rdi], rax
                        ret
.end:
                        ret