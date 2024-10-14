#include "suspend.inc"
#pragma library Core
#pragma rational Float
#include "float.inc"

native GetFnvHash64(string[]);
native FadeIn_(arg0, hash);
native FadeOut_(arg0, hash, arg2, arg3);
native FadeWait_();
native CommandNOP();
native FlagGet(hash);
native PokePartyCanEvolve(species);
native ReserveScript(hash);
native FlagSet(hash);
native PokePartyCallEvolve(species);
native FlagReset(hash);

#pragma unused a_xD7477C97
#pragma unused b_x107770
#pragma unused c_xEA20B6C6
#pragma unused d_xEA1E9F9B
public a_xD7477C97 = 0;
public b_x107770 = 0;
public c_xEA20B6C6 = 99;
public d_xEA1E9F9B = 99;


#pragma unused FadeIn
FadeIn(arg0, color[])
{
    FadeIn_(arg0, GetFnvHash64(color));
}

#pragma unused FadeOut
FadeOut(arg0, color[], arg2, arg3)
{
    FadeOut_(arg0, GetFnvHash64(color), arg2, arg3);
}

#pragma unused FadeWait
FadeWait()
{
    // functionally "while (true)" but inserts an extra jump instruction
    // at the start of the loop
    for (;;)
    {
        if (FadeWait_() != 0) {
            return;
        }
        Suspend(1);
    }
}

main()
{
    switch (a_xD7477C97) {
        case 0x8d0140735a01920e:
            fun_0360()
        case 0xceab368884e58633:
            fun_0378()
        case 0x261dc1a76131e052:
            fun_0458()
        case 0x80a140f427c3f883:
            fun_0520()
        case 0:
            fun_0348()
        default:
            CommandNOP()
    }
}

fun_0348()
{
    return 0;
}

fun_0360()
{
    return 0;
}

fun_0378()
{
    if (FlagGet(0x7305c919d8bfa59c) != 0) {
        return;
    }
    if (PokePartyCanEvolve(562)) {
        ReserveScript(0x261dc1a76131e052);
        FlagSet(0x7305c919d8bfa59c);
    }
}

fun_0458()
{
    FadeOut(8, "BLACK", 0, 1);
    FadeWait();
    PokePartyCallEvolve(562);
    FadeIn(8, "BLACK");
    FadeWait();
}

fun_0520()
{
    FlagReset(0x7305c919d8bfa59c);
}


