.class public Llge/android/fmradio/FmRadioUtils;
.super Ljava/lang/Object;
.source "FmRadioUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llge/android/fmradio/FmRadioUtils$ServiceBinder;
    }
.end annotation


# static fields
.field public static final DEFAULT_FREQUENCY:I = 0x222e

.field public static final DEFAULT_RSSI:I = 0xc8

.field public static final DEFAULT_RSSI_THRESH:I = 0x6e

.field public static final FM_PREF_AF_ENABLED:Ljava/lang/String; = "fm_pref_af_enabled"

.field public static final FM_PREF_AF_MODE:Ljava/lang/String; = "fm_pref_af_mode"

.field public static final FM_PREF_AUDIO_MODE:Ljava/lang/String; = "fm_pref_audio_mode"

.field public static final FM_PREF_CHANNELS:[Ljava/lang/String; = null

.field public static final FM_PREF_CURRENT_CHANNEL:Ljava/lang/String; = "fm_pref_current_channel"

.field public static final FM_PREF_DEEMPHASIS:Ljava/lang/String; = "fm_pref_deemphasis"

.field public static final FM_PREF_ENABLE:Ljava/lang/String; = "fm_pref_enabled"

.field public static final FM_PREF_LAST_FREQ:Ljava/lang/String; = "fm_pref_last_freq"

.field public static final FM_PREF_LAST_RSSI:Ljava/lang/String; = "fm_pref_last_rssi"

.field public static final FM_PREF_LIVE_POLLING:Ljava/lang/String; = "fm_pref_live_polling"

.field public static final FM_PREF_LIVE_POLL_INT:Ljava/lang/String; = "fm_pref_live_poll_int"

.field public static final FM_PREF_NFL_MODE:Ljava/lang/String; = "fm_pref_nfl_mode"

.field public static final FM_PREF_RDS_ENABLED:Ljava/lang/String; = "fm_pref_rds_enabled_2"

.field public static final FM_PREF_RDS_INFOS:[Ljava/lang/String; = null

.field public static final FM_PREF_SCAN_STEP:Ljava/lang/String; = "fm_pref_scan_step"

.field public static final FM_PREF_STATION_MODE:Ljava/lang/String; = "fm_pref_station_mode"

.field public static final FM_PREF_WORLD_REGION:Ljava/lang/String; = "fm_pref_world_region"

.field public static final FM_RADIO_STREAM_TYPE:I = 0x3

.field public static final FREQ_MAX:I = 0x2a30

.field public static final FREQ_MIN:I = 0x222e

.field public static final INTENT_DLG_ANSWER_WARNING_WITHOUT_HEADSET:Ljava/lang/String; = "lge.android.fmradio.intent.answerwarningwithoutheadset"

.field public static final INTENT_DLG_ASK_WARNING_WITHOUT_HEADSET:Ljava/lang/String; = "lge.android.fmradio.intent.askwarningwithoutheadset"

.field private static final LOGTAG:Ljava/lang/String; = "FM RADIO"

.field public static final OUTPUT_SOUND_BLUETOOTH:I = 0x12c

.field public static final OUTPUT_SOUND_EARJACK:I = 0xc8

.field public static final OUTPUT_SOUND_SPEAKER:I = 0x64

.field public static final STATE_RUN:I = 0x3e9

.field public static final STATE_RUNNING:I = 0x3ea

.field public static final STATE_STOP:I = 0x3eb

.field public static final TIMER_VOLUME_SET_CLOSE:I = 0x1388

.field public static final TOTAL_CHANNEL_COUNT:I = 0x30

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Llge/android/fmradio/FmRadioUtils$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field protected static sService:Llge/android/fmradio/IFmRadioControlService;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fm_pref_rds_state"

    aput-object v1, v0, v3

    const-string v1, "fm_pref_af_state"

    aput-object v1, v0, v4

    const-string v1, "fm_pref_rds_data_type"

    aput-object v1, v0, v5

    const-string v1, "fm_pref_rds_data_index"

    aput-object v1, v0, v6

    const-string v1, "fm_pref_rds_data_string"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "fm_pref_rds_program_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fm_pref_rds_program_service"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "fm_pref_rds_radio_text"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "fm_pref_rds_progrmatype_name"

    aput-object v2, v0, v1

    sput-object v0, Llge/android/fmradio/FmRadioUtils;->FM_PREF_RDS_INFOS:[Ljava/lang/String;

    .line 85
    const/16 v0, 0x31

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fm_pref_preset_0"

    aput-object v1, v0, v3

    const-string v1, "fm_pref_preset_1"

    aput-object v1, v0, v4

    const-string v1, "fm_pref_preset_2"

    aput-object v1, v0, v5

    const-string v1, "fm_pref_preset_3"

    aput-object v1, v0, v6

    const-string v1, "fm_pref_preset_4"

    aput-object v1, v0, v7

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

    sput-object v0, Llge/android/fmradio/FmRadioUtils;->FM_PREF_CHANNELS:[Ljava/lang/String;

    .line 304
    const/4 v0, 0x0

    sput-object v0, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llge/android/fmradio/FmRadioUtils;->sConnectionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    return-void
.end method

.method public static CloseAudioDevice(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 917
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioUtils] CloseAudioDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setFmRadioOn(Z)V

    .line 921
    return-void
.end method

.method public static CreateAudioDevice(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 909
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioUtils] CreateAudioDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setFmRadioOn(Z)V

    .line 913
    return-void
.end method

.method public static GetAfState(Landroid/content/Context;)I
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 671
    const-string v1, "SHARED_RDS_INFO_PREFS"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 672
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_13

    .line 673
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->FM_PREF_RDS_INFOS:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 675
    :goto_12
    return v1

    :cond_13
    move v1, v3

    goto :goto_12
.end method

.method public static GetChannelInfo(Landroid/content/Context;I)I
    .registers 5
    .parameter "context"
    .parameter "nChannelIndex"

    .prologue
    const/4 v2, 0x0

    .line 451
    const-string v1, "SHARED_CHANNEL_PREFS"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 452
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_12

    .line 453
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->FM_PREF_CHANNELS:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 455
    :goto_11
    return v1

    :cond_12
    move v1, v2

    goto :goto_11
.end method

.method public static GetChannelInfo(Landroid/content/SharedPreferences;I)I
    .registers 5
    .parameter "ChannelPrefs"
    .parameter "nChannelIndex"

    .prologue
    const/4 v2, 0x0

    .line 517
    if-eqz p0, :cond_c

    .line 518
    sget-object v0, Llge/android/fmradio/FmRadioUtils;->FM_PREF_CHANNELS:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 521
    :goto_b
    return v0

    .line 520
    :cond_c
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioUtils]GetChannelInfo = false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 521
    goto :goto_b
.end method

.method public static GetCurrentChannelInfo(Landroid/content/Context;)I
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const-string v3, "FM RADIO"

    .line 568
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioUtils] GetCurrentChannelInfo"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const-string v1, "SHARED_CURRENT_CHANNEL"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 571
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_20

    .line 572
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioUtils] GetCurrentChannelInfo return"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const-string v1, "fm_pref_current_channel"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 575
    :goto_1f
    return v1

    :cond_20
    move v1, v2

    goto :goto_1f
.end method

.method public static GetCurrentChannelInfo(Landroid/content/SharedPreferences;)I
    .registers 4
    .parameter "CurrentChannelPrefs"

    .prologue
    const/4 v2, 0x0

    const-string v1, "FM RADIO"

    .line 607
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioUtils] GetCurrentChannelInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    if-eqz p0, :cond_1a

    .line 610
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioUtils] GetCurrentChannelInfo return"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string v0, "fm_pref_current_channel"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 614
    :goto_19
    return v0

    .line 613
    :cond_1a
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioUtils]GetCurrentChannelInfo = false"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 614
    goto :goto_19
.end method

.method public static GetCurrentVolumeLevel(Landroid/content/Context;)I
    .registers 2
    .parameter "context"

    .prologue
    .line 898
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

    .line 391
    const-string v1, "SHARED_RADIO_INFO_PREFS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 392
    .local v0, RadioInfoPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_12

    .line 394
    const-string v1, "fm_pref_last_freq"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 396
    :goto_11
    return v1

    :cond_12
    move v1, v3

    goto :goto_11
.end method

.method public static GetLastFrequency(Landroid/content/SharedPreferences;)I
    .registers 4
    .parameter "RadioInfoPrefs"

    .prologue
    const/16 v2, 0x222e

    .line 401
    if-eqz p0, :cond_b

    .line 403
    const-string v0, "fm_pref_last_freq"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 406
    :goto_a
    return v0

    .line 405
    :cond_b
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioUtils]GetLastFrequency = false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 406
    goto :goto_a
.end method

.method public static GetLastRssi(Landroid/content/Context;)I
    .registers 5
    .parameter "context"

    .prologue
    const/16 v3, 0xc8

    .line 423
    const-string v1, "SHARED_RADIO_INFO_RSSI"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 424
    .local v0, RadioInfoPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_12

    .line 426
    const-string v1, "fm_pref_last_rssi"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 428
    :goto_11
    return v1

    :cond_12
    move v1, v3

    goto :goto_11
.end method

.method public static GetRdsDataIndex(Landroid/content/Context;)I
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 714
    const-string v1, "SHARED_RDS_DATA_PREFS"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 715
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_13

    .line 716
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->FM_PREF_RDS_INFOS:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 718
    :goto_12
    return v1

    :cond_13
    move v1, v3

    goto :goto_12
.end method

.method public static GetRdsDataText(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 722
    const-string v1, "SHARED_RDS_DATA_PREFS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 723
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_14

    .line 724
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->FM_PREF_RDS_INFOS:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 726
    :goto_13
    return-object v1

    :cond_14
    move-object v1, v3

    goto :goto_13
.end method

.method public static GetRdsDataType(Landroid/content/Context;)I
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 706
    const-string v1, "SHARED_RDS_DATA_PREFS"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 707
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_13

    .line 708
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->FM_PREF_RDS_INFOS:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 710
    :goto_12
    return v1

    :cond_13
    move v1, v3

    goto :goto_12
.end method

.method public static GetRdsProgramService(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 754
    const-string v1, "SHARED_RDS_DATA_PREFS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 755
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_14

    .line 756
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->FM_PREF_RDS_INFOS:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 758
    :goto_13
    return-object v1

    :cond_14
    move-object v1, v3

    goto :goto_13
.end method

.method public static GetRdsProgramType(Landroid/content/Context;)I
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 745
    const-string v1, "SHARED_RDS_DATA_PREFS"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 746
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_13

    .line 747
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->FM_PREF_RDS_INFOS:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 749
    :goto_12
    return v1

    :cond_13
    move v1, v3

    goto :goto_12
.end method

.method public static GetRdsProgramTypeName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 771
    const-string v1, "SHARED_RDS_DATA_PREFS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 772
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_15

    .line 773
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->FM_PREF_RDS_INFOS:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 775
    :goto_14
    return-object v1

    :cond_15
    move-object v1, v3

    goto :goto_14
.end method

.method public static GetRdsRadioText(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 763
    const-string v1, "SHARED_RDS_DATA_PREFS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 764
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_14

    .line 765
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->FM_PREF_RDS_INFOS:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 767
    :goto_13
    return-object v1

    :cond_14
    move-object v1, v3

    goto :goto_13
.end method

.method public static GetRdsState(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 649
    const-string v1, "SHARED_RDS_INFO_PREFS"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 650
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_12

    .line 651
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->FM_PREF_RDS_INFOS:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 653
    :goto_11
    return v1

    :cond_12
    move v1, v2

    goto :goto_11
.end method

.method public static GetSavedChannelFrequency(Landroid/content/Context;I)I
    .registers 5
    .parameter "context"
    .parameter "nChannelIndex"

    .prologue
    const/4 v2, 0x0

    .line 357
    const-string v1, "SHARED_CHANNEL_PREFS"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 358
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_12

    .line 359
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->FM_PREF_CHANNELS:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 361
    :goto_11
    return v1

    :cond_12
    move v1, v2

    goto :goto_11
.end method

.method public static GetSetChannelCount(Landroid/content/Context;)I
    .registers 5
    .parameter "context"

    .prologue
    .line 434
    const-string v2, "FM RADIO"

    const-string v3, "[FmRadioUtils] GetSetChannelCount nVolume"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v1, 0x0

    .line 438
    .local v1, nCount:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_9
    const/16 v2, 0x30

    if-gt v0, v2, :cond_18

    .line 441
    invoke-static {p0, v0}, Llge/android/fmradio/FmRadioUtils;->GetChannelInfo(Landroid/content/Context;I)I

    move-result v2

    if-eqz v2, :cond_15

    .line 443
    add-int/lit8 v1, v1, 0x1

    .line 438
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 446
    :cond_18
    return v1
.end method

.method public static GetSetChannelCount(Landroid/content/SharedPreferences;)I
    .registers 6
    .parameter "ChannelPrefs"

    .prologue
    const-string v4, "FM RADIO"

    .line 496
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioUtils] GetSetChannelCount nVolume"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v1, 0x0

    .line 500
    .local v1, nCount:I
    if-eqz p0, :cond_1e

    .line 501
    const/4 v0, 0x1

    .local v0, i:I
    :goto_d
    const/16 v3, 0x30

    if-gt v0, v3, :cond_1c

    .line 504
    invoke-static {p0, v0}, Llge/android/fmradio/FmRadioUtils;->GetChannelInfo(Landroid/content/SharedPreferences;I)I

    move-result v3

    if-eqz v3, :cond_19

    .line 506
    add-int/lit8 v1, v1, 0x1

    .line 501
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    move v2, v1

    .line 512
    .end local v0           #i:I
    .end local v1           #nCount:I
    .local v2, nCount:I
    :goto_1d
    return v2

    .line 511
    .end local v2           #nCount:I
    .restart local v1       #nCount:I
    :cond_1e
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioUtils]GetSetChannelCount = false"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 512
    .end local v1           #nCount:I
    .restart local v2       #nCount:I
    goto :goto_1d
.end method

.method public static GetStreamMaxVolume(Landroid/content/Context;)I
    .registers 2
    .parameter "context"

    .prologue
    .line 894
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

.method public static IsAirPlainMode(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const-string v3, "FM RADIO"

    .line 797
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_18

    .line 799
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioUtils]IsAirPlainMode = true"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/4 v0, 0x1

    .line 804
    :goto_17
    return v0

    .line 803
    :cond_18
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioUtils]IsAirPlainMode = false"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 804
    goto :goto_17
.end method

.method public static IsBlueToothMode(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const-string v3, "audio"

    const-string v2, "FM RADIO"

    .line 809
    const-string v0, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-ne v0, v1, :cond_1c

    .line 810
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioUtils]IsBlueToothMode = isBluetoothA2dpOn"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 817
    .end local p0
    :goto_1b
    return v0

    .line 812
    .restart local p0
    :cond_1c
    const-string v0, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-ne v0, v1, :cond_33

    .line 813
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioUtils]IsBlueToothMode = isBluetoothScoOn"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 814
    goto :goto_1b

    .line 816
    :cond_33
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioUtils]IsBlueToothMode = false"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static IsBluetoothA2dpOn(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 884
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    return v0
.end method

.method public static IsSpeakerOn(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 838
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v0

    const/16 v1, 0x400

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    move v0, v2

    goto :goto_12
.end method

.method public static IsWiredHeadsetOn(Landroid/content/Context;I)Z
    .registers 8
    .parameter "context"
    .parameter "bSystemOn"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "audio"

    const-string v2, "FM RADIO"

    .line 846
    const-string v0, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getRouting(I)I

    move-result v0

    const/16 v1, 0x400

    if-ne v0, v1, :cond_1f

    .line 848
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioUtils]isFMRadioWiredHeadsetOn = true"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 859
    .end local p0
    :goto_1e
    return v0

    .line 851
    .restart local p0
    :cond_1f
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioUtils]isFMRadioWiredHeadsetOn = false"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const-string v0, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-ne v0, v3, :cond_3d

    .line 854
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioUtils]IsWiredHeadsetOn = true"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 855
    goto :goto_1e

    .line 857
    :cond_3d
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioUtils]IsWiredHeadsetOn = false"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 859
    goto :goto_1e
.end method

.method public static ReSetAllChannel(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 485
    const-string v2, "SHARED_CHANNEL_PREFS"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 486
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_15

    .line 487
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 488
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_15

    .line 489
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 490
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 493
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_15
    return-void
.end method

.method public static ReSetAllChannel(Landroid/content/SharedPreferences;)V
    .registers 4
    .parameter "ChannelPrefs"

    .prologue
    .line 552
    if-eqz p0, :cond_f

    .line 553
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 554
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_e

    .line 555
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 556
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 561
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_e
    :goto_e
    return-void

    .line 560
    :cond_f
    const-string v1, "FM RADIO"

    const-string v2, "[FmRadioUtils]ReSetAllChannel = false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public static ReSetChannelInfo(Landroid/content/Context;I)Z
    .registers 6
    .parameter "context"
    .parameter "nChannelIndex"

    .prologue
    const/4 v3, 0x0

    .line 473
    const-string v2, "SHARED_CHANNEL_PREFS"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 474
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_1b

    .line 475
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 476
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_1b

    .line 477
    sget-object v2, Llge/android/fmradio/FmRadioUtils;->FM_PREF_CHANNELS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 478
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 481
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_1a
    return v2

    :cond_1b
    move v2, v3

    goto :goto_1a
.end method

.method public static ReSetChannelInfo(Landroid/content/SharedPreferences;I)Z
    .registers 5
    .parameter "ChannelPrefs"
    .parameter "nChannelIndex"

    .prologue
    .line 539
    if-eqz p0, :cond_14

    .line 540
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 541
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_14

    .line 542
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->FM_PREF_CHANNELS:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 543
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 547
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_13
    return v1

    .line 546
    :cond_14
    const-string v1, "FM RADIO"

    const-string v2, "[FmRadioUtils]ReSetChannelInfo = false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static ReSetCurrentChannelInfo(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 594
    const-string v2, "SHARED_CURRENT_CHANNEL"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 595
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_17

    .line 596
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 597
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_17

    .line 598
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 599
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 602
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_16
    return v2

    :cond_17
    move v2, v3

    goto :goto_16
.end method

.method public static ReSetCurrentChannelInfo(Landroid/content/SharedPreferences;)Z
    .registers 4
    .parameter "CurrentChannelPrefs"

    .prologue
    .line 634
    if-eqz p0, :cond_10

    .line 635
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 636
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_10

    .line 637
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 638
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 642
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_f
    return v1

    .line 641
    :cond_10
    const-string v1, "FM RADIO"

    const-string v2, "[FmRadioUtils]ReSetCurrentChannelInfo = false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static ReSetRdsAllData(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 693
    const-string v2, "SHARED_RDS_DATA_PREFS"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 694
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_15

    .line 695
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 696
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_15

    .line 697
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 698
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 701
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_15
    return-void
.end method

.method public static SetAfState(Landroid/content/Context;I)Z
    .registers 6
    .parameter "context"
    .parameter "nAf"

    .prologue
    const/4 v3, 0x0

    .line 680
    const-string v2, "SHARED_RDS_INFO_PREFS"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 681
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_1c

    .line 682
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 683
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_1c

    .line 684
    sget-object v2, Llge/android/fmradio/FmRadioUtils;->FM_PREF_RDS_INFOS:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 685
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 688
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_1b
    return v2

    :cond_1c
    move v2, v3

    goto :goto_1b
.end method

.method public static SetAudioFromUser(I)V
    .registers 4
    .parameter "nDevice"

    .prologue
    .line 1128
    :try_start_0
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1, p0}, Llge/android/fmradio/IFmRadioControlService;->SetAudioFromUser(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1133
    :goto_5
    return-void

    .line 1129
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1130
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.SetAudioFromUser"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public static SetAudioRouting(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "routes"

    .prologue
    .line 888
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/media/AudioManager;->setRouting(III)V

    .line 891
    return-void
.end method

.method public static SetChannelInfo(Landroid/content/Context;II)Z
    .registers 7
    .parameter "context"
    .parameter "nChannelIndex"
    .parameter "nFreq"

    .prologue
    const/4 v3, 0x0

    .line 460
    const-string v2, "SHARED_CHANNEL_PREFS"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 461
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_1b

    .line 462
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 463
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_1b

    .line 464
    sget-object v2, Llge/android/fmradio/FmRadioUtils;->FM_PREF_CHANNELS:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 465
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 468
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_1a
    return v2

    :cond_1b
    move v2, v3

    goto :goto_1a
.end method

.method public static SetChannelInfo(Landroid/content/SharedPreferences;II)Z
    .registers 6
    .parameter "ChannelPrefs"
    .parameter "nChannelIndex"
    .parameter "nFreq"

    .prologue
    .line 526
    if-eqz p0, :cond_14

    .line 527
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 528
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_14

    .line 529
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->FM_PREF_CHANNELS:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 530
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 534
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_13
    return v1

    .line 533
    :cond_14
    const-string v1, "FM RADIO"

    const-string v2, "[FmRadioUtils]SetChannelInfo = false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static SetCurrentChannelInfo(Landroid/content/Context;I)Z
    .registers 8
    .parameter "context"
    .parameter "nChannelIndex"

    .prologue
    const/4 v3, 0x0

    const-string v5, "[FmRadioUtils] SetCurrentChannelInfo return"

    const-string v4, "FM RADIO"

    .line 579
    const-string v2, "FM RADIO"

    const-string v2, "[FmRadioUtils] SetCurrentChannelInfo return"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v2, "SHARED_CURRENT_CHANNEL"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 581
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_2b

    .line 582
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 583
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_2b

    .line 584
    const-string v2, "FM RADIO"

    const-string v2, "[FmRadioUtils] SetCurrentChannelInfo return"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v2, "fm_pref_current_channel"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 586
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 589
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_2a
    return v2

    :cond_2b
    move v2, v3

    goto :goto_2a
.end method

.method public static SetCurrentChannelInfo(Landroid/content/SharedPreferences;I)Z
    .registers 6
    .parameter "CurrentChannelPrefs"
    .parameter "nChannelIndex"

    .prologue
    const-string v3, "[FmRadioUtils] SetCurrentChannelInfo return"

    const-string v2, "FM RADIO"

    .line 618
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioUtils] SetCurrentChannelInfo return"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    if-eqz p0, :cond_24

    .line 621
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 622
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_24

    .line 623
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioUtils] SetCurrentChannelInfo return"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v1, "fm_pref_current_channel"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 625
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 629
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_23
    return v1

    .line 628
    :cond_24
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioUtils]SetCurrentChannelInfo = false"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v1, 0x0

    goto :goto_23
.end method

.method public static SetCurrentVolumeLevel(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "nVolume"

    .prologue
    .line 902
    const-string v0, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioUtils]SetCurrentVolumeLevel nVolume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 904
    return-void
.end method

.method public static SetLastFreqeuncy(Landroid/content/Context;I)Z
    .registers 6
    .parameter "context"
    .parameter "nFreq"

    .prologue
    const/4 v3, 0x0

    .line 366
    const-string v2, "SHARED_RADIO_INFO_PREFS"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 367
    .local v0, RadioInfoPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_17

    .line 368
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 369
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "fm_pref_last_freq"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 371
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 373
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_16
    return v2

    :cond_17
    move v2, v3

    goto :goto_16
.end method

.method public static SetLastFreqeuncy(Landroid/content/SharedPreferences;I)Z
    .registers 5
    .parameter "RadioInfoPrefs"
    .parameter "nFreq"

    .prologue
    .line 378
    if-eqz p0, :cond_10

    .line 379
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 380
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "fm_pref_last_freq"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 382
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 386
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_f
    return v1

    .line 385
    :cond_10
    const-string v1, "FM RADIO"

    const-string v2, "[FmRadioUtils]SetLastFreqeuncy = false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static SetLastRssi(Landroid/content/Context;I)Z
    .registers 6
    .parameter "context"
    .parameter "nRssi"

    .prologue
    const/4 v3, 0x0

    .line 411
    const-string v2, "SHARED_RADIO_INFO_RSSI"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 412
    .local v0, RadioInfoPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_17

    .line 413
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 414
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "fm_pref_last_rssi"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 416
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 418
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_16
    return v2

    :cond_17
    move v2, v3

    goto :goto_16
.end method

.method public static SetProgramData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "context"
    .parameter "rdsProgramType"
    .parameter "rdsProgramService"
    .parameter "rdsRadioText"
    .parameter "rdsProgramTypeName"

    .prologue
    const/4 v3, 0x0

    .line 781
    const-string v2, "SHARED_RDS_DATA_PREFS"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 782
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_35

    .line 783
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 784
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_35

    .line 785
    sget-object v2, Llge/android/fmradio/FmRadioUtils;->FM_PREF_RDS_INFOS:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 786
    sget-object v2, Llge/android/fmradio/FmRadioUtils;->FM_PREF_RDS_INFOS:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 787
    sget-object v2, Llge/android/fmradio/FmRadioUtils;->FM_PREF_RDS_INFOS:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 788
    sget-object v2, Llge/android/fmradio/FmRadioUtils;->FM_PREF_RDS_INFOS:[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-interface {v1, v2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 789
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 792
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_34
    return v2

    :cond_35
    move v2, v3

    goto :goto_34
.end method

.method public static SetRdsData(Landroid/content/Context;IILjava/lang/String;)Z
    .registers 8
    .parameter "context"
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    const/4 v3, 0x0

    .line 731
    const-string v2, "SHARED_RDS_DATA_PREFS"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 732
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_2c

    .line 733
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 734
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_2c

    .line 735
    sget-object v2, Llge/android/fmradio/FmRadioUtils;->FM_PREF_RDS_INFOS:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 736
    sget-object v2, Llge/android/fmradio/FmRadioUtils;->FM_PREF_RDS_INFOS:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 737
    sget-object v2, Llge/android/fmradio/FmRadioUtils;->FM_PREF_RDS_INFOS:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 738
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 741
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_2b
    return v2

    :cond_2c
    move v2, v3

    goto :goto_2b
.end method

.method public static SetRdsState(Landroid/content/Context;I)Z
    .registers 6
    .parameter "context"
    .parameter "nState"

    .prologue
    const/4 v3, 0x0

    .line 658
    const-string v2, "SHARED_RDS_INFO_PREFS"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 659
    .local v0, ChannelPrefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_1b

    .line 660
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 661
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_1b

    .line 662
    sget-object v2, Llge/android/fmradio/FmRadioUtils;->FM_PREF_RDS_INFOS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 663
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 666
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_1a
    return v2

    :cond_1b
    move v2, v3

    goto :goto_1a
.end method

.method public static SetWiredHeadsetOn(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 924
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioUtils] SetWiredHeadsetOn"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setFmRadioOn(Z)V

    .line 928
    return-void
.end method

.method public static bindToService(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 308
    const/4 v0, 0x0

    invoke-static {p0, v0}, Llge/android/fmradio/FmRadioUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .registers 6
    .parameter "context"
    .parameter "callback"

    .prologue
    const-class v3, Llge/android/fmradio/FmRadioControlService;

    .line 312
    new-instance v1, Landroid/content/Intent;

    const-class v2, Llge/android/fmradio/FmRadioControlService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 313
    new-instance v0, Llge/android/fmradio/FmRadioUtils$ServiceBinder;

    invoke-direct {v0, p1}, Llge/android/fmradio/FmRadioUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 314
    .local v0, sb:Llge/android/fmradio/FmRadioUtils$ServiceBinder;
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Llge/android/fmradio/FmRadioControlService;

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
    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, nChannelID:I
    packed-switch p0, :pswitch_data_d6

    .line 169
    :goto_4
    return v0

    .line 116
    :pswitch_5
    const v0, 0x7f09002e

    goto :goto_4

    .line 117
    :pswitch_9
    const v0, 0x7f09002f

    goto :goto_4

    .line 118
    :pswitch_d
    const v0, 0x7f090030

    goto :goto_4

    .line 119
    :pswitch_11
    const v0, 0x7f090031

    goto :goto_4

    .line 120
    :pswitch_15
    const v0, 0x7f090032

    goto :goto_4

    .line 121
    :pswitch_19
    const v0, 0x7f090033

    goto :goto_4

    .line 122
    :pswitch_1d
    const v0, 0x7f090035

    goto :goto_4

    .line 123
    :pswitch_21
    const v0, 0x7f090036

    goto :goto_4

    .line 124
    :pswitch_25
    const v0, 0x7f090037

    goto :goto_4

    .line 125
    :pswitch_29
    const v0, 0x7f090038

    goto :goto_4

    .line 127
    :pswitch_2d
    const v0, 0x7f090039

    goto :goto_4

    .line 128
    :pswitch_31
    const v0, 0x7f09003a

    goto :goto_4

    .line 129
    :pswitch_35
    const v0, 0x7f09003c

    goto :goto_4

    .line 130
    :pswitch_39
    const v0, 0x7f09003d

    goto :goto_4

    .line 131
    :pswitch_3d
    const v0, 0x7f09003e

    goto :goto_4

    .line 132
    :pswitch_41
    const v0, 0x7f09003f

    goto :goto_4

    .line 133
    :pswitch_45
    const v0, 0x7f090040

    goto :goto_4

    .line 134
    :pswitch_49
    const v0, 0x7f090041

    goto :goto_4

    .line 135
    :pswitch_4d
    const v0, 0x7f090043

    goto :goto_4

    .line 136
    :pswitch_51
    const v0, 0x7f090044

    goto :goto_4

    .line 138
    :pswitch_55
    const v0, 0x7f090045

    goto :goto_4

    .line 139
    :pswitch_59
    const v0, 0x7f090046

    goto :goto_4

    .line 140
    :pswitch_5d
    const v0, 0x7f090047

    goto :goto_4

    .line 141
    :pswitch_61
    const v0, 0x7f090048

    goto :goto_4

    .line 142
    :pswitch_65
    const v0, 0x7f09004a

    goto :goto_4

    .line 143
    :pswitch_69
    const v0, 0x7f09004b

    goto :goto_4

    .line 144
    :pswitch_6d
    const v0, 0x7f09004c

    goto :goto_4

    .line 145
    :pswitch_71
    const v0, 0x7f09004d

    goto :goto_4

    .line 146
    :pswitch_75
    const v0, 0x7f09004e

    goto :goto_4

    .line 147
    :pswitch_79
    const v0, 0x7f09004f

    goto :goto_4

    .line 149
    :pswitch_7d
    const v0, 0x7f090051

    goto :goto_4

    .line 150
    :pswitch_81
    const v0, 0x7f090052

    goto :goto_4

    .line 151
    :pswitch_85
    const v0, 0x7f090053

    goto/16 :goto_4

    .line 152
    :pswitch_8a
    const v0, 0x7f090054

    goto/16 :goto_4

    .line 153
    :pswitch_8f
    const v0, 0x7f090055

    goto/16 :goto_4

    .line 154
    :pswitch_94
    const v0, 0x7f090056

    goto/16 :goto_4

    .line 155
    :pswitch_99
    const v0, 0x7f090058

    goto/16 :goto_4

    .line 156
    :pswitch_9e
    const v0, 0x7f090059

    goto/16 :goto_4

    .line 157
    :pswitch_a3
    const v0, 0x7f09005a

    goto/16 :goto_4

    .line 158
    :pswitch_a8
    const v0, 0x7f09005b

    goto/16 :goto_4

    .line 160
    :pswitch_ad
    const v0, 0x7f09005c

    goto/16 :goto_4

    .line 161
    :pswitch_b2
    const v0, 0x7f09005d

    goto/16 :goto_4

    .line 162
    :pswitch_b7
    const v0, 0x7f09005f

    goto/16 :goto_4

    .line 163
    :pswitch_bc
    const v0, 0x7f090060

    goto/16 :goto_4

    .line 164
    :pswitch_c1
    const v0, 0x7f090061

    goto/16 :goto_4

    .line 165
    :pswitch_c6
    const v0, 0x7f090062

    goto/16 :goto_4

    .line 166
    :pswitch_cb
    const v0, 0x7f090063

    goto/16 :goto_4

    .line 167
    :pswitch_d0
    const v0, 0x7f090064

    goto/16 :goto_4

    .line 115
    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_29
        :pswitch_2d
        :pswitch_31
        :pswitch_35
        :pswitch_39
        :pswitch_3d
        :pswitch_41
        :pswitch_45
        :pswitch_49
        :pswitch_4d
        :pswitch_51
        :pswitch_55
        :pswitch_59
        :pswitch_5d
        :pswitch_61
        :pswitch_65
        :pswitch_69
        :pswitch_6d
        :pswitch_71
        :pswitch_75
        :pswitch_79
        :pswitch_7d
        :pswitch_81
        :pswitch_85
        :pswitch_8a
        :pswitch_8f
        :pswitch_94
        :pswitch_99
        :pswitch_9e
        :pswitch_a3
        :pswitch_a8
        :pswitch_ad
        :pswitch_b2
        :pswitch_b7
        :pswitch_bc
        :pswitch_c1
        :pswitch_c6
        :pswitch_cb
        :pswitch_d0
    .end packed-switch
.end method

.method public static getChannelIndex(I)I
    .registers 2
    .parameter "nID"

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, getChannelIndex:I
    packed-switch p0, :pswitch_data_92

    .line 228
    :goto_4
    :pswitch_4
    return v0

    .line 175
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 176
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 177
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 178
    :pswitch_b
    const/4 v0, 0x4

    goto :goto_4

    .line 179
    :pswitch_d
    const/4 v0, 0x5

    goto :goto_4

    .line 180
    :pswitch_f
    const/4 v0, 0x6

    goto :goto_4

    .line 181
    :pswitch_11
    const/4 v0, 0x7

    goto :goto_4

    .line 182
    :pswitch_13
    const/16 v0, 0x8

    goto :goto_4

    .line 183
    :pswitch_16
    const/16 v0, 0x9

    goto :goto_4

    .line 184
    :pswitch_19
    const/16 v0, 0xa

    goto :goto_4

    .line 186
    :pswitch_1c
    const/16 v0, 0xb

    goto :goto_4

    .line 187
    :pswitch_1f
    const/16 v0, 0xc

    goto :goto_4

    .line 188
    :pswitch_22
    const/16 v0, 0xd

    goto :goto_4

    .line 189
    :pswitch_25
    const/16 v0, 0xe

    goto :goto_4

    .line 190
    :pswitch_28
    const/16 v0, 0xf

    goto :goto_4

    .line 191
    :pswitch_2b
    const/16 v0, 0x10

    goto :goto_4

    .line 192
    :pswitch_2e
    const/16 v0, 0x11

    goto :goto_4

    .line 193
    :pswitch_31
    const/16 v0, 0x12

    goto :goto_4

    .line 194
    :pswitch_34
    const/16 v0, 0x13

    goto :goto_4

    .line 195
    :pswitch_37
    const/16 v0, 0x14

    goto :goto_4

    .line 197
    :pswitch_3a
    const/16 v0, 0x15

    goto :goto_4

    .line 198
    :pswitch_3d
    const/16 v0, 0x16

    goto :goto_4

    .line 199
    :pswitch_40
    const/16 v0, 0x17

    goto :goto_4

    .line 200
    :pswitch_43
    const/16 v0, 0x18

    goto :goto_4

    .line 201
    :pswitch_46
    const/16 v0, 0x19

    goto :goto_4

    .line 202
    :pswitch_49
    const/16 v0, 0x1a

    goto :goto_4

    .line 203
    :pswitch_4c
    const/16 v0, 0x1b

    goto :goto_4

    .line 204
    :pswitch_4f
    const/16 v0, 0x1c

    goto :goto_4

    .line 205
    :pswitch_52
    const/16 v0, 0x1d

    goto :goto_4

    .line 206
    :pswitch_55
    const/16 v0, 0x1e

    goto :goto_4

    .line 208
    :pswitch_58
    const/16 v0, 0x1f

    goto :goto_4

    .line 209
    :pswitch_5b
    const/16 v0, 0x20

    goto :goto_4

    .line 210
    :pswitch_5e
    const/16 v0, 0x21

    goto :goto_4

    .line 211
    :pswitch_61
    const/16 v0, 0x22

    goto :goto_4

    .line 212
    :pswitch_64
    const/16 v0, 0x23

    goto :goto_4

    .line 213
    :pswitch_67
    const/16 v0, 0x24

    goto :goto_4

    .line 214
    :pswitch_6a
    const/16 v0, 0x25

    goto :goto_4

    .line 215
    :pswitch_6d
    const/16 v0, 0x26

    goto :goto_4

    .line 216
    :pswitch_70
    const/16 v0, 0x27

    goto :goto_4

    .line 217
    :pswitch_73
    const/16 v0, 0x28

    goto :goto_4

    .line 219
    :pswitch_76
    const/16 v0, 0x29

    goto :goto_4

    .line 220
    :pswitch_79
    const/16 v0, 0x2a

    goto :goto_4

    .line 221
    :pswitch_7c
    const/16 v0, 0x2b

    goto :goto_4

    .line 222
    :pswitch_7f
    const/16 v0, 0x2c

    goto :goto_4

    .line 223
    :pswitch_82
    const/16 v0, 0x2d

    goto :goto_4

    .line 224
    :pswitch_85
    const/16 v0, 0x2e

    goto/16 :goto_4

    .line 225
    :pswitch_89
    const/16 v0, 0x2f

    goto/16 :goto_4

    .line 226
    :pswitch_8d
    const/16 v0, 0x30

    goto/16 :goto_4

    .line 174
    nop

    :pswitch_data_92
    .packed-switch 0x7f09002e
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_4
        :pswitch_11
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_4
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_4
        :pswitch_34
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_4
        :pswitch_46
        :pswitch_49
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
        :pswitch_55
        :pswitch_4
        :pswitch_58
        :pswitch_5b
        :pswitch_5e
        :pswitch_61
        :pswitch_64
        :pswitch_67
        :pswitch_4
        :pswitch_6a
        :pswitch_6d
        :pswitch_70
        :pswitch_73
        :pswitch_76
        :pswitch_79
        :pswitch_4
        :pswitch_7c
        :pswitch_7f
        :pswitch_82
        :pswitch_85
        :pswitch_89
        :pswitch_8d
    .end packed-switch
.end method

.method public static getCurrentSoundDevice()I
    .registers 3

    .prologue
    .line 1119
    :try_start_0
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1}, Llge/android/fmradio/IFmRadioControlService;->getCurrentSoundDevice()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1124
    :goto_6
    return v1

    .line 1120
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1121
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.getCurrentSoundDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1124
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public static getRunningState()Z
    .registers 3

    .prologue
    .line 1102
    :try_start_0
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1}, Llge/android/fmradio/IFmRadioControlService;->getRunningState()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1107
    :goto_6
    return v1

    .line 1103
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1104
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.getRunningState"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1107
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public static getSystemState()I
    .registers 3

    .prologue
    .line 1082
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    if-eqz v1, :cond_17

    .line 1084
    :try_start_4
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1}, Llge/android/fmradio/IFmRadioControlService;->getSystemState()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 1090
    :goto_a
    return v1

    .line 1085
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1086
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.getSystemState"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1090
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_17
    const/16 v1, 0x3eb

    goto :goto_a
.end method

.method public static getVolumeImage(I)I
    .registers 2
    .parameter "nIndex"

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, nVolumeImageID:I
    packed-switch p0, :pswitch_data_46

    .line 251
    :goto_4
    return v0

    .line 234
    :pswitch_5
    const v0, 0x7f020059

    goto :goto_4

    .line 235
    :pswitch_9
    const v0, 0x7f02005a

    goto :goto_4

    .line 236
    :pswitch_d
    const v0, 0x7f02005b

    goto :goto_4

    .line 237
    :pswitch_11
    const v0, 0x7f02005c

    goto :goto_4

    .line 238
    :pswitch_15
    const v0, 0x7f02005d

    goto :goto_4

    .line 239
    :pswitch_19
    const v0, 0x7f02005e

    goto :goto_4

    .line 240
    :pswitch_1d
    const v0, 0x7f02005f

    goto :goto_4

    .line 241
    :pswitch_21
    const v0, 0x7f020060

    goto :goto_4

    .line 242
    :pswitch_25
    const v0, 0x7f020061

    goto :goto_4

    .line 243
    :pswitch_29
    const v0, 0x7f020062

    goto :goto_4

    .line 244
    :pswitch_2d
    const v0, 0x7f020063

    goto :goto_4

    .line 245
    :pswitch_31
    const v0, 0x7f020064

    goto :goto_4

    .line 246
    :pswitch_35
    const v0, 0x7f020065

    goto :goto_4

    .line 247
    :pswitch_39
    const v0, 0x7f020066

    goto :goto_4

    .line 248
    :pswitch_3d
    const v0, 0x7f020067

    goto :goto_4

    .line 249
    :pswitch_41
    const v0, 0x7f020068

    goto :goto_4

    .line 233
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_29
        :pswitch_2d
        :pswitch_31
        :pswitch_35
        :pswitch_39
        :pswitch_3d
        :pswitch_41
    .end packed-switch
.end method

.method public static getfrequencyImage(I)I
    .registers 8
    .parameter "nIndex"

    .prologue
    const/16 v6, 0x23f0

    const/16 v5, 0x238c

    const/16 v4, 0x2328

    const/16 v3, 0x22c4

    const/16 v2, 0x2260

    .line 255
    const/4 v0, 0x0

    .line 258
    .local v0, nVolumeImageID:I
    const/16 v1, 0x21fc

    if-lt p0, v1, :cond_15

    if-ge p0, v2, :cond_15

    .line 259
    const v0, 0x7f02006b

    .line 301
    :cond_14
    :goto_14
    return v0

    .line 260
    :cond_15
    if-lt p0, v2, :cond_1d

    if-ge p0, v3, :cond_1d

    .line 261
    const v0, 0x7f02006c

    goto :goto_14

    .line 262
    :cond_1d
    if-lt p0, v3, :cond_25

    if-ge p0, v4, :cond_25

    .line 263
    const v0, 0x7f02006d

    goto :goto_14

    .line 264
    :cond_25
    if-lt p0, v4, :cond_2d

    if-ge p0, v5, :cond_2d

    .line 265
    const v0, 0x7f02006e

    goto :goto_14

    .line 266
    :cond_2d
    if-lt p0, v5, :cond_35

    if-ge p0, v6, :cond_35

    .line 267
    const v0, 0x7f02006f

    goto :goto_14

    .line 268
    :cond_35
    if-lt p0, v6, :cond_3f

    const/16 v1, 0x2454

    if-ge p0, v1, :cond_3f

    .line 269
    const v0, 0x7f020070

    goto :goto_14

    .line 270
    :cond_3f
    const/16 v1, 0x2454

    if-lt p0, v1, :cond_4b

    const/16 v1, 0x24b8

    if-ge p0, v1, :cond_4b

    .line 271
    const v0, 0x7f020071

    goto :goto_14

    .line 272
    :cond_4b
    const/16 v1, 0x24b8

    if-lt p0, v1, :cond_57

    const/16 v1, 0x251c

    if-ge p0, v1, :cond_57

    .line 273
    const v0, 0x7f020072

    goto :goto_14

    .line 274
    :cond_57
    const/16 v1, 0x251c

    if-lt p0, v1, :cond_63

    const/16 v1, 0x2580

    if-ge p0, v1, :cond_63

    .line 275
    const v0, 0x7f020073

    goto :goto_14

    .line 276
    :cond_63
    const/16 v1, 0x2580

    if-lt p0, v1, :cond_6f

    const/16 v1, 0x25e4

    if-ge p0, v1, :cond_6f

    .line 277
    const v0, 0x7f020074

    goto :goto_14

    .line 278
    :cond_6f
    const/16 v1, 0x25e4

    if-lt p0, v1, :cond_7b

    const/16 v1, 0x2648

    if-ge p0, v1, :cond_7b

    .line 279
    const v0, 0x7f020075

    goto :goto_14

    .line 280
    :cond_7b
    const/16 v1, 0x2648

    if-lt p0, v1, :cond_87

    const/16 v1, 0x26ac

    if-ge p0, v1, :cond_87

    .line 281
    const v0, 0x7f020076

    goto :goto_14

    .line 282
    :cond_87
    const/16 v1, 0x26ac

    if-lt p0, v1, :cond_93

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_93

    .line 283
    const v0, 0x7f020077

    goto :goto_14

    .line 284
    :cond_93
    const/16 v1, 0x2710

    if-lt p0, v1, :cond_a0

    const/16 v1, 0x2774

    if-ge p0, v1, :cond_a0

    .line 285
    const v0, 0x7f020078

    goto/16 :goto_14

    .line 286
    :cond_a0
    const/16 v1, 0x2774

    if-lt p0, v1, :cond_ad

    const/16 v1, 0x27d8

    if-ge p0, v1, :cond_ad

    .line 287
    const v0, 0x7f020079

    goto/16 :goto_14

    .line 288
    :cond_ad
    const/16 v1, 0x27d8

    if-lt p0, v1, :cond_ba

    const/16 v1, 0x283c

    if-ge p0, v1, :cond_ba

    .line 289
    const v0, 0x7f02007a

    goto/16 :goto_14

    .line 290
    :cond_ba
    const/16 v1, 0x283c

    if-lt p0, v1, :cond_c7

    const/16 v1, 0x28a0

    if-ge p0, v1, :cond_c7

    .line 291
    const v0, 0x7f02007b

    goto/16 :goto_14

    .line 292
    :cond_c7
    const/16 v1, 0x28a0

    if-lt p0, v1, :cond_d4

    const/16 v1, 0x2904

    if-ge p0, v1, :cond_d4

    .line 293
    const v0, 0x7f02007c

    goto/16 :goto_14

    .line 294
    :cond_d4
    const/16 v1, 0x2904

    if-lt p0, v1, :cond_e1

    const/16 v1, 0x2968

    if-ge p0, v1, :cond_e1

    .line 295
    const v0, 0x7f02007d

    goto/16 :goto_14

    .line 296
    :cond_e1
    const/16 v1, 0x2968

    if-lt p0, v1, :cond_ee

    const/16 v1, 0x29cc

    if-ge p0, v1, :cond_ee

    .line 297
    const v0, 0x7f02007e

    goto/16 :goto_14

    .line 298
    :cond_ee
    const/16 v1, 0x29cc

    if-lt p0, v1, :cond_14

    const/16 v1, 0x2a30

    if-gt p0, v1, :cond_14

    .line 299
    const v0, 0x7f02007f

    goto/16 :goto_14
.end method

.method public static pauseArcMmpBGM(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 946
    const-string v1, "FM RADIO"

    const-string v2, "[FmRadioUtils] pauseArcMmpBGM"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    new-instance v0, Landroid/content/Intent;

    const-string v1, "arcsoft.android.arcmmp arcmmpservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 951
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 953
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 954
    return-void
.end method

.method public static pauseMusicBGM(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 934
    const-string v1, "FM RADIO"

    const-string v2, "[FmRadioUtils] pauseMusicBGM"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 939
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 941
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 942
    return-void
.end method

.method public static run()Z
    .registers 3

    .prologue
    .line 961
    :try_start_0
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1}, Llge/android/fmradio/IFmRadioControlService;->run()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 966
    :goto_6
    return v1

    .line 962
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 963
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.run "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 966
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public static runAutoScanning()V
    .registers 3

    .prologue
    .line 1042
    :try_start_0
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1}, Llge/android/fmradio/IFmRadioControlService;->runAutoScanning()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1047
    :goto_5
    return-void

    .line 1043
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1044
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.runAutoScanning"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public static runBackwardScanning()V
    .registers 3

    .prologue
    .line 1058
    :try_start_0
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1}, Llge/android/fmradio/IFmRadioControlService;->runBackwardScanning()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1063
    :goto_5
    return-void

    .line 1059
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1060
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.runBackwardScanning"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public static runCatchAutoScanning()V
    .registers 3

    .prologue
    .line 1050
    :try_start_0
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1}, Llge/android/fmradio/IFmRadioControlService;->runCatchAutoScanning()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1055
    :goto_5
    return-void

    .line 1051
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1052
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.runCatchAutoScanning"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public static runForwardScanning()V
    .registers 3

    .prologue
    .line 1066
    :try_start_0
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1}, Llge/android/fmradio/IFmRadioControlService;->runForwardScanning()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1071
    :goto_5
    return-void

    .line 1067
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1068
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.runForwardScanning"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public static runRdsMode(ZZ)V
    .registers 5
    .parameter "bRds"
    .parameter "bAF"

    .prologue
    .line 1074
    :try_start_0
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1, p0, p1}, Llge/android/fmradio/IFmRadioControlService;->runRdsMode(ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1079
    :goto_5
    return-void

    .line 1075
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1076
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.runRdsMode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public static setRunningState(Z)V
    .registers 4
    .parameter "bState"

    .prologue
    .line 1094
    :try_start_0
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1, p0}, Llge/android/fmradio/IFmRadioControlService;->setRunningState(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1099
    :goto_5
    return-void

    .line 1095
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1096
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.setRunningState"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public static stop()V
    .registers 3

    .prologue
    .line 970
    :try_start_0
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1}, Llge/android/fmradio/IFmRadioControlService;->stop()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 975
    :goto_5
    return-void

    .line 971
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 972
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.stop"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public static tuneFrequency(I)V
    .registers 4
    .parameter "nFreq"

    .prologue
    .line 1111
    :try_start_0
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1, p0}, Llge/android/fmradio/IFmRadioControlService;->tuneFrequency(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1116
    :goto_5
    return-void

    .line 1112
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1113
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.tuneFrequency"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public static tunningLeft()V
    .registers 3

    .prologue
    .line 978
    :try_start_0
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1}, Llge/android/fmradio/IFmRadioControlService;->tunningLeft()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 983
    :goto_5
    return-void

    .line 979
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 980
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.tunningLeft"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public static tunningRight()V
    .registers 3

    .prologue
    .line 986
    :try_start_0
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1}, Llge/android/fmradio/IFmRadioControlService;->tunningRight()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 991
    :goto_5
    return-void

    .line 987
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 988
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.tunningRight"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public static tunningsLeft(I)V
    .registers 4
    .parameter "nCount"

    .prologue
    .line 994
    :try_start_0
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1, p0}, Llge/android/fmradio/IFmRadioControlService;->tunningsLeft(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 999
    :goto_5
    return-void

    .line 995
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 996
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.tunningsLeft"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public static tunningsRight(I)V
    .registers 4
    .parameter "nCount"

    .prologue
    .line 1002
    :try_start_0
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1, p0}, Llge/android/fmradio/IFmRadioControlService;->tunningsRight(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1007
    :goto_5
    return-void

    .line 1003
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1004
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.tunningsRight"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public static tunningsdummyLeft()V
    .registers 3

    .prologue
    .line 1010
    :try_start_0
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1}, Llge/android/fmradio/IFmRadioControlService;->tunningsdummyLeft()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1015
    :goto_5
    return-void

    .line 1011
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1012
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.tunningsdummyLeft"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public static tunningsdummyRight()V
    .registers 3

    .prologue
    .line 1018
    :try_start_0
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1}, Llge/android/fmradio/IFmRadioControlService;->tunningsdummyRight()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1023
    :goto_5
    return-void

    .line 1019
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1020
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.tunningsdummyRight"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public static tunningsdummysLeft(I)V
    .registers 4
    .parameter "nCount"

    .prologue
    .line 1026
    :try_start_0
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1, p0}, Llge/android/fmradio/IFmRadioControlService;->tunningsdummysLeft(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1031
    :goto_5
    return-void

    .line 1027
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1028
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.tunningsdummysLeft"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public static tunningsdummysRight(I)V
    .registers 4
    .parameter "nCount"

    .prologue
    .line 1034
    :try_start_0
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    invoke-interface {v1, p0}, Llge/android/fmradio/IFmRadioControlService;->tunningsdummysRight(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1039
    :goto_5
    return-void

    .line 1035
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1036
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "FM RADIO"

    const-string v2, "[+++Error+++][FmRadioUtils] sService.tunningsdummysRight"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public static unbindFromService(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 320
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llge/android/fmradio/FmRadioUtils$ServiceBinder;

    .line 321
    .local v0, sb:Llge/android/fmradio/FmRadioUtils$ServiceBinder;
    if-nez v0, :cond_12

    .line 322
    const-string v1, "FmRadioUtils"

    const-string v2, "Trying to unbind for unknown Context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_11
    :goto_11
    return-void

    .line 325
    :cond_12
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 326
    sget-object v1, Llge/android/fmradio/FmRadioUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 329
    const/4 v1, 0x0

    sput-object v1, Llge/android/fmradio/FmRadioUtils;->sService:Llge/android/fmradio/IFmRadioControlService;

    goto :goto_11
.end method
