native _Suspend(delay);

enum GameVersion {
    Any = 0,
    Sword = 44,
    Shield = 45
}

native GetFnvHash64(string[]);
native FadeIn_(arg0, hash);
native FadeOut_(arg0, hash, arg2, arg3);
native FadeWait_();
native CommandNOP();
native FlagGet(hash);
native PokePartyCanEvolve(species);
native ReserveScript(hash);
native FlagSet(hash);
native PokePartyCallEvolve(species, form);
native FlagReset(hash);
native WorkGet(hash);
native WorkSet(hash, value);
native GetPublicRand(maximum);
native AddRecord_(arg0, arg1);
native IncRecord_(arg0);
native DeleteFieldObject_(hash);
native AddFieldObject_(hash);
native VanishFlagGet(hash);
native GameVersion:RomGetVersion();
native PlayerGetZoneID();
native MsgWin_(arg0, arg1, arg2, bubble_type, arg4, arg5, arg6, arg7, arg8, arg9);
native bool:IsMsgWinEnd_();
native ShowMsgWinCursor_(arg0);
native ABKeyWait_();
native SoundPostEvent(sound[]);
native MsgWinClose();
native ExtraMsgLoad(msg[]);
native ExtraMsgIsLoaded_();
native ExtraMsgUnload();
native PG_WordSetRegister(arg0, arg1, arg2, arg3);
native UpdateWalletWindow_(arg0);
native AddWatt_(delta);
native WordSetNumber(arg0, arg1, arg2, arg3);
native TempWorkGet(idx);
native GetWildBattleResult_(out[]);
native PokePartyGetCount(arg0, arg1);
native GetLastSymbolEncountParam(out[]);
native CallBattleLose_();
