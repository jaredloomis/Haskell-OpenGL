#include "Rts.h"
extern StgClosure ZCMain_main_closure;
int main(int argc, char *argv[])
{
    RtsConfig __conf = defaultRtsConfig;
    __conf.rts_opts_enabled = RtsOptsAll;
    return hs_main(argc, argv, &ZCMain_main_closure,__conf);
}

