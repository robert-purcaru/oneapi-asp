// Copyright 2022 Intel Corporation
// SPDX-License-Identifier: MIT

//DMA controller write-FSM state enumerations
package dma_controller_wr_fsm_pkg;

    typedef enum {  WIDLE,
                    WAIT_FOR_FIRST_WRITE,
                    WRITE,
                    WRITE_MAGIC_NUM,
                    WXXX } wr_state_e;

endpackage
