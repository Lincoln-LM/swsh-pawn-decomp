
#include "core.inc"
#include "console.inc"
#include "float.inc"
#include "native.inc"
#include "hashes.inc"

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

stock SuspendN(arg0)
{
    if (arg0 <= 0) {
        return;
    }
    for (new a = 0; a < arg0; a++) {
        Suspend(1);
    }
}

stock RandMax(max, arg1)
{
    if (arg1) {
        return GetPublicRand(max);
    }
    return GetPublicRand(max - 1);
}

stock RandRange(arg0, arg1)
{
    return GetPublicRand(arg1 - arg0) + arg0;
}

stock AddRecord(arg0, arg1)
{
    return AddRecord_(arg0, arg1);
}

stock IncRecord(arg0)
{
    return IncRecord_(arg0);
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

stock AddFieldObject(hash) {
    return AddFieldObject_(hash);
}
stock DeleteFieldObject(hash) {
    return DeleteFieldObject_(hash);
}

stock ShowMessageWindow(arg0, msg_hash, bubble_type_0, bubble_type_1, flags, arg5, arg6)
{
    new flag0 = flags & (1 << 0);
    new flag2 = flags & (1 << 2);
    new flag4 = flags & (1 << 4);
    new flag7 = flags & (1 << 3);
    new bubble_type = 0;
    switch (bubble_type_0) {
        case 100:
            switch (bubble_type_1) {
                case 0: bubble_type = 32
                case 1: bubble_type = 30
                case 2: bubble_type = 31
                case 3: bubble_type = 35
                case 4: bubble_type = 33
                case 5: bubble_type = 34
                default: bubble_type = 35
            }
        case 101:
            switch (bubble_type_1) {
                case 0: bubble_type = 38
                case 1: bubble_type = 36
                case 2: bubble_type = 37
                case 3: bubble_type = 41
                case 4: bubble_type = 39
                case 5: bubble_type = 40
                default: bubble_type = 41
            }
        case 102:
            switch (bubble_type_1) {
                case 0: bubble_type = 63
                case 1: bubble_type = 64
                case 2: bubble_type = 65
                case 3: bubble_type = 60
                case 4: bubble_type = 61
                case 5: bubble_type = 62
                default: bubble_type = 60
            }
        default: bubble_type = bubble_type_0
    }
    MsgWin_(arg0, 0, msg_hash, bubble_type, flag0, flag2, flag4, flag7, arg5, arg6);
    if (!(flags & (1 << 1))) {
        WaitForMessageEnd();
    }
}

stock ShowMessageWindow_1(msg_hash, bubble_type_0, flags, bubble_type_1)
{
    ShowMessageWindow(0, msg_hash, bubble_type_0, bubble_type_1, flags, 0, 0);
}

stock ShowMessageWindow_2(msg_hash, flags, bubble_type)
{
    ShowMessageWindow_1(msg_hash, 102, flags, bubble_type);
}

stock ShowMessageWindow_3(msg_hash, flags, bubble_type)
{
    ShowMessageWindow_2(msg_hash, flags | (1 << 0), bubble_type);
}

stock WaitForMessageEnd()
{
    for (;;)
    {
        if (IsMsgWinEnd_() == true) {
            return;
        }
        Suspend(1);
    }
}

stock FinishMessage(should_play_sound)
{
    WaitForMessageEnd();
    ShowMsgWinCursor_(true);
    ABKeyWait_();
    ShowMsgWinCursor_(false);
    if (should_play_sound) {
        SoundPostEvent("Play_UI_common_decide");
    }
}

stock CloseMessageWindow()
{
    MsgWinClose();
}

stock LoadExtraMessage(msg[])
{
    ExtraMsgLoad(msg);
}

stock WaitUntilExtraMessageIsLoaded()
{
    for (;;)
    {
        if (ExtraMsgIsLoaded_()) {
            break;
        } else {
            Suspend(1);
        }
    }
}

stock UnloadExtraMessage()
{
    ExtraMsgUnload();
}

stock PG_WordSetRegister_001(arg0)
{
    PG_WordSetRegister(1, arg0, 0, 0);
}

stock UpdateWalletWindow(arg0)
{
    UpdateWalletWindow_(arg0);
}

stock AddWatt(delta)
{
    return AddWatt_(delta);
}

// dummy function to ensure libs get included
stock _dummy() {
    heapspace();
    getchar();
    float(1);
}
