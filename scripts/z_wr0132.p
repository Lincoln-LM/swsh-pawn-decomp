#include "std.inc"

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
    PokePartyCallEvolve(562, 1);
    FadeIn(8, "BLACK");
    FadeWait();
}

fun_0520()
{
    FlagReset(0x7305c919d8bfa59c);
}
