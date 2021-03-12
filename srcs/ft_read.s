; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_read.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ptycho <marvin@42.fr>                      +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2021/01/26 19:01:13 by ptycho            #+#    #+#              ;
;    Updated: 2021/01/26 19:01:15 by ptycho           ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;


section .text
        global _ft_read
        extern ___error

_ft_read:
            mov rax, 0x2000003
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