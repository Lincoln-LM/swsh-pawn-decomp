#include "std.inc"

fun_0378()
{
   if (RomGetVersion() == GameVersion:Sword) {
        FlagReset(0xd697fbfc3c1362b1);
        FlagReset(0x641a53203b574bf6);
        FlagReset(0xbe3a2e492d9ea894);
        FlagReset(0x9c905a694faab7f3);
    } else {
        FlagReset(0xbebe48fcbf141a48);
        FlagReset(0x25e6b22017aa33a3);
        FlagReset(0x1b961948d20c18e5);
        FlagReset(0xd20f8f028f51355a);
   }
}

fun_0510()
{
    if (!FlagGet(0x6023e9dc8909c446)) {
        CommandNOP();
        FlagSet(0x6023e9dc8909c446);
        PlaceRandomNPCs(1, 0, 0);
        fun_0B50();
        fun_0378();
        if (WorkGet(0xc5bd7dd554ac4b39) > 310) {
            fun_0660(0);
        }
    }
}

fun_0660(arg0)
{
    new a = 0;
    new b = 0;
    if (RomGetVersion() == GameVersion:Sword) {
        new c[70] = {
            0xdc6710a087d5b045,
            0xdc670da087d5ab2c,
            0xdc670ea087d5acdf,
            0xdc670ba087d5a7c6,
            0xdc670ca087d5a979,
            0xdc6709a087d5a460,
            0xdc670aa087d5a613,
            0x9211085c1b072dbf,
            0x9211095c1b072f72,
            0x92110a5c1b073125,
            0x9211035c1b072540,
            0x9211045c1b0726f3,
            0x9211055c1b0728a6,
            0x9211065c1b072a59,
            0xc2b7dc729203967b,
            0xc2b7dd729203982e,
            0xc2b7de72920399e1,
            0xc2b7df7292039b94,
            0xc2b7e07292039d47,
            0xc2b7e17292039efa,
            0xc2b7e2729203a0ad,
            0x2a1080970117a117,
            0x2a1081970117a2ca,
            0x2a1082970117a47d,
            0x2a107b9701179898,
            0x2a107c9701179a4b,
            0x2a107d9701179bfe,
            0x2a107e9701179db1,
            0x53d36ab93e141508,
            0x53d36db93e141a21,
            0x53d36cb93e14186e,
            0x53d36fb93e141d87,
            0x53d36eb93e141bd4,
            0x53d371b93e1420ed,
            0x53d370b93e141f3a,
            0xec23d89610548edd,
            0xec23d596105489c4,
            0xec23d69610548b77,
            0xec23d3961054865e,
            0xec23d49610548811,
            0xec23d196105482f8,
            0xec23d296105484ab,
            0x4cfa454ef5479ec4,
            0x4cfa484ef547a3dd,
            0x4cfa474ef547a22a,
            0x4cfa424ef54799ab,
            0x4cfa414ef54797f8,
            0x4cfa444ef5479d11,
            0x4cfa434ef5479b5e,
            0x554b1079c0afc948,
            0x554b1379c0afce61,
            0x554b1279c0afccae,
            0x554b1579c0afd1c7,
            0x554b1479c0afd014,
            0x554b1779c0afd52d,
            0x554b1679c0afd37a,
            0xe94b30e699e5dffe,
            0xe94b2fe699e5de4b,
            0xe94b2ee699e5dc98,
            0xe94b35e699e5e87d,
            0xe94b34e699e5e6ca,
            0xe94b33e699e5e517,
            0xe94b32e699e5e364,
            0x18c23b9ecac86fd6,
            0x18c23a9ecac86e23,
            0x18c2399ecac86c70,
            0x18c2409ecac87855,
            0x18c23f9ecac876a2,
            0x18c23e9ecac874ef,
            0x18c23d9ecac8733c,
        };
        for (a = 0; a < 70; a++) {
            FlagSet(c[a]);
        }
        if (arg0) {
            new d = 7;
            b = RandMax(70 - d, 0) + d;
        } else {
            b = RandMax(70, 0);
        }
        FlagReset(c[b]);
    } else {
        new c[70] = {
            0xdc6710a087d5b045,
            0xdc670da087d5ab2c,
            0xdc670ea087d5acdf,
            0xdc670ba087d5a7c6,
            0xdc670ca087d5a979,
            0xdc6709a087d5a460,
            0xdc670aa087d5a613,
            0x9211085c1b072dbf,
            0x9211095c1b072f72,
            0x92110a5c1b073125,
            0x9211035c1b072540,
            0x9211045c1b0726f3,
            0x9211055c1b0728a6,
            0x9211065c1b072a59,
            0xc2b7dc729203967b,
            0xc2b7dd729203982e,
            0xc2b7de72920399e1,
            0xc2b7df7292039b94,
            0xc2b7e07292039d47,
            0xc2b7e17292039efa,
            0xc2b7e2729203a0ad,
            0x2a1080970117a117,
            0x2a1081970117a2ca,
            0x2a1082970117a47d,
            0x2a107b9701179898,
            0x2a107c9701179a4b,
            0x2a107d9701179bfe,
            0x2a107e9701179db1,
            0x53d36ab93e141508,
            0x53d36db93e141a21,
            0x53d36cb93e14186e,
            0x53d36fb93e141d87,
            0x53d36eb93e141bd4,
            0x53d371b93e1420ed,
            0x53d370b93e141f3a,
            0xec23d89610548edd,
            0xec23d596105489c4,
            0xec23d69610548b77,
            0xec23d3961054865e,
            0xec23d49610548811,
            0xec23d196105482f8,
            0xec23d296105484ab,
            0x4cfa454ef5479ec4,
            0x4cfa484ef547a3dd,
            0x4cfa474ef547a22a,
            0x4cfa424ef54799ab,
            0x4cfa414ef54797f8,
            0x4cfa444ef5479d11,
            0x4cfa434ef5479b5e,
            0x554b1079c0afc948,
            0x554b1379c0afce61,
            0x554b1279c0afccae,
            0x554b1579c0afd1c7,
            0x554b1479c0afd014,
            0x554b1779c0afd52d,
            0x554b1679c0afd37a,
            0x7f081cc7996776e3,
            0x7f081dc799677896,
            0x7f081ec799677a49,
            0x7f081fc799677bfc,
            0x7f0820c799677daf,
            0x7f0821c799677f62,
            0x7f0822c799678115,
            0x2477e3c602ef1361,
            0x2477e0c602ef0e48,
            0x2477e1c602ef0ffb,
            0x2477e6c602ef187a,
            0x2477e7c602ef1a2d,
            0x2477e4c602ef1514,
            0x2477e5c602ef16c7,
        };
        for (a = 0; a < 70; a++) {
            FlagSet(c[a]);
        }
        if (arg0) {
            new d = 7;
            b = RandMax(70 - d, 0) + d;
        } else {
            b = RandMax(70, 0);
        }
        FlagReset(c[b]);
    }
    if (b < 7) {
        FlagSet(0xecc628a127bd172a);
    } else {
        if (WorkGet(0xc19515b36d601edd) < 30) {
            FlagReset(0xecc628a127bd172a);
        }
    }
}

fun_0B50()
{
    new a[181] = {
        0xe581b84698aedc4b,
        0x78a6160f394ea9a4,
        0x78a6170f394eab57,
        0x78a6180f394ead0a,
        0x2b1c9ade4bf6066d,
        0x93b23ee15e490272,
        0x78a6190f394eaebd,
        0x9f0e451f6b9f0264,
        0xc6777b43fe7fe03,
        0xc6776b43fe7fc50,
        0xc6779b43fe80169,
        0xc6778b43fe7ffb6,
        0xc677bb43fe804cf,
        0xc677ab43fe8031c,
        0xc677db43fe80835,
        0xc677cb43fe80682,
        0x490ac2590c73722a,
        0xc677fb43fe80b9b,
        0x2edebd58fd9309eb,
        0xc677eb43fe809e8,
        0xfbcb14489731d720,
        0x40e28b5907f961f5,
        0x2edebc58fd930838,
        0x313dff40118f4504,
        0x29ef48400dcdff0f,
        0x313e0040118f46b7,
        0x1f80068bdfa27310,
        0x1098d7a854be3ed9,
        0x1f80078bdfa274c3,
        0x1f800c8bdfa27d42,
        0xe4ea86f8e0311235,
        0x63fa814a761a29b8,
        0x10bfe1da7126dc8f,
        0xed12bdf8e4ab226a,
        0x879e5f407a8c3461,
        0x10bfe0da7126dadc,
        0xe4ea85f8e0311082,
        0x3f16d7b4bdbe80fa,
        0x748819af50df049d,
        0x748818af50df02ea,
        0x748817af50df0137,
        0x748816af50deff84,
        0x5cc9ea87b04c0fe3,
        0x748815af50defdd1,
        0x748814af50defc1e,
        0x64f22187b4c62018,
        0x73435793e2e8052f,
        0x4ac61c87a5e5b7d9,
        0x73435693e2e8037c,
        0x8bc7599fb291e4e6,
        0x535e87b31836380b,
        0x4ac61b87a5e5b626,
        0x52155387a9a7d74e,
        0x5cc9e987b04c0e30,
        0x4ac61a87a5e5b473,
        0x328662a6c9d8d7f7,
        0x328661a6c9d8d644,
        0x748813af50defa6b,
        0x40eb05879ffa4984,
        0x40eb06879ffa4b37,
        0x6d9897882248e9e3,
        0x40eb07879ffa4cea,
        0x6d9896882248e830,
        0x40eb08879ffa4e9d,
        0x73435993e2e80895,
        0x6f3d8cb3288834ca,
        0x60b704b2ad9a6fad,
        0xa84fc7c29ee33232,
        0x73435893e2e806e2,
        0x5fcc0cd54cf368e5,
        0x60b703b2ad9a6dfa,
        0x60b702b2ad9a6c47,
        0x5fcc0bd54cf36732,
        0x5fcc0ad54cf3657f,
        0xd7460bd243690da7,
        0xb3d09d450f260988,
        0xb3d09e450f260b3b,
        0xb3d09f450f260cee,
        0xb3d0a0450f260ea1,
        0xb3d0a1450f261054,
        0x687960ca4d680133,
        0xb3d0a2450f261207,
        0x92adb5d9a1c34fdc,
        0xb3d0a3450f2613ba,
        0x7b56ceca588759dd,
        0x47d844ca3b7f539f,
        0x5208f7f6e50f80a2,
        0x86d57e241627fb50,
        0xc3f1dcd04861f625,
        0x7dcc6a4e6232f91a,
        0x7dcc6b4e6232facd,
        0x7f0cb106e37db292,
        0x7dcc684e6232f5b4,
        0x6693ac06d60eded3,
        0x3f8e010534cfad3c,
        0x7dcc694e6232f767,
        0x38917c2f14076691,
        0x30290e5b92f4728e,
        0xf937dbe230979b49,
        0x62bcdd7f6cf83d56,
        0xf937dae230979996,
        0x5b6e467f69372dc1,
        0x5b6e457f69372c0e,
        0x7f31db22228516be,
        0x77e324221ec3d0c9,
        0x38917b2f140764de,
        0x38917a2f1407632b,
        0xca0633f919985013,
        0xe3e89fc7c93024fc,
        0xe3e8a0c7c93026af,
        0xe3e8a1c7c9302862,
        0xacb629c5391d27a0,
        0xe3e89bc7c9301e30,
        0xe3e89dc7c9302196,
        0x99adce755020d667,
        0xe3e89ec7c9302349,
        0xe3e8a7c7c9303294,
        0xf08581c55f19f168,
        0x99adcd755020d4b4,
        0xe88640189be495d3,
        0x746fd27adcd1a02d,
        0xd9c49d1e7fbb76b2,
        0xa904ab3adc77ce94,
        0xb4d008db2923cdf3,
        0x2bd8cadbf173c61c,
        0x2bd8cbdbf173c7cf,
        0x5267c03ae49f5480,
        0x2cf595668f843987,
        0xed63f1f8ea215111,
        0xc2d290bbad0a810e,
        0xbf00289409fb6dc9,
        0x82958c86669c73d6,
        0xc2d291bbad0a82c1,
        0x25f8327d5a4d26b3,
        0xc0c629c02db6d15c,
        0xba8c089fa37d10a,
        0xb33bf1683438ca6d,
        0xbd9f34704cc66672,
        0x321c519d04b9f2a5,
        0xb5df22ca8a2fe99a,
        0x169e8d58717fcdfd,
        0x7369373960c3b5cd,
        0xe93caf6324c4592e,
        0xd0f98003b1a3d7a9,
        0xd0f97f03b1a3d5f6,
        0x79b947636503f7e1,
        0xd0f97e03b1a3d443,
        0x846e5e636ba909f6,
        0x46fa63b534f54be1,
        0xd0f97d03b1a3d290,
        0xd0f98403b1a3de75,
        0xa50f9a637d91edea,
        0xcb55d3e594eeb69e,
        0x948262b1f3ca1659,
        0xf2a1b54068f08766,
        0xf2a1b64068f08919,
        0x65889984ff7511e7,
        0x4d4070a41840ced9,
        0xa256f04af68d93e6,
        0x1b9ba7bc2e1bced1,
        0xe262e972378548ca,
        0xbe666790a4dea3ad,
        0xbc855e191aeb8632,
        0x9ad4c8bb34c4dce5,
        0xbe666690a4dea1fa,
        0xb1d0c71914474d9d,
        0x7b6e848e14e25ee2,
        0x1b4f9f0acfbca815,
        0x5241d8ca12e1cb93,
        0x9bf244ded5776c7c,
        0xd616c9bb3889e9c0,
        0xc1f00d322b7c4c47,
        0xc1f00c322b7c4a94,
        0xdf50be14fab860ab,
        0x7222491e6767fe44,
        0xaa202c5fc22f8823,
        0x59d9e67e2af5b9b,
        0xd8608a0383fccff4,
        0x7f9d7292eef7fe93,
        0xbddeb95e2a3e977c,
        0xf674607724fec0b,
    };
    new b = 0;
    for (b = 0; b < 181; b++) {
        FlagReset(a[b]);
    }
    if (RomGetVersion() == GameVersion:Sword) {
        FlagReset(0xdc9a9e369c01b6bc);
        FlagReset(0xdc9aa1369c01bbd5);
        FlagReset(0x97877c11887e0348);
        FlagReset(0x97877f11887e0861);
        FlagReset(0x97877e11887e06ae);
        FlagReset(0x97878111887e0bc7);
        FlagReset(0x97878011887e0a14);
        FlagReset(0x97878311887e0f2d);
        FlagReset(0x97878211887e0d7a);
        FlagReset(0x818f0452ba5fd238);
        FlagReset(0x818f0752ba5fd751);
        FlagReset(0x818f0652ba5fd59e);
        FlagReset(0x818f0952ba5fdab7);
        FlagReset(0x818f0852ba5fd904);
        FlagReset(0x818f0b52ba5fde1d);
        FlagReset(0x818f0a52ba5fdc6a);
        FlagReset(0x818efd52ba5fc653);
        FlagReset(0x818efc52ba5fc4a0);
        FlagReset(0x818b7f52ba5cba62);
        FlagReset(0xf831b3af550ce34e);
        FlagReset(0xf831b2af550ce19b);
        FlagReset(0xf831b1af550cdfe8);
        FlagReset(0x27fbdcf205adc7e0);
        FlagReset(0x27fbdff205adccf9);
        FlagReset(0x27fbdef205adcb46);
        FlagReset(0x27fbe1f205add05f);
    } else {
        FlagReset(0xcbfa1ed2360c16df);
        FlagReset(0xcbfa1fd2360c1892);
        FlagReset(0xfbddeb5f5a8d65f3);
        FlagReset(0xfbddec5f5a8d67a6);
        FlagReset(0xfbdded5f5a8d6959);
        FlagReset(0xfbddee5f5a8d6b0c);
        FlagReset(0xfbddef5f5a8d6cbf);
        FlagReset(0xfbddf05f5a8d6e72);
        FlagReset(0xfbddf15f5a8d7025);
        FlagReset(0x107374ac8ddfa8c3);
        FlagReset(0x107375ac8ddfaa76);
        FlagReset(0x107376ac8ddfac29);
        FlagReset(0x107377ac8ddfaddc);
        FlagReset(0x107378ac8ddfaf8f);
        FlagReset(0x107379ac8ddfb142);
        FlagReset(0x10737aac8ddfb2f5);
        FlagReset(0x10737bac8ddfb4a8);
        FlagReset(0x10737cac8ddfb65b);
        FlagReset(0x107679ac8de1e719);
        FlagReset(0xc2a13b624575cb2d);
        FlagReset(0xc2a138624575c614);
        FlagReset(0xc2a139624575c7c7);
        FlagReset(0xf685add313e4dffb);
        FlagReset(0xf685aed313e4e1ae);
        FlagReset(0xf685afd313e4e361);
        FlagReset(0xf685b0d313e4e514);
    }
    if (FlagGet(0xf8b8f352fb6cdac6)) {
        if (!FlagGet(0xf8d0403ef1e493aa)) {
            FlagReset(0x9b3bc49e33f23ef4);
        }
    }
    if (RandMax(100, 0) <= 0) {
        FlagReset(0x12e3c0ca0f529035);
    }
}

new const trader_locations[45][2] = {
    {0x891a51687f8c6928,0x891a51687f8c6928},
    {0x49583ccc2a2211dd,0x49583ccc2a2211dd},
    {0x3e22d65317fef8a2,0x3e22d65317fef8a2},
    {0x8c296d0804570b35,0x8c296d0804570b35},
    {0x501c76de4678ce42,0x501c76de4678ce42},
    {0xcccd55e2dfdaa9d7,0xcccd55e2dfdaa9d7},
    {0xa7f4ed8a1168d9f8,0xa7f4ed8a1168d9f8},
    {0x53aa25d9a3ac91cc,0x53aa25d9a3ac91cc},
    {0x083d15565edefb1b,0x083d15565edefb1b},
    {0x083d14565edef968,0x083d14565edef968},
    {0x3e22d75317fefa55,0x3e22d75317fefa55},
    {0x8c296c0804570982,0x8c296c0804570982},
    {0x083d14565edef968,0x083d14565edef968},
    {0x8d19e8d23f6fd2f1,0x8d19e8d23f6fd2f1},
    {0x6a387acbf614ecae,0x6a387acbf614ecae},
    {0x83c7fdb04e0036b6,0x83c7fdb04e0036b6},
    {0x26f758671c8b4b21,0x26f758671c8b4b21},
    {0x26f757671c8b496e,0x26f757671c8b496e},
    {0xaeb1df8701d2b0bb,0xaeb1df8701d2b0bb},
    {0x77e64ee27f606554,0x77e64ee27f606554},
    {0xd0b22d4a02964f70,0xd0b22d4a02964f70},
    {0x965fb05250a776b7,0x965fb05250a776b7},
    {0x965faf5250a77504,0x965faf5250a77504},
    {0x965fb25250a77a1d,0x965fb25250a77a1d},
    {0x0dec9c00b0d2634d,0x0dec9c00b0d2634d},
    {0x3dea368ba5aeef12,0x3dea368ba5aeef12},
    {0x3dea378ba5aef0c5,0x3dea378ba5aef0c5},
    {0x3dea348ba5aeebac,0x3dea348ba5aeebac},
    {0x3dea358ba5aeed5f,0x3dea358ba5aeed5f},
    {0x081ca3836a96e82a,0x081ca3836a96e82a},
    {0xd2985abdb3354b4d,0xd2985abdb3354b4d},
    {0xd29859bdb335499a,0xd29859bdb335499a},
    {0xd29858bdb33547e7,0xd29858bdb33547e7},
    {0xd29857bdb3354634,0xd29857bdb3354634},
    {0xd29856bdb3354481,0xd29856bdb3354481},
    {0xd29855bdb33542ce,0xd29855bdb33542ce},
    {0x79aa7706c391409b,0x79aa7706c391409b},
    {0x33ffdea1a0397cf4,0x33ffdea1a0397cf4},
    {0x33ffdfa1a0397ea7,0x33ffdfa1a0397ea7},
    {0x33ffe0a1a039805a,0x33ffe0a1a039805a},
    {0x4dce10cfeb9820d0,0x4dce10cfeb9820d0},
    {0x4f2eb064e159b257,0x4f2eb064e159b257},
    {0x4f2eaf64e159b0a4,0x4f2eaf64e159b0a4},
    {0x2d800bdcd3f78139,0x2d800bdcd3f78139},
    {0x81a07831f37a1967,0x81a07831f37a1967},
};

fun_15A8(arg0)
{
    new a = 0;
    for (a = 0; a < 45; a++) {
        if (trader_locations[a][1] == arg0) {
            return a;
        }
    }
    return 0;
}
new const ioa_trade_table[12][3] = {
    // EncounterTrade.Hash0, Message Hash (msg_field_trade_wr02_01_%02d), Game Versions
    {0x4e002aa39028ae6e,0xec2bade2ffe5a026,GameVersion:Any},
    {0x4e0029a39028acbb,0xec2bace2ffe59e73,GameVersion:Sword},
    {0x4e0028a39028ab08,0xec2babe2ffe59cc0,GameVersion:Shield},
    {0x4e002fa39028b6ed,0xec2bb2e2ffe5a8a5,GameVersion:Shield},
    {0x4e002ea39028b53a,0xec2bb1e2ffe5a6f2,GameVersion:Any},
    {0x4e002da39028b387,0xec2bb0e2ffe5a53f,GameVersion:Sword},
    {0x4e002ca39028b1d4,0xec2bafe2ffe5a38c,GameVersion:Any},
    {0x4e0023a39028a289,0xec2bb6e2ffe5af71,GameVersion:Any},
    {0x4e0022a39028a0d6,0xec2bb5e2ffe5adbe,GameVersion:Any},
    {0x4dfca5a390259698,0xec2bb5e2ffe5adbe,GameVersion:Any},
    {0x4dfca6a39025984b,0xec28a8e2ffe361d0,GameVersion:Any},
    {0x4dfca7a3902599fe,0xec28a9e2ffe36383,GameVersion:Any},
};
new const work_ids[5][2] = {
    {0x21f38888bc4ada83,0x67dbfa285dcf71d9},
    {0x5d66226dae474936,0x811e85f4982fcb42},
    {0x1a97459e6a614361,0xb7e3acba39b43cef},
    {0x7082412a1dd41d8c,0x50512b9a4b74e00},
    {0x70aee96991e89acf,0xa950e1647999dafd},
};

// Places the random apricorn girls, digging ma's, and traders around the wild area
PlaceRandomNPCs(should_update_field_objects, should_fade, arg2)
{
    if (should_fade) {
        FadeOut(8, "BLACK", 0, 1);
        FadeWait();
    }
    new npcs[51][2] = {
        {0xfc84ae7cd62819d9,0xfc84ae7cd62819d9},
        {0xbbaf84340e1996e6,0xbbaf84340e1996e6},
        {0x58457954d244bff7,0x58457954d244bff7},
        {0x897b5ba2a4fdb630,0x897b5ba2a4fdb630},
        {0x58457854d244be44,0x58457854d244be44},
        {0x58457b54d244c35d,0x58457b54d244c35d},
        {0x58457a54d244c1aa,0x58457a54d244c1aa},
        {0x03b272dd7d8f5ad3,0x03b272dd7d8f5ad3},
        {0xe6e17eedee57893c,0xe6e17eedee57893c},
        {0xe6e17fedee578aef,0xe6e17fedee578aef},
        {0xe6e180edee578ca2,0xe6e180edee578ca2},
        {0xe6e17aedee578270,0xe6e17aedee578270},
        {0xe6e17bedee578423,0xe6e17bedee578423},
        {0xe6e17cedee5785d6,0xe6e17cedee5785d6},
        {0x4e0cd852cb70bb92,0x4e0cd852cb70bb92},
        {0xb2c06489032ef605,0xb2c06489032ef605},
        {0xb2c06389032ef452,0xb2c06389032ef452},
        {0xb2c06289032ef29f,0xb2c06289032ef29f},
        {0xb2c06189032ef0ec,0xb2c06189032ef0ec},
        {0xd7c77d60ec0d6da5,0xd7c77d60ec0d6da5},
        {0x11a1a9f0929f9c9a,0x11a1a9f0929f9c9a},
        {0x11a1aaf0929f9e4d,0x11a1aaf0929f9e4d},
        {0x11a1a7f0929f9934,0x11a1a7f0929f9934},
        {0x11a1a8f0929f9ae7,0x11a1a8f0929f9ae7},
        {0x11a1a5f0929f95ce,0x11a1a5f0929f95ce},
        {0x11a1a6f0929f9781,0x11a1a6f0929f9781},
        {0xbbaf85340e199899,0xbbaf85340e199899},
        {0xbbaf82340e199380,0xbbaf82340e199380},
        {0xbbaf83340e199533,0xbbaf83340e199533},
        {0xaf1d9866112e5b9c,0xaf1d9866112e5b9c},
        {0x0684cdf19350b66b,0x0684cdf19350b66b},
        {0xbc2d707b4b292c0f,0xbc2d707b4b292c0f},
        {0x3b929db6e482b740,0x3b929db6e482b740},
        {0x3b929eb6e482b8f3,0x3b929eb6e482b8f3},
        {0x3b929fb6e482baa6,0x3b929fb6e482baa6},
        {0x80622d5a1ab4998e,0x80622d5a1ab4998e},
        {0xbb6094859ef2da49,0xbb6094859ef2da49},
        {0x58863e8ec3d04d11,0x58863e8ec3d04d11},
        {0x9acd681fab84dd0e,0x9acd681fab84dd0e},
        {0x9acd691fab84dec1,0x9acd691fab84dec1},
        {0x9acd661fab84d9a8,0x9acd661fab84d9a8},
        {0x9acd671fab84db5b,0x9acd671fab84db5b},
        {0x9acd6c1fab84e3da,0x9acd6c1fab84e3da},
        {0x478e36ff13360943,0x478e36ff13360943},
        {0x1e8c62f80756ebe0,0x1e8c62f80756ebe0},
        {0x8b5920e917747027,0x8b5920e917747027},
        {0x8b591fe917746e74,0x8b591fe917746e74},
        {0x8b5922e91774738d,0x8b5922e91774738d},
        {0x8b5921e9177471da,0x8b5921e9177471da},
        {0x8b591ce91774695b,0x8b591ce91774695b},
        {0x8b591be9177467a8,0x8b591be9177467a8},
    };
    new attempted_npc_0_count = 5;
    new attempted_npc_1_count = 3;
    new i = 0;
    new spawn_attempt = 0;
    for (i = 0; i < 51; i++) {
        FlagSet(npcs[i][0]);
        if (should_update_field_objects) {
            DeleteFieldObject(npcs[i][1]);
        }
    }
    for (i = 0; i < 45; i++) {
        FlagSet(trader_locations[i][0]);
        if (should_update_field_objects) {
            DeleteFieldObject(trader_locations[i][1]);
        }
    }
    for (i = 0; i < attempted_npc_0_count; i++) {
        for (spawn_attempt = 0; spawn_attempt < 100; spawn_attempt++) {
            new random_npc = RandMax(51, 0);
            if (VanishFlagGet(npcs[random_npc][0]) && arg2 != npcs[random_npc][1]) {
                FlagReset(npcs[random_npc][0]);
                if (should_update_field_objects) {
                    AddFieldObject(npcs[random_npc][1])
                }
                break;
            }
        }
    }
    for (i = 0; i < attempted_npc_1_count; i++) {
        for (spawn_attempt = 0; spawn_attempt < 100; spawn_attempt++) {
            new random_npc = RandMax(45, 0);
            if (VanishFlagGet(trader_locations[random_npc][0]) && arg2 != trader_locations[random_npc][1]) {
                FlagReset(trader_locations[random_npc][0]);
                if (should_update_field_objects) {
                    AddFieldObject(trader_locations[random_npc][1]);
                }
                WorkSet(work_ids[i][0], fun_15A8(trader_locations[random_npc][1]));
                WorkSet(work_ids[i][1], ChooseRandomTrade());
                break;
            }
        }
    }
    if (should_fade) {
        SuspendN(10);
        FadeIn(8, "BLACK");
        FadeWait();
    }
}

// Selects a random trade from those allowed in the game's version
ChooseRandomTrade()
{
    new available_trades[12] = {0, ...};
    new trade_count = 0;
    for (new i = 0; i < 12; i++) {
        if (ioa_trade_table[i][2] == RomGetVersion() || ioa_trade_table[i][2] == 0) {
            available_trades[trade_count] = i;
            trade_count++;
        }
    }
    return available_trades[RandMax(trade_count, 0)];
}

main()
{
    switch (a_xD7477C97) {
        case 0x0:
            fun_2480()
        case 0x1:
            fun_2588()
        default:
            printf("scrid =%d Not Found \n", a_xD7477C97)
    }
}

fun_2480()
{
    if (WorkGet(0x9d15be618b93cb0e) <= 0) {
        if (WorkGet(0x188d41bb7b57fb) >= 1320) {
            WorkSet(0x9d15be618b93cb0e, 1);
        }
    }
    fun_0510();
    printf(">zone_change z_wr0201\n");
}

fun_2588()
{
    if (PlayerGetZoneID() == 0x908a64718ca374e6) {
        if (!FlagGet(0xff3e612a44868d61)) {
            FlagSet(0xff3e612a44868d61);
        }
    }
}