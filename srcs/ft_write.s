; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_write.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ptycho <marvin@42.fr>                      +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/01/26 19:01:19 by ptycho            #+#    #+#              ;
;    Updated: 2021/01/26 19:01:20 by ptycho           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;


section .text
        global _ft_write
        extern ___error

_ft_write:
            mov rax, 0x2000004
            syscall
            jc .errno
            ret
.errno:
            push rbx
            mov rbx, rax
            call ___error
            mov [rax], rbx
            mov rax, -1
            pop rbx
            ret