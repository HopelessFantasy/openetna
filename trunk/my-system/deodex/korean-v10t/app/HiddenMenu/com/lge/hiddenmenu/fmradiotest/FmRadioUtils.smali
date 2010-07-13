.class public Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;
.super Ljava/lang/Object;
.source "FmRadioUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils$ServiceBinder;
    }
.end annotation


# static fields
.field public static final DEFAULT_FREQUENCY:I = 0x222e

.field public static final DEFAULT_RSSI:I = 0xc8

.field public static final FM_PREF_AF_ENABLED:Ljava/lang/String; = "fm_pref_af_enabled"

.field public static final FM_PREF_AUDIO_MODE:Ljava/lang/String; = "fm_pref_audio_mode"

.field public static final FM_PREF_CHANNELS:[Ljava/lang/String; = null

.field public static final FM_PREF_DEEMPHASIS:Ljava/lang/String; = "fm_pref_deemphasis"

.field public static final FM_PREF_ENABLE:Ljava/lang/String; = "fm_pref_enabled"

.field public static final FM_PREF_LAST_FREQ:Ljava/lang/String; = "fm_pref_last_freq"

.field public static final FM_PREF_LAST_RSSI:Ljava/lang/String; = "fm_pref_last_rssi"

.field public static final FM_PREF_LIVE_POLLING:Ljava/lang/String; = "fm_pref_live_polling"

.field public static final FM_PREF_LIVE_POLL_INT:Ljava/lang/String; = "fm_pref_live_poll_int"

.field public static final FM_PREF_NFL_MODE:Ljava/lang/String; = "fm_pref_nfl_mode"

.field public static final FM_PREF_RDS_ENABLED:Ljava/lang/String; = "fm_pref_rds_enabled_2"

.field public static final FM_PREF_SCAN_STEP:Ljava/lang/String; = "fm_pref_scan_step"

.field public static final FM_PREF_WORLD_REGION:Ljava/lang/String; = "fm_pref_world_region"

.field public static final FM_RADIO_STREAM_TYPE:I = 0x3

.field public static final FREQ_MAX:I = 0x2a30

.field public static final FREQ_MIN:I = 0x222e

.field public static final INTENT_DLG_ANSWER_WARNING_WITHOUT_HEADSET:Ljava/lang/String; = "lge.android.fmradio.intent.answerwarningwithoutheadset"

.field public static final INTENT_DLG_ASK_WARNING_WITHOUT_HEADSET:Ljava/lang/String; = "lge.android.fmradio.intent.askwarningwithoutheadset"

.field private static final LOGTAG:Ljava/lang/String; = "FM RADIO"

.field public static final TIMER_VOLUME_SET_CLOSE:I = 0x1388

.field public static final TOTAL_CHANNEL_COUNT:I = 0x30

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field public static sService:Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 62
    const/16 v0, 0x31

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fm_pref_preset_0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "fm_pref_preset_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "fm_pref_preset_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "fm_pref_preset_3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fm_pref_preset_4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "fm_pref_preset_5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fm_pref_preset_6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "fm_pref_preset_7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "fm_pref_preset_8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fm_pref_preset_9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "fm_pref_preset_10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fm_pref_preset_11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "fm_pref_preset_12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fm_pref_preset_13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fm_pref_preset_14"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "fm_pref_preset_15"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "fm_pref_preset_16"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "fm_pref_preset_17"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "fm_pref_preset_18"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "fm_pref_preset_19"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "fm_pref_preset_20"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "fm_pref_preset_21"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "fm_pref_preset_22"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "fm_pref_preset_23"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "fm_pref_preset_24"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "fm_pref_preset_25"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "fm_pref_preset_26"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "fm_pref_preset_27"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "fm_pref_preset_28"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "fm_pref_preset_29"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "fm_pref_preset_30"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "fm_pref_preset_31"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "fm_pref_preset_32"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "fm_pref_preset_33"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "fm_pref_preset_34"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "fm_pref_preset_35"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "fm_pref_preset_36"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "fm_pref_preset_37"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "fm_pref_preset_38"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "fm_pref_preset_39"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "fm_pref_preset_40"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "fm_pref_preset_41"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "fm_pref_preset_42"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "fm_pref_preset_43"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "fm_pref_preset_44"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "fm_pref_preset_45"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "fm_pref_preset_46"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "fm_pref_preset_47"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "fm_pref_preset_48"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->FM_PREF_CHANNELS:[Ljava/lang/String;

    .line 239
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->sService:Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->sConnectionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    return-void
.end method

.method public static GetChannelInfo(Landroid/content/Context;I)I
    .registers 5
    .parameter "context"
    .parameter "nChannelIndex"

    .prologue
    const/4 v2, 0x0

    .line 348
    const-string v1, "SHARED_CHANNEL_PREFS"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 350
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_12

    .line 351
    sget-object v1, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->FM_PREF_CHANNELS:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 353
    :goto_11
    return v1

    :cond_12
    move v1, v2

    goto :goto_11
.end method

.method public static GetCurrentVolumeLevel(Landroid/content/Context;)I
    .registers 2
    .parameter "context"

    .prologue
    .line 390
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public static GetLastFrequency(Landroid/content/Context;)I
    .registers 5
    .parameter "context"

    .prologue
    const/16 v3, 0x222e

    .line 315
    const-string v1, "SHARED_RADIO_INFO_PREFS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 316
    .local v0, RadioInfoPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_12

    .line 318
    const-string v1, "fm_pref_last_freq"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 320
    :goto_11
    return v1

    :cond_12
    move v1, v3

    goto :goto_11
.end method

.method public static GetLastRssi(Landroid/content/Context;)I
    .registers 5
    .parameter "context"

    .prologue
    const/16 v3, 0xc8

    .line 337
    const-string v1, "SHARED_RADIO_INFO_RSSI"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 338
    .local v0, RadioInfoPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_12

    .line 340
    const-string v1, "fm_pref_last_rssi"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 342
    :goto_11
    return v1

    :cond_12
    move v1, v3

    goto :goto_11
.end method

.method public static GetSavedChannelFrequency(Landroid/content/Context;I)I
    .registers 5
    .parameter "context"
    .parameter "nChannelIndex"

    .prologue
    const/4 v2, 0x0

    .line 292
    const-string v1, "SHARED_CHANNEL_PREFS"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 294
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_12

    .line 295
    sget-object v1, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->FM_PREF_CHANNELS:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 297
    :goto_11
    return v1

    :cond_12
    move v1, v2

    goto :goto_11
.end method

.method public static GetStreamMaxVolume(Landroid/content/Context;)I
    .registers 2
    .parameter "context"

    .prologue
    .line 386
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public static IsBluetoothA2dpOn(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 376
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    return v0
.end method

.method public static IsSpeakerPhoneOn(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 368
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public static IsWiredHeadsetOn(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 372
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method public static SetAudioRouting(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "routes"

    .prologue
    .line 380
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/media/AudioManager;->setRouting(III)V

    .line 383
    return-void
.end method

.method public static SetChannelInfo(Landroid/content/Context;II)V
    .registers 7
    .parameter "context"
    .parameter "nChannelIndex"
    .parameter "nFreq"

    .prologue
    .line 358
    const-string v2, "SHARED_CHANNEL_PREFS"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 359
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_17

    .line 360
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 361
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v2, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->FM_PREF_CHANNELS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 362
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 364
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_17
    return-void
.end method

.method public static SetCurrentVolumeLevel(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "nVolume"

    .prologue
    .line 394
    const-string v0, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioControlService]SetCurrentVolumeLevel nVolume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 396
    return-void
.end method

.method public static SetLastFreqeuncy(Landroid/content/Context;I)Z
    .registers 6
    .parameter "context"
    .parameter "nFreq"

    .prologue
    const/4 v3, 0x0

    .line 302
    const-string v2, "SHARED_RADIO_INFO_PREFS"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 303
    .local v0, RadioInfoPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_17

    .line 304
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 305
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "fm_pref_last_freq"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 309
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_16
    return v2

    :cond_17
    move v2, v3

    goto :goto_16
.end method

.method public static SetLastRssi(Landroid/content/Context;I)Z
    .registers 6
    .parameter "context"
    .parameter "nRssi"

    .prologue
    const/4 v3, 0x0

    .line 325
    const-string v2, "SHARED_RADIO_INFO_RSSI"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 326
    .local v0, RadioInfoPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_17

    .line 327
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 328
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "fm_pref_last_rssi"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 330
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 332
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_16
    return v2

    :cond_17
    move v2, v3

    goto :goto_16
.end method

.method public static bindToService(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .registers 6
    .parameter "context"
    .parameter "callback"

    .prologue
    const-class v3, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    .line 247
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 248
    new-instance v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils$ServiceBinder;

    invoke-direct {v0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 249
    .local v0, sb:Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils$ServiceBinder;
    sget-object v1, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public static getChannelID(I)I
    .registers 2
    .parameter "nIndex"

    .prologue
    .line 91
    const/4 v0, 0x0

    .line 146
    .local v0, nChannelID:I
    return v0
.end method

.method public static getChannelIndex(I)I
    .registers 2
    .parameter "nID"

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 205
    .local v0, getChannelIndex:I
    return v0
.end method

.method public static getVolumeImage(I)I
    .registers 2
    .parameter "nIndex"

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 234
    .local v0, nVolumeImageID:I
    return v0
.end method

.method public static unbindFromService(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 255
    sget-object v1, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils$ServiceBinder;

    .line 256
    .local v0, sb:Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils$ServiceBinder;
    if-nez v0, :cond_12

    .line 257
    const-string v1, "FmRadioUtils"

    const-string v2, "Trying to unbind for unknown Context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_11
    :goto_11
    return-void

    .line 260
    :cond_12
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 261
    sget-object v1, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 264
    const/4 v1, 0x0

    sput-object v1, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->sService:Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService;

    goto :goto_11
.end method
