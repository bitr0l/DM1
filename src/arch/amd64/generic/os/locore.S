/*
 * Processor bootstrap and low level commons.
 * Copyright (c) 2026, Apollo Telephone Laboratories, et al.
 * Provided under the BSD-3 clause.
 */

    .text
    .globl _start
    .extern __bss_start
    .extern __bss_end
_start:
    lea __bss_start(%rip), %rdi
    lea __bss_end(%rip), %rcx
    sub %rdi, %rcx
    xor %al, %al
    cld
    rep stosb

    /* Terminate callstack and setup stack */
    xor %rbp, %rbp
    lea stack_top(%rip), %rsp

    mfence
1:  cli
    hlt
    jmp 1b

    .section .bss
    .align 16
stack_base:
    .skip 4096
stack_top:
