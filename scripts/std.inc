
#include "core.inc"
#include "console.inc"
#include "float.inc"
#include "native.inc"

#pragma unused a_xD7477C97
#pragma unused b_x107770
#pragma unused c_xEA20B6C6
#pragma unused d_xEA1E9F9B
public a_xD7477C97 = 0;
public b_x107770 = 0;
public c_xEA20B6C6 = 99;
public d_xEA1E9F9B = 99;

stock Suspend(delay)
{
	_Suspend(delay);
	sleep(0);
}

stock FadeIn(arg0, color[])
{
    FadeIn_(arg0, GetFnvHash64(color));
}

stock FadeOut(arg0, color[], arg2, arg3)
{
    FadeOut_(arg0, GetFnvHash64(color), arg2, arg3);
}

stock FadeWait()
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

// dummy function to ensure libs get included
stock _dummy() {
    heapspace();
    getchar();
    float(1);
}
