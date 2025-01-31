// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VSYN_TB__SYMS_H_
#define VERILATED_VSYN_TB__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "Vsyn_tb.h"

// INCLUDE MODULE CLASSES
#include "Vsyn_tb___024root.h"

// SYMS CLASS (contains all model state)
class Vsyn_tb__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vsyn_tb* const __Vm_modelp;
    bool __Vm_activity = false;  ///< Used by trace routines to determine change occurred
    uint32_t __Vm_baseCode = 0;  ///< Used by trace routines when tracing multiple models
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vsyn_tb___024root              TOP;

    // CONSTRUCTORS
    Vsyn_tb__Syms(VerilatedContext* contextp, const char* namep, Vsyn_tb* modelp);
    ~Vsyn_tb__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
} VL_ATTR_ALIGNED(VL_CACHE_LINE_BYTES);

#endif  // guard
