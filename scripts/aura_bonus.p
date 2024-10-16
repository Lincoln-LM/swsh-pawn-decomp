#include "std.inc"

RewardWatts(watt_delta)
{
    LoadExtraMessage("script/common_scr.dat");
    WaitUntilExtraMessageIsLoaded();
    AddWatt(watt_delta);
    UpdateWalletWindow(true);
    SoundPostEvent("Play_SS_Common_get_watt");
    PG_WordSetRegister_001(0);
    WordSetNumber(2, watt_delta, 0, 0);
    ShowMessageWindow_3(msg_common_wattget_01, 0, 3);
    FinishMessage(true);
    CloseMessageWindow();
    UnloadExtraMessage();
}

main()
{
    switch (g_mode) {
        case 0xc0c7dde20a0513d6:
            CalculateWattReward()
        case 0:
            fun_0E50()
        default:
            CommandNOP()
    }
}

fun_0E50()
{
    return 0;
}

CalculateWattReward()
{
    new work = TempWorkGet(0);
    new watt_reward = floatround((100.0 * floatlog(work, 4.0)), floatround_method:floatround_floor);
    RewardWatts(watt_reward);
}