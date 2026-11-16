/*
 * Processor bootstrap and low level commons.
 * Copyright (c) 2026, Apollo Telephone Laboratories, et al.
 * Provided under the BSD-3 clause.
 */

    .text
    .globl _start
_start:
    mfence
1:  cli
    hlt
    jmp 1b
