// Copyright 2021 Silicon Labs, Inc.
//
// This file, and derivatives thereof are licensed under the
// Solderpad License, Version 2.0 (the "License");
// Use of this file means you agree to the terms and conditions
// of the license and are in full compliance with the License.
// You may obtain a copy of the License at
//
//     https://solderpad.org/licenses/SHL-2.0/
//
// Unless required by applicable law or agreed to in writing, software
// and hardware implementations thereof
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, EITHER EXPRESSED OR IMPLIED.
// See the License for the specific language governing permissions and
// limitations under the License.

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Authors:        Halfdan Bechmann - halfdan.bechmann@silabs.com             //
//                                                                            //
// Description:    Header file for the cv32e40x  wrapper                      //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////


// List for tying off the RVFI interface
`define RVFI_TIEOFF \
\
.rvfi_valid(),\
.rvfi_order(),\
.rvfi_insn(),\
.rvfi_trap(),\
.rvfi_halt(),\
.rvfi_intr(),\
.rvfi_mode(),\
.rvfi_ixl(),\
\
.rvfi_dbg(),\
.rvfi_dbg_mode(),\
\
.rvfi_rd_addr(),\
.rvfi_rd_wdata(),\
.rvfi_rs1_addr(),\
.rvfi_rs2_addr(),\
.rvfi_rs1_rdata(),\
.rvfi_rs2_rdata(),\
\
.rvfi_pc_rdata(),\
.rvfi_pc_wdata(),\
\
.rvfi_mem_addr(),\
.rvfi_mem_rmask(),\
.rvfi_mem_wmask(),\
.rvfi_mem_rdata(),\
.rvfi_mem_wdata(),\
\
.rvfi_csr_mstatus_rmask(),\
.rvfi_csr_mstatus_wmask(),\
.rvfi_csr_mstatus_rdata(),\
.rvfi_csr_mstatus_wdata(),\
.rvfi_csr_misa_rmask(),\
.rvfi_csr_misa_wmask(),\
.rvfi_csr_misa_rdata(),\
.rvfi_csr_misa_wdata(),\
.rvfi_csr_mie_rmask(),\
.rvfi_csr_mie_wmask(),\
.rvfi_csr_mie_rdata(),\
.rvfi_csr_mie_wdata(),\
.rvfi_csr_mtvec_rmask(),\
.rvfi_csr_mtvec_wmask(),\
.rvfi_csr_mtvec_rdata(),\
.rvfi_csr_mtvec_wdata(),\
.rvfi_csr_mcountinhibit_rmask(),\
.rvfi_csr_mcountinhibit_wmask(),\
.rvfi_csr_mcountinhibit_rdata(),\
.rvfi_csr_mcountinhibit_wdata(),\
.rvfi_csr_mhpmevent_rmask(),\
.rvfi_csr_mhpmevent_wmask(),\
.rvfi_csr_mhpmevent_rdata(),\
.rvfi_csr_mhpmevent_wdata(),\
.rvfi_csr_mscratch_rmask(),\
.rvfi_csr_mscratch_wmask(),\
.rvfi_csr_mscratch_rdata(),\
.rvfi_csr_mscratch_wdata(),\
.rvfi_csr_mepc_rmask(),\
.rvfi_csr_mepc_wmask(),\
.rvfi_csr_mepc_rdata(),\
.rvfi_csr_mepc_wdata(),\
.rvfi_csr_mcause_rmask(),\
.rvfi_csr_mcause_wmask(),\
.rvfi_csr_mcause_rdata(),\
.rvfi_csr_mcause_wdata(),\
.rvfi_csr_mtval_rmask(),\
.rvfi_csr_mtval_wmask(),\
.rvfi_csr_mtval_rdata(),\
.rvfi_csr_mtval_wdata(),\
.rvfi_csr_mip_rmask(),\
.rvfi_csr_mip_wmask(),\
.rvfi_csr_mip_rdata(),\
.rvfi_csr_mip_wdata(),\
.rvfi_csr_tselect_rmask(),\
.rvfi_csr_tselect_wmask(),\
.rvfi_csr_tselect_rdata(),\
.rvfi_csr_tselect_wdata(),\
.rvfi_csr_tdata_rmask(),\
.rvfi_csr_tdata_wmask(),\
.rvfi_csr_tdata_rdata(),\
.rvfi_csr_tdata_wdata(),\
.rvfi_csr_tinfo_rmask(),\
.rvfi_csr_tinfo_wmask(),\
.rvfi_csr_tinfo_rdata(),\
.rvfi_csr_tinfo_wdata(),\
.rvfi_csr_mcontext_rmask(),\
.rvfi_csr_mcontext_wmask(),\
.rvfi_csr_mcontext_rdata(),\
.rvfi_csr_mcontext_wdata(),\
.rvfi_csr_scontext_rmask(),\
.rvfi_csr_scontext_wmask(),\
.rvfi_csr_scontext_rdata(),\
.rvfi_csr_scontext_wdata(),\
.rvfi_csr_dcsr_rmask(),\
.rvfi_csr_dcsr_wmask(),\
.rvfi_csr_dcsr_rdata(),\
.rvfi_csr_dcsr_wdata(),\
.rvfi_csr_dpc_rmask(),\
.rvfi_csr_dpc_wmask(),\
.rvfi_csr_dpc_rdata(),\
.rvfi_csr_dpc_wdata(),\
.rvfi_csr_dscratch_rmask(),\
.rvfi_csr_dscratch_wmask(),\
.rvfi_csr_dscratch_rdata(),\
.rvfi_csr_dscratch_wdata(),\
.rvfi_csr_mcycle_rmask(),\
.rvfi_csr_mcycle_wmask(),\
.rvfi_csr_mcycle_rdata(),\
.rvfi_csr_mcycle_wdata(),\
.rvfi_csr_minstret_rmask(),\
.rvfi_csr_minstret_wmask(),\
.rvfi_csr_minstret_rdata(),\
.rvfi_csr_minstret_wdata(),\
.rvfi_csr_mhpmcounter_rmask(),\
.rvfi_csr_mhpmcounter_wmask(),\
.rvfi_csr_mhpmcounter_rdata(),\
.rvfi_csr_mhpmcounter_wdata(),\
.rvfi_csr_mcycleh_rmask(),\
.rvfi_csr_mcycleh_wmask(),\
.rvfi_csr_mcycleh_rdata(),\
.rvfi_csr_mcycleh_wdata(),\
.rvfi_csr_minstreth_rmask(),\
.rvfi_csr_minstreth_wmask(),\
.rvfi_csr_minstreth_rdata(),\
.rvfi_csr_minstreth_wdata(),\
.rvfi_csr_mhpmcounterh_rmask(),\
.rvfi_csr_mhpmcounterh_wmask(),\
.rvfi_csr_mhpmcounterh_rdata(),\
.rvfi_csr_mhpmcounterh_wdata(),\
.rvfi_csr_cycle_rmask(),\
.rvfi_csr_cycle_wmask(),\
.rvfi_csr_cycle_rdata(),\
.rvfi_csr_cycle_wdata(),\
.rvfi_csr_instret_rmask(),\
.rvfi_csr_instret_wmask(),\
.rvfi_csr_instret_rdata(),\
.rvfi_csr_instret_wdata(),\
.rvfi_csr_hpmcounter_rmask(),\
.rvfi_csr_hpmcounter_wmask(),\
.rvfi_csr_hpmcounter_rdata(),\
.rvfi_csr_hpmcounter_wdata(),\
.rvfi_csr_cycleh_rmask(),\
.rvfi_csr_cycleh_wmask(),\
.rvfi_csr_cycleh_rdata(),\
.rvfi_csr_cycleh_wdata(),\
.rvfi_csr_instreth_rmask(),\
.rvfi_csr_instreth_wmask(),\
.rvfi_csr_instreth_rdata(),\
.rvfi_csr_instreth_wdata(),\
.rvfi_csr_hpmcounterh_rmask(),\
.rvfi_csr_hpmcounterh_wmask(),\
.rvfi_csr_hpmcounterh_rdata(),\
.rvfi_csr_hpmcounterh_wdata(),\
.rvfi_csr_mvendorid_rmask(),\
.rvfi_csr_mvendorid_wmask(),\
.rvfi_csr_mvendorid_rdata(),\
.rvfi_csr_mvendorid_wdata(),\
.rvfi_csr_marchid_rmask(),\
.rvfi_csr_marchid_wmask(),\
.rvfi_csr_marchid_rdata(),\
.rvfi_csr_marchid_wdata(),\
.rvfi_csr_mimpid_rmask(),\
.rvfi_csr_mimpid_wmask(),\
.rvfi_csr_mimpid_rdata(),\
.rvfi_csr_mimpid_wdata(),\
.rvfi_csr_mhartid_rmask(),\
.rvfi_csr_mhartid_wmask(),\
.rvfi_csr_mhartid_rdata(),\
.rvfi_csr_mhartid_wdata(),\
.rvfi_csr_mcounteren_rmask(),\
.rvfi_csr_mcounteren_wmask(),\
.rvfi_csr_mcounteren_rdata(),\
.rvfi_csr_mcounteren_wdata(),\
.rvfi_csr_pmpcfg_rmask(),\
.rvfi_csr_pmpcfg_wmask(),\
.rvfi_csr_pmpcfg_rdata(),\
.rvfi_csr_pmpcfg_wdata(),\
.rvfi_csr_pmpaddr_rmask(),\
.rvfi_csr_pmpaddr_wmask(),\
.rvfi_csr_pmpaddr_rdata(),\
.rvfi_csr_pmpaddr_wdata(),\
.rvfi_csr_pmpmseccfg_rmask(),\
.rvfi_csr_pmpmseccfg_wmask(),\
.rvfi_csr_pmpmseccfg_rdata(),\
.rvfi_csr_pmpmseccfg_wdata()
