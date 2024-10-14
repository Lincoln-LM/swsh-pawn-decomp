#include "suspend.inc"
#pragma library Core
#pragma rational Float
#include "float.inc"

native CommandNOP()

#pragma unused b_x107770
#pragma unused c_xEA20B6C6
#pragma unused d_xEA1E9F9B
public a_xD7477C97 = 0;
public b_x107770 = 0;
public c_xEA20B6C6 = 99;
public d_xEA1E9F9B = 99;

main()
{
    switch (a_xD7477C97) {
        case 0x89c4af3a644fd719:
            fun_0100()
        case 0:
            fun_00E8()
        default:
            CommandNOP()
    }
}

fun_00E8()
{
    return 0;
}

fun_0100()
{
    return 0;
}