.class public Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;
.super Landroid/app/Service;
.source "FmRadioControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;,
        Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverSeekCompleteData;,
        Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverRdaData;,
        Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ACTION_FREQ_DOWN:Ljava/lang/String; = "lge.android.fmradio.fmradioservicecommand.down"

.field public static final ACTION_FREQ_UP:Ljava/lang/String; = "lge.android.fmradio.fmradioservicecommand.up"

.field public static final ACTION_POWER_CONTROL:Ljava/lang/String; = "lge.android.fmradio.fmradioservicecommand.power"

.field public static final ASYNC_OPEN_COMPLETE:Ljava/lang/String; = "com.android.music.asyncopencomplete"

.field private static final BOOKMARKCOLIDX:I = 0x9

.field public static final CMDFREQDOWN:Ljava/lang/String; = "frequencydown"

.field public static final CMDFREQUP:Ljava/lang/String; = "frequencyup"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDPOWER:Ljava/lang/String; = "controlpower"

.field public static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field public static final CMDSTOP:Ljava/lang/String; = "stop"

.field public static final CMDTOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field private static final FADEIN:I = 0x4

.field private static final IDCOLIDX:I = 0x0

.field private static final IDLE_DELAY:I = 0xea60

.field public static final LAST:I = 0x3

.field private static final LOGTAG:Ljava/lang/String; = "FM RADIO"

.field private static final MAX_HISTORY_SIZE:I = 0xa

.field public static final META_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field public static final NEXT:I = 0x2

.field public static final NEXT_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field public static final NOTIFY_UI_MSG_AF_STATUS:Ljava/lang/String; = "lge.android.fmradio.afstatus"

.field public static final NOTIFY_UI_MSG_AUTOSCAN_FREQ:Ljava/lang/String; = "lge.android.fmradio.autoscanfreq"

.field public static final NOTIFY_UI_MSG_COMPLETE_AUTOSCAN:Ljava/lang/String; = "lge.android.fmradio.completeautoscan"

.field public static final NOTIFY_UI_MSG_FREQ_STATUS:Ljava/lang/String; = "lge.android.fmradio.freqstatus"

.field public static final NOTIFY_UI_MSG_GET_CHANNEL_INFO_STATE:Ljava/lang/String; = "lge.android.fmradio.getchannelInfostatus"

.field public static final NOTIFY_UI_MSG_INIT_DISPLAY:Ljava/lang/String; = "lge.android.fmradio.initdisplay"

.field public static final NOTIFY_UI_MSG_MUTE_STATUS:Ljava/lang/String; = "lge.android.fmradio.mutestatus"

.field public static final NOTIFY_UI_MSG_POWER_OFF:Ljava/lang/String; = "lge.android.fmradio.poweroff"

.field public static final NOTIFY_UI_MSG_POWER_ON:Ljava/lang/String; = "lge.android.fmradio.poweron"

.field public static final NOTIFY_UI_MSG_RDS_DATA:Ljava/lang/String; = "lge.android.fmradio.rdsdata"

.field public static final NOTIFY_UI_MSG_RDS_STATUS:Ljava/lang/String; = "lge.android.fmradio.rdsstatus"

.field public static final NOTIFY_UI_MSG_SET_CHANNEL_INFO_STATE:Ljava/lang/String; = "lge.android.fmradio.setchannelinfostatus"

.field public static final NOTIFY_UI_MSG_SET_CHANNEL_NUMBER_TEXT:Ljava/lang/String; = "lge.android.fmradio.setchannelnumbertext"

.field public static final NOTIFY_UI_MSG_SIGNAL_STATUS:Ljava/lang/String; = "lge.android.fmradio.signalstatus"

.field public static final NOTIFY_UI_MSG_UPDATE_FREQ:Ljava/lang/String; = "lge.android.fmradio.updatefreq"

.field public static final NOTIFY_UI_MSG_UPDATE_RSSI:Ljava/lang/String; = "lge.android.fmradio.updaterssi"

.field public static final NOTIFY_UI_MSG_USE_HEADSET_DLG:Ljava/lang/String; = "lge.android.fmradio.useheadsetdlg"

.field public static final NOTIFY_UI_MSG_VOLUME_STATUS:Ljava/lang/String; = "lge.android.fmradio.volumestatus"

.field public static final NOTIFY_UI_MSG_WARNING_WITHOUT_EARJACK:Ljava/lang/String; = "lge.android.fmradio.warningwithoutearjack"

.field public static final NOTIFY_UI_MSG_WORLD_STATUS:Ljava/lang/String; = "lge.android.fmradio.worldstatus"

.field public static final NOW:I = 0x1

.field public static final PAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field private static final PHONE_CHANGED:I = 0x1

.field public static final PLAYBACKSERVICE_STATUS:I = 0x1

.field public static final PLAYBACK_COMPLETE:Ljava/lang/String; = "com.android.music.playbackcomplete"

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field private static final PODCASTCOLIDX:I = 0x8

.field public static final PREVIOUS_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.previous"

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.android.music.queuechanged"

.field private static final RELEASE_WAKELOCK:I = 0x2

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field private static final SERVER_DIED:I = 0x3

.field public static final SERVICECMD:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field public static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"

.field private static final TRACK_ENDED:I = 0x1


# instance fields
.field public final HANDLE_MSG_AF_STATUS:I

.field public final HANDLE_MSG_AUDIO_MODE_EVENT:I

.field public final HANDLE_MSG_AUTOSCAN_FREQ:I

.field public final HANDLE_MSG_COMPLETE_AUTOSCAN:I

.field public final HANDLE_MSG_ESTIMATE_NOISE_FLOOR_LEVEL_EVENT:I

.field public final HANDLE_MSG_FREQ_STATUS:I

.field public final HANDLE_MSG_GET_CHANNEL_INFO_STATE:I

.field public final HANDLE_MSG_INIT_DISPLAY:I

.field public final HANDLE_MSG_LIVE_AUDIO_QUALITY_EVENT:I

.field public final HANDLE_MSG_MUTE_STATUS:I

.field public final HANDLE_MSG_RDS_DATA:I

.field public final HANDLE_MSG_RDS_DATA_EVENT:I

.field public final HANDLE_MSG_RDS_MODE_EVENT:I

.field public final HANDLE_MSG_RDS_STATUS:I

.field public final HANDLE_MSG_SEEK_COMPLETE_EVENT:I

.field public final HANDLE_MSG_SET_CHANNEL_INFO_STATE:I

.field public final HANDLE_MSG_SET_CHANNEL_NUMBER_TEXT:I

.field public final HANDLE_MSG_SIGNAL_STATUS:I

.field public final HANDLE_MSG_STATUS_EVENT:I

.field public final HANDLE_MSG_USE_HEADSET_DLG:I

.field public final HANDLE_MSG_VOLUME_STATUS:I

.field public final HANDLE_MSG_WORLD_REGION_EVENT:I

.field public final HANDLE_MSG_WORLD_STATUS:I

.field public final STATE_AUTOSCAN:I

.field public final STATE_BACKWARD:I

.field public final STATE_FORWARD:I

.field public final STATE_IDLE:I

.field public final STATE_OFF:I

.field public final STATE_RUN:I

.field public final STATE_SCAN_BACKWARD:I

.field public final STATE_SCAN_FORWARD:I

.field public final STATE_STOP:I

.field private final hexdigits:[C

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShuffleList:[I

.field private final mBinder:Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;

.field private mCardId:I

.field private mCursor:Landroid/database/Cursor;

.field private mFileToPlay:Ljava/lang/String;

.field mFmRadioMgr:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

.field private mFrequencyStep:I

.field private mHistory:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mManagerHandler:Landroid/os/Handler;

.field private mMediaMountedCount:I

.field private mOneShot:Z

.field private mPhoneHandler:Landroid/os/Handler;

.field private mPlayList:[I

.field private mPlayListLen:I

.field private mPlayPos:I

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mPsir:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mQuietMode:Z

.field private mRepeatMode:I

.field private mResumeAfterCall:Z

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field private mShuffleMode:I

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWasPlaying:Z

.field private mnState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const-class v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0xa

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 386
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_INIT_DISPLAY:I

    .line 113
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_SIGNAL_STATUS:I

    .line 114
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_VOLUME_STATUS:I

    .line 115
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_MUTE_STATUS:I

    .line 116
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_FREQ_STATUS:I

    .line 117
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_WORLD_STATUS:I

    .line 118
    const/4 v0, 0x7

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_RDS_STATUS:I

    .line 119
    const/16 v0, 0x8

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_AF_STATUS:I

    .line 120
    const/16 v0, 0x9

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_RDS_DATA:I

    .line 121
    const/16 v0, 0xb

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_SET_CHANNEL_INFO_STATE:I

    .line 122
    const/16 v0, 0xc

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_GET_CHANNEL_INFO_STATE:I

    .line 123
    const/16 v0, 0xd

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_SET_CHANNEL_NUMBER_TEXT:I

    .line 124
    const/16 v0, 0xe

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_COMPLETE_AUTOSCAN:I

    .line 125
    const/16 v0, 0xf

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_AUTOSCAN_FREQ:I

    .line 126
    iput v5, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_USE_HEADSET_DLG:I

    .line 129
    const/16 v0, 0x65

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_AUDIO_MODE_EVENT:I

    .line 130
    const/16 v0, 0x66

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_ESTIMATE_NOISE_FLOOR_LEVEL_EVENT:I

    .line 131
    const/16 v0, 0x67

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_LIVE_AUDIO_QUALITY_EVENT:I

    .line 132
    const/16 v0, 0x68

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_RDS_DATA_EVENT:I

    .line 133
    const/16 v0, 0x69

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_RDS_MODE_EVENT:I

    .line 134
    const/16 v0, 0x6a

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_SEEK_COMPLETE_EVENT:I

    .line 135
    const/16 v0, 0x6b

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_STATUS_EVENT:I

    .line 136
    const/16 v0, 0x6c

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HANDLE_MSG_WORLD_REGION_EVENT:I

    .line 139
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->STATE_OFF:I

    .line 140
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->STATE_IDLE:I

    .line 141
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->STATE_RUN:I

    .line 142
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->STATE_STOP:I

    .line 143
    const/16 v0, 0x3ec

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->STATE_FORWARD:I

    .line 144
    const/16 v0, 0x3ed

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->STATE_BACKWARD:I

    .line 145
    const/16 v0, 0x3ee

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->STATE_SCAN_FORWARD:I

    .line 146
    const/16 v0, 0x3ef

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->STATE_SCAN_BACKWARD:I

    .line 147
    const/16 v0, 0x3f0

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->STATE_AUTOSCAN:I

    .line 149
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mnState:I

    .line 152
    iput-object v2, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mFmRadioMgr:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    .line 155
    iput-object v2, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mAudioManager:Landroid/media/AudioManager;

    .line 156
    iput v4, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mFrequencyStep:I

    .line 205
    iput v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mShuffleMode:I

    .line 206
    iput v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mRepeatMode:I

    .line 207
    iput v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mMediaMountedCount:I

    .line 208
    iput-object v2, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mAutoShuffleList:[I

    .line 210
    iput-object v2, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mPlayList:[I

    .line 211
    iput v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mPlayListLen:I

    .line 212
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v4}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mHistory:Ljava/util/Vector;

    .line 214
    iput v3, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mPlayPos:I

    .line 219
    iput-object v2, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    iput v3, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mServiceStartId:I

    .line 222
    iput-boolean v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mServiceInUse:Z

    .line 223
    iput-boolean v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mResumeAfterCall:Z

    .line 224
    iput-boolean v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mWasPlaying:Z

    .line 225
    iput-boolean v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mQuietMode:Z

    .line 305
    new-instance v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$1;-><init>(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mManagerHandler:Landroid/os/Handler;

    .line 322
    new-instance v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$2;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$2;-><init>(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mPhoneHandler:Landroid/os/Handler;

    .line 361
    new-instance v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$3;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$3;-><init>(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 448
    new-array v0, v5, [C

    fill-array-data v0, :array_d8

    iput-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->hexdigits:[C

    .line 2260
    new-instance v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$4;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$4;-><init>(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mBinder:Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;

    .line 387
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService]FmRadioControlService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void

    .line 448
    nop

    :array_d8
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method private HandleAudioModeEvent(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 240
    return-void
.end method

.method private HandleEstimateNoiseFloorLevelEvent(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 242
    return-void
.end method

.method private HandleLiveAudioQualityEvent(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 244
    return-void
.end method

.method private HandleRdsDataEvent(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 246
    return-void
.end method

.method private HandleRdsModeEvent(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 248
    return-void
.end method

.method private HandleSeekCompleteEvent(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 250
    const-string v1, "FM RADIO"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioControlService][HandleStatusEvent] nFreq"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverSeekCompleteData;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverSeekCompleteData;->GetFreq()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverSeekCompleteData;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverSeekCompleteData;->GetFreq()I

    move-result v0

    invoke-static {p0, v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->SetLastFreqeuncy(Landroid/content/Context;I)Z

    .line 254
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->GetRssi()I

    move-result v0

    invoke-static {p0, v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->SetLastRssi(Landroid/content/Context;I)Z

    .line 255
    const-string v0, "lge.android.fmradio.updatefreq"

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 256
    const-string v0, "lge.android.fmradio.updaterssi"

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method private HandleStatusEvent(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const-string v4, "lge.android.fmradio.updaterssi"

    const-string v3, "lge.android.fmradio.updatefreq"

    const-string v2, "FM RADIO"

    .line 260
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->GetRadioIsOn()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 261
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mnState:I

    .line 262
    const-string v0, "lge.android.fmradio.poweroff"

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 301
    :goto_19
    return-void

    .line 266
    :cond_1a
    iget v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mnState:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_4c

    .line 268
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mnState:I

    .line 269
    const-string v0, "lge.android.fmradio.poweron"

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 271
    invoke-static {p0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->GetLastFrequency(Landroid/content/Context;)I

    move-result v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->GetFreq()I

    move-result v0

    if-eq v1, v0, :cond_41

    .line 272
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mFmRadioMgr:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    invoke-static {p0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->GetLastFrequency(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->tuneFrequency(I)V

    goto :goto_19

    .line 275
    :cond_41
    const-string v0, "lge.android.fmradio.updatefreq"

    invoke-direct {p0, v3}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 276
    const-string v0, "lge.android.fmradio.updaterssi"

    invoke-direct {p0, v4}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    goto :goto_19

    .line 278
    :cond_4c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->GetFreq()I

    move-result v0

    const/16 v1, 0x222e

    if-lt v0, v1, :cond_ba

    .line 280
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->GetFreq()I

    move-result v0

    const/16 v1, 0x2a30

    if-gt v0, v1, :cond_ba

    .line 282
    const-string v0, "FM RADIO"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FmRadioControlService][HandleStatusEvent] nFreq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->GetFreq()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v0, "FM RADIO"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FmRadioControlService][HandleStatusEvent] nRssi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->GetRssi()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->GetFreq()I

    move-result v0

    invoke-static {p0, v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->SetLastFreqeuncy(Landroid/content/Context;I)Z

    .line 286
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$ReceiverStatusData;->GetRssi()I

    move-result v0

    invoke-static {p0, v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->SetLastRssi(Landroid/content/Context;I)Z

    .line 289
    :cond_ba
    const-string v0, "lge.android.fmradio.updatefreq"

    invoke-direct {p0, v3}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 290
    const-string v0, "lge.android.fmradio.updaterssi"

    invoke-direct {p0, v4}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_19
.end method

.method private HandleWorldRegionEvent(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 303
    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HandleAudioModeEvent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HandleEstimateNoiseFloorLevelEvent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HandleLiveAudioQualityEvent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HandleRdsDataEvent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HandleRdsModeEvent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HandleSeekCompleteEvent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HandleStatusEvent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->HandleWorldRegionEvent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$802(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mnState:I

    return p1
.end method

.method static synthetic access$900(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method private notifyChange(Ljava/lang/String;)V
    .registers 6
    .parameter "what"

    .prologue
    .line 763
    const-string v1, "FM RADIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FmRadioControlService] notifyChange"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 770
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->sendBroadcast(Landroid/content/Intent;)V

    .line 779
    return-void
.end method

.method private saveQueue(Z)V
    .registers 3
    .parameter "full"

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mOneShot:Z

    if-eqz v0, :cond_4

    .line 497
    :cond_4
    return-void
.end method


# virtual methods
.method public GetSystemState()Z
    .registers 3

    .prologue
    .line 937
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService]GetSystemState"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mnState:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_f

    .line 939
    const/4 v0, 0x0

    .line 941
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public Run()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const-string v3, "FM RADIO"

    .line 826
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mnState:I

    .line 828
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioControlService] Run"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mFmRadioMgr:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    if-nez v0, :cond_19

    .line 830
    new-instance v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;-><init>(Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mFmRadioMgr:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    .line 832
    :cond_19
    sget-boolean v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->$assertionsDisabled:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mFmRadioMgr:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 834
    :cond_27
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mFmRadioMgr:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    iget-object v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mManagerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->Initialize(Landroid/os/Handler;)Z

    move-result v0

    if-ne v0, v2, :cond_42

    .line 836
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mFmRadioMgr:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->Run()Z

    move-result v0

    if-ne v0, v2, :cond_3b

    move v0, v2

    .line 842
    :goto_3a
    return v0

    .line 840
    :cond_3b
    const-string v0, "FM RADIO"

    const-string v0, "+++[Error]+++[FmRadioControlService]Run"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_42
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method public RunAutoScanning()V
    .registers 3

    .prologue
    .line 920
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService]RunAutoScanning start++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mFmRadioMgr:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->runAutoScanning()V

    .line 922
    return-void
.end method

.method public RunBackwardScanning()V
    .registers 3

    .prologue
    .line 928
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService]RunBackwardScanning start++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mFmRadioMgr:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->runBackwardScanning()V

    .line 930
    return-void
.end method

.method public RunCatchAutoScanning()V
    .registers 3

    .prologue
    .line 924
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService]RunCatchAutoScanning start++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mFmRadioMgr:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->runCatchAutoScanning()V

    .line 926
    return-void
.end method

.method public RunForwardScanning()V
    .registers 3

    .prologue
    .line 933
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService]RunBackwardScanning start++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mFmRadioMgr:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->runForwardScanning()V

    .line 935
    return-void
.end method

.method public Stop()V
    .registers 3

    .prologue
    .line 846
    sget-boolean v0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->$assertionsDisabled:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mFmRadioMgr:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 847
    :cond_e
    const/16 v0, 0x3eb

    iput v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mnState:I

    .line 848
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService] Stop "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mFmRadioMgr:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->Stop()V

    .line 851
    return-void
.end method

.method public TuneFrequency(I)V
    .registers 5
    .parameter "nFreq"

    .prologue
    .line 945
    const-string v0, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioControlService]TuneFrequency"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mFmRadioMgr:Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;

    invoke-virtual {v0, p1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService$FmRadioMgr;->tuneFrequency(I)V

    .line 947
    return-void
.end method

.method public TunningLeft()V
    .registers 5

    .prologue
    const/16 v3, 0x222e

    .line 854
    const-string v1, "FM RADIO"

    const-string v2, "[FmRadioControlService] TunningLeft"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-static {p0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->GetLastFrequency(Landroid/content/Context;)I

    move-result v0

    .line 857
    .local v0, nFreq:I
    if-le v0, v3, :cond_16

    .line 860
    iget v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mFrequencyStep:I

    sub-int/2addr v0, v1

    .line 865
    :cond_12
    :goto_12
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->TuneFrequency(I)V

    .line 866
    return-void

    .line 862
    :cond_16
    if-ne v0, v3, :cond_12

    .line 863
    const/16 v0, 0x2a30

    goto :goto_12
.end method

.method public TunningRight()V
    .registers 5

    .prologue
    const/16 v3, 0x2a30

    .line 868
    const-string v1, "FM RADIO"

    const-string v2, "[FmRadioControlService] TunningRight"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-static {p0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->GetLastFrequency(Landroid/content/Context;)I

    move-result v0

    .line 871
    .local v0, nFreq:I
    if-ge v0, v3, :cond_16

    .line 874
    iget v1, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mFrequencyStep:I

    add-int/2addr v0, v1

    .line 879
    :cond_12
    :goto_12
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->TuneFrequency(I)V

    .line 880
    return-void

    .line 876
    :cond_16
    if-ne v0, v3, :cond_12

    .line 877
    const/16 v0, 0x222e

    goto :goto_12
.end method

.method public TunningsLeft(I)V
    .registers 8
    .parameter "nCount"

    .prologue
    const/16 v5, 0x222e

    .line 882
    const-string v2, "FM RADIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FmRadioControlService] TunningsLeft"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    sget-boolean v2, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->$assertionsDisabled:Z

    if-nez v2, :cond_26

    if-nez p1, :cond_26

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 885
    :cond_26
    invoke-static {p0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->GetLastFrequency(Landroid/content/Context;)I

    move-result v1

    .line 886
    .local v1, nFreq:I
    if-le v1, v5, :cond_39

    .line 888
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2d
    if-ge v0, p1, :cond_3d

    .line 889
    iget v2, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mFrequencyStep:I

    sub-int/2addr v1, v2

    .line 890
    if-ne v1, v5, :cond_36

    .line 891
    const/16 v1, 0x2a30

    .line 888
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 894
    .end local v0           #i:I
    :cond_39
    if-ne v1, v5, :cond_3d

    .line 895
    const/16 v1, 0x2a30

    .line 897
    :cond_3d
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->TuneFrequency(I)V

    .line 898
    return-void
.end method

.method public TunningsRight(I)V
    .registers 8
    .parameter "nCount"

    .prologue
    const/16 v5, 0x2a30

    .line 901
    const-string v2, "FM RADIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FmRadioControlService] TunningsRight"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    sget-boolean v2, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->$assertionsDisabled:Z

    if-nez v2, :cond_26

    if-nez p1, :cond_26

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 903
    :cond_26
    invoke-static {p0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->GetLastFrequency(Landroid/content/Context;)I

    move-result v1

    .line 904
    .local v1, nFreq:I
    if-ge v1, v5, :cond_39

    .line 906
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2d
    if-ge v0, p1, :cond_3d

    .line 907
    iget v2, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mFrequencyStep:I

    add-int/2addr v1, v2

    .line 908
    if-ne v1, v5, :cond_36

    .line 909
    const/16 v1, 0x222e

    .line 906
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 913
    .end local v0           #i:I
    :cond_39
    if-ne v1, v5, :cond_3d

    .line 914
    const/16 v1, 0x222e

    .line 916
    :cond_3d
    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->TuneFrequency(I)V

    .line 917
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 614
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService] onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v0, p0, Lcom/lge/hiddenmenu/fmradiotest/FmRadioControlService;->mBinder:Lcom/lge/hiddenmenu/fmradiotest/IFmRadioControlService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 395
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 397
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService] onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 443
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService] onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 446
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 620
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 6
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v2, 0x1

    const-string v1, "FM RADIO"

    .line 625
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioControlService] onStart"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-static {p0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->IsWiredHeadsetOn(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v2, :cond_1d

    .line 630
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioControlService][Initialize] Headset Mode !!"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/16 v0, 0x400

    invoke-static {p0, v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->SetAudioRouting(Landroid/content/Context;I)V

    .line 671
    :cond_1c
    :goto_1c
    return-void

    .line 633
    :cond_1d
    invoke-static {p0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->IsBluetoothA2dpOn(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v2, :cond_1c

    .line 634
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioControlService][Initialize] isBluetoothA2dpOn !!"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/lge/hiddenmenu/fmradiotest/FmRadioUtils;->SetAudioRouting(Landroid/content/Context;I)V

    goto :goto_1c
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4
    .parameter "intent"

    .prologue
    .line 675
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService] onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/4 v0, 0x1

    return v0
.end method
