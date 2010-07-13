.class public Llge/android/fmradio/FmRadioControlService;
.super Landroid/app/Service;
.source "FmRadioControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;,
        Llge/android/fmradio/FmRadioControlService$ReceiverSeekCompleteData;,
        Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;,
        Llge/android/fmradio/FmRadioControlService$FmRadioMgr;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ACTION_FREQ_DOWN:Ljava/lang/String; = "lge.android.fmradio.fmradioservicecommand.frequencydown"

.field public static final ACTION_FREQ_UP:Ljava/lang/String; = "lge.android.fmradio.fmradioservicecommand.frequencyup"

.field public static final ACTION_POWER_CONTROL:Ljava/lang/String; = "lge.android.fmradio.fmradioservicecommand.controlpower"

.field public static final ACTION_POWER_SPEAKER_CONTROL:Ljava/lang/String; = "lge.android.fmradio.fmradioservicecommand.Speakercontrol"

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

.field public static final FMRADIO_ACTION_BLUETOOTH_DISABLE:Ljava/lang/String; = "android.bluetooth.intent.action.REMOTE_DEVICE_DISCONNECTED"

.field public static final FMRADIO_ACTION_BLUETOOTH_ENABLE:Ljava/lang/String; = "android.bluetooth.intent.action.REMOTE_DEVICE_CONNECTED"

.field private static final IDCOLIDX:I = 0x0

.field private static final IDLE_DELAY:I = 0xea60

.field public static final LAST:I = 0x3

.field private static final LOGRDSTAG:Ljava/lang/String; = "RDS"

.field private static final LOGTAG:Ljava/lang/String; = "FM RADIO"

.field private static final MAX_HISTORY_SIZE:I = 0xa

.field public static final META_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field public static final NEXT:I = 0x2

.field public static final NEXT_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field public static final NOTIFY_UI_MSG_AF_STATUS:Ljava/lang/String; = "lge.android.fmradio.afstatus"

.field public static final NOTIFY_UI_MSG_AIR_PLAIN_MODE:Ljava/lang/String; = "lge.android.fmradio.airplainmode"

.field public static final NOTIFY_UI_MSG_AUTOSCAN_FREQ:Ljava/lang/String; = "lge.android.fmradio.autoscanfreq"

.field public static final NOTIFY_UI_MSG_BLUETOOTH_MODE:Ljava/lang/String; = "lge.android.fmradio.bluetoothmode"

.field public static final NOTIFY_UI_MSG_COMPLETE_AUTOSCAN:Ljava/lang/String; = "lge.android.fmradio.completeautoscan"

.field public static final NOTIFY_UI_MSG_FREQ_STATUS:Ljava/lang/String; = "lge.android.fmradio.freqstatus"

.field public static final NOTIFY_UI_MSG_GET_CHANNEL_INFO_STATE:Ljava/lang/String; = "lge.android.fmradio.getchannelInfostatus"

.field public static final NOTIFY_UI_MSG_INIT_DISPLAY:Ljava/lang/String; = "lge.android.fmradio.initdisplay"

.field public static final NOTIFY_UI_MSG_LISTENVIA_OUTPUT_SOUND:Ljava/lang/String; = "lge.android.fmradio.listenviaoutputsound"

.field public static final NOTIFY_UI_MSG_MUTE_STATUS:Ljava/lang/String; = "lge.android.fmradio.mutestatus"

.field public static final NOTIFY_UI_MSG_OUTPUT_SOUND:Ljava/lang/String; = "lge.android.fmradio.outputsound"

.field public static final NOTIFY_UI_MSG_POWER:Ljava/lang/String; = "lge.android.fmradio.power"

.field public static final NOTIFY_UI_MSG_RDS_DATA:Ljava/lang/String; = "lge.android.fmradio.rdsdata"

.field public static final NOTIFY_UI_MSG_RDS_STATUS:Ljava/lang/String; = "lge.android.fmradio.rdsstatus"

.field public static final NOTIFY_UI_MSG_SET_CHANNEL_INFO_STATE:Ljava/lang/String; = "lge.android.fmradio.setchannelinfostatus"

.field public static final NOTIFY_UI_MSG_SET_CHANNEL_NUMBER_TEXT:Ljava/lang/String; = "lge.android.fmradio.setchannelnumbertext"

.field public static final NOTIFY_UI_MSG_SIGNAL_STATUS:Ljava/lang/String; = "lge.android.fmradio.signalstatus"

.field public static final NOTIFY_UI_MSG_UPDATE_FREQ:Ljava/lang/String; = "lge.android.fmradio.updatefreq"

.field public static final NOTIFY_UI_MSG_UPDATE_FREQ_DOT:Ljava/lang/String; = "lge.android.fmradio.updatefreqdot"

.field public static final NOTIFY_UI_MSG_UPDATE_RSSI:Ljava/lang/String; = "lge.android.fmradio.updaterssi"

.field public static final NOTIFY_UI_MSG_USE_HEADSET_DLG:Ljava/lang/String; = "lge.android.fmradio.useheadsetdlg"

.field public static final NOTIFY_UI_MSG_VOLUME_STATUS:Ljava/lang/String; = "lge.android.fmradio.volumestatus"

.field public static final NOTIFY_UI_MSG_WARNING_HEADSET_UNPLUG:Ljava/lang/String; = "lge.android.fmradio.headsetremoved"

.field public static final NOTIFY_UI_MSG_WARNING_WITHOUT_EARJACK:Ljava/lang/String; = "lge.android.fmradio.warningwithoutearjack"

.field public static final NOTIFY_UI_MSG_WITHOUT_HEADSET:Ljava/lang/String; = "lge.android.fmradio.withoutheadset"

.field public static final NOTIFY_UI_MSG_WORLD_STATUS:Ljava/lang/String; = "lge.android.fmradio.worldstatus"

.field public static final NOW:I = 0x1

.field public static final PAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.pause"

.field public static final PLAYBACKFMRADIOSERVICE_STATUS:I = 0x1

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

.field private static mnReferenceCount:I


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

.field public final PTY_CODE_ALARM:I

.field public final PTY_CODE_ALARM_TEST:I

.field public final PTY_CODE_CHILDRENS_PROGRAMS:I

.field public final PTY_CODE_CONUNTRY_MUSIC:I

.field public final PTY_CODE_CULTURE:I

.field public final PTY_CODE_CURRENT_AFFAIRS:I

.field public final PTY_CODE_DOCUMENTARY:I

.field public final PTY_CODE_DRAMA:I

.field public final PTY_CODE_EDUCATIOIN:I

.field public final PTY_CODE_FINANCE:I

.field public final PTY_CODE_FOLK_MUSIC:I

.field public final PTY_CODE_INFORMATION:I

.field public final PTY_CODE_JAZZ_MUSIC:I

.field public final PTY_CODE_LEISURE:I

.field public final PTY_CODE_LIGHT_CLASSICAL:I

.field public final PTY_CODE_MOR_MUSIC:I

.field public final PTY_CODE_NATIONAL_MUSIC:I

.field public final PTY_CODE_NEWS:I

.field public final PTY_CODE_NO_PROGRAM_OR_UNDEFINED:I

.field public final PTY_CODE_OLDIES_MUSIC:I

.field public final PTY_CODE_OTHER_MUSIC:I

.field public final PTY_CODE_PHONE_IN:I

.field public final PTY_CODE_POP_MUSIC:I

.field public final PTY_CODE_RELIGION:I

.field public final PTY_CODE_ROCK_MUSIC:I

.field public final PTY_CODE_SCIENCE:I

.field public final PTY_CODE_SERIOUS_CLASSICAL:I

.field public final PTY_CODE_SOCIAL_AFFAIRS:I

.field public final PTY_CODE_SPORT:I

.field public final PTY_CODE_TRAVEL:I

.field public final PTY_CODE_VARIED:I

.field public final PTY_CODE_WEATHER:I

.field public final STATE_AUTOSCAN:I

.field public final STATE_BACKWARD:I

.field public final STATE_FORWARD:I

.field public final STATE_SCAN_BACKWARD:I

.field public final STATE_SCAN_FORWARD:I

.field private final hexdigits:[C

.field private mAppWidgetProvider:Llge/android/fmradio/FmRadioWidgetProvider;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShuffleList:[I

.field private mBatteryPlugged:I

.field private final mBinder:Llge/android/fmradio/IFmRadioControlService$Stub;

.field private mCardId:I

.field private mChannelPrefs:Landroid/content/SharedPreferences;

.field private mCurrentChannelPrefs:Landroid/content/SharedPreferences;

.field private mCursor:Landroid/database/Cursor;

.field private mFileToPlay:Ljava/lang/String;

.field mFirstRunnable:Ljava/lang/Runnable;

.field public mFirstTimeHandler:Landroid/os/Handler;

.field mFmRadioMgr:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

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

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlayList:[I

.field private mPlayListLen:I

.field private mPlayPos:I

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mQuietMode:Z

.field private mRadioInfoPrefs:Landroid/content/SharedPreferences;

.field private mRepeatMode:I

.field private mResumeAfterCall:Z

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field private mShuffleMode:I

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWasPlaying:Z

.field private mbSystemRunningFlag:Z

.field private mnOutputSound:I

.field private mnState:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 77
    const-class v0, Llge/android/fmradio/FmRadioControlService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Llge/android/fmradio/FmRadioControlService;->$assertionsDisabled:Z

    .line 289
    sput v1, Llge/android/fmradio/FmRadioControlService;->mnReferenceCount:I

    return-void

    :cond_f
    move v0, v1

    .line 77
    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    const/16 v4, 0x10

    const/16 v3, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 813
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_INIT_DISPLAY:I

    .line 126
    const/4 v0, 0x2

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_SIGNAL_STATUS:I

    .line 127
    const/4 v0, 0x3

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_VOLUME_STATUS:I

    .line 128
    const/4 v0, 0x4

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_MUTE_STATUS:I

    .line 129
    const/4 v0, 0x5

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_FREQ_STATUS:I

    .line 130
    const/4 v0, 0x6

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_WORLD_STATUS:I

    .line 131
    const/4 v0, 0x7

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_RDS_STATUS:I

    .line 132
    const/16 v0, 0x8

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_AF_STATUS:I

    .line 133
    const/16 v0, 0x9

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_RDS_DATA:I

    .line 134
    const/16 v0, 0xb

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_SET_CHANNEL_INFO_STATE:I

    .line 135
    const/16 v0, 0xc

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_GET_CHANNEL_INFO_STATE:I

    .line 136
    const/16 v0, 0xd

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_SET_CHANNEL_NUMBER_TEXT:I

    .line 137
    const/16 v0, 0xe

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_COMPLETE_AUTOSCAN:I

    .line 138
    const/16 v0, 0xf

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_AUTOSCAN_FREQ:I

    .line 139
    iput v4, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_USE_HEADSET_DLG:I

    .line 142
    const/16 v0, 0x65

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_AUDIO_MODE_EVENT:I

    .line 143
    const/16 v0, 0x66

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_ESTIMATE_NOISE_FLOOR_LEVEL_EVENT:I

    .line 144
    const/16 v0, 0x67

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_LIVE_AUDIO_QUALITY_EVENT:I

    .line 145
    const/16 v0, 0x68

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_RDS_DATA_EVENT:I

    .line 146
    const/16 v0, 0x69

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_RDS_MODE_EVENT:I

    .line 147
    const/16 v0, 0x6a

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_SEEK_COMPLETE_EVENT:I

    .line 148
    const/16 v0, 0x6b

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_STATUS_EVENT:I

    .line 149
    const/16 v0, 0x6c

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->HANDLE_MSG_WORLD_REGION_EVENT:I

    .line 153
    iput v1, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_NO_PROGRAM_OR_UNDEFINED:I

    .line 154
    const/4 v0, 0x1

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_NEWS:I

    .line 155
    const/4 v0, 0x2

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_CURRENT_AFFAIRS:I

    .line 156
    const/4 v0, 0x3

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_INFORMATION:I

    .line 157
    const/4 v0, 0x4

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_SPORT:I

    .line 158
    const/4 v0, 0x5

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_EDUCATIOIN:I

    .line 159
    const/4 v0, 0x6

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_DRAMA:I

    .line 160
    const/4 v0, 0x7

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_CULTURE:I

    .line 161
    const/16 v0, 0x8

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_SCIENCE:I

    .line 162
    const/16 v0, 0x9

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_VARIED:I

    .line 163
    iput v3, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_POP_MUSIC:I

    .line 164
    const/16 v0, 0xb

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_ROCK_MUSIC:I

    .line 165
    const/16 v0, 0xc

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_MOR_MUSIC:I

    .line 166
    const/16 v0, 0xd

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_LIGHT_CLASSICAL:I

    .line 167
    const/16 v0, 0xe

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_SERIOUS_CLASSICAL:I

    .line 168
    const/16 v0, 0xf

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_OTHER_MUSIC:I

    .line 169
    iput v4, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_WEATHER:I

    .line 170
    const/16 v0, 0x11

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_FINANCE:I

    .line 171
    const/16 v0, 0x12

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_CHILDRENS_PROGRAMS:I

    .line 172
    const/16 v0, 0x13

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_SOCIAL_AFFAIRS:I

    .line 173
    const/16 v0, 0x14

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_RELIGION:I

    .line 174
    const/16 v0, 0x15

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_PHONE_IN:I

    .line 175
    const/16 v0, 0x16

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_TRAVEL:I

    .line 176
    const/16 v0, 0x17

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_LEISURE:I

    .line 177
    const/16 v0, 0x18

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_JAZZ_MUSIC:I

    .line 178
    const/16 v0, 0x19

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_CONUNTRY_MUSIC:I

    .line 179
    const/16 v0, 0x1a

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_NATIONAL_MUSIC:I

    .line 180
    const/16 v0, 0x1b

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_OLDIES_MUSIC:I

    .line 181
    const/16 v0, 0x1c

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_FOLK_MUSIC:I

    .line 182
    const/16 v0, 0x1d

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_DOCUMENTARY:I

    .line 183
    const/16 v0, 0x1e

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_ALARM_TEST:I

    .line 184
    const/16 v0, 0x1f

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->PTY_CODE_ALARM:I

    .line 193
    const/16 v0, 0x3ec

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->STATE_FORWARD:I

    .line 194
    const/16 v0, 0x3ed

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->STATE_BACKWARD:I

    .line 195
    const/16 v0, 0x3ee

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->STATE_SCAN_FORWARD:I

    .line 196
    const/16 v0, 0x3ef

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->STATE_SCAN_BACKWARD:I

    .line 197
    const/16 v0, 0x3f0

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->STATE_AUTOSCAN:I

    .line 200
    const/16 v0, 0x3eb

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->mnState:I

    .line 201
    iput-boolean v1, p0, Llge/android/fmradio/FmRadioControlService;->mbSystemRunningFlag:Z

    .line 203
    const/16 v0, 0xc8

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->mnOutputSound:I

    .line 206
    iput-object v2, p0, Llge/android/fmradio/FmRadioControlService;->mFmRadioMgr:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    .line 209
    iput-object v2, p0, Llge/android/fmradio/FmRadioControlService;->mAudioManager:Landroid/media/AudioManager;

    .line 210
    iput v3, p0, Llge/android/fmradio/FmRadioControlService;->mFrequencyStep:I

    .line 265
    iput v1, p0, Llge/android/fmradio/FmRadioControlService;->mShuffleMode:I

    .line 266
    iput v1, p0, Llge/android/fmradio/FmRadioControlService;->mRepeatMode:I

    .line 267
    iput v1, p0, Llge/android/fmradio/FmRadioControlService;->mMediaMountedCount:I

    .line 268
    iput-object v2, p0, Llge/android/fmradio/FmRadioControlService;->mAutoShuffleList:[I

    .line 270
    iput-object v2, p0, Llge/android/fmradio/FmRadioControlService;->mPlayList:[I

    .line 271
    iput v1, p0, Llge/android/fmradio/FmRadioControlService;->mPlayListLen:I

    .line 272
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mHistory:Ljava/util/Vector;

    .line 274
    iput v5, p0, Llge/android/fmradio/FmRadioControlService;->mPlayPos:I

    .line 281
    iput-object v2, p0, Llge/android/fmradio/FmRadioControlService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 283
    iput v5, p0, Llge/android/fmradio/FmRadioControlService;->mServiceStartId:I

    .line 284
    iput-boolean v1, p0, Llge/android/fmradio/FmRadioControlService;->mServiceInUse:Z

    .line 285
    iput-boolean v1, p0, Llge/android/fmradio/FmRadioControlService;->mResumeAfterCall:Z

    .line 286
    iput-boolean v1, p0, Llge/android/fmradio/FmRadioControlService;->mWasPlaying:Z

    .line 287
    iput-boolean v1, p0, Llge/android/fmradio/FmRadioControlService;->mQuietMode:Z

    .line 292
    iput-object v2, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    .line 293
    iput-object v2, p0, Llge/android/fmradio/FmRadioControlService;->mChannelPrefs:Landroid/content/SharedPreferences;

    .line 294
    iput-object v2, p0, Llge/android/fmradio/FmRadioControlService;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    .line 302
    invoke-static {}, Llge/android/fmradio/FmRadioWidgetProvider;->getInstance()Llge/android/fmradio/FmRadioWidgetProvider;

    move-result-object v0

    iput-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mAppWidgetProvider:Llge/android/fmradio/FmRadioWidgetProvider;

    .line 431
    new-instance v0, Llge/android/fmradio/FmRadioControlService$1;

    invoke-direct {v0, p0}, Llge/android/fmradio/FmRadioControlService$1;-><init>(Llge/android/fmradio/FmRadioControlService;)V

    iput-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mManagerHandler:Landroid/os/Handler;

    .line 448
    new-instance v0, Llge/android/fmradio/FmRadioControlService$2;

    invoke-direct {v0, p0}, Llge/android/fmradio/FmRadioControlService$2;-><init>(Llge/android/fmradio/FmRadioControlService;)V

    iput-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 500
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mFirstTimeHandler:Landroid/os/Handler;

    .line 502
    new-instance v0, Llge/android/fmradio/FmRadioControlService$3;

    invoke-direct {v0, p0}, Llge/android/fmradio/FmRadioControlService$3;-><init>(Llge/android/fmradio/FmRadioControlService;)V

    iput-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mFirstRunnable:Ljava/lang/Runnable;

    .line 580
    new-instance v0, Llge/android/fmradio/FmRadioControlService$4;

    invoke-direct {v0, p0}, Llge/android/fmradio/FmRadioControlService$4;-><init>(Llge/android/fmradio/FmRadioControlService;)V

    iput-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 921
    new-array v0, v4, [C

    fill-array-data v0, :array_15a

    iput-object v0, p0, Llge/android/fmradio/FmRadioControlService;->hexdigits:[C

    .line 3102
    new-instance v0, Llge/android/fmradio/FmRadioControlService$5;

    invoke-direct {v0, p0}, Llge/android/fmradio/FmRadioControlService$5;-><init>(Llge/android/fmradio/FmRadioControlService;)V

    iput-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mBinder:Llge/android/fmradio/IFmRadioControlService$Stub;

    .line 814
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService]FmRadioControlService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return-void

    .line 921
    :array_15a
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
    .line 309
    return-void
.end method

.method private HandleEstimateNoiseFloorLevelEvent(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 311
    return-void
.end method

.method private HandleLiveAudioQualityEvent(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 313
    return-void
.end method

.method private HandleRdsDataEvent(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 315
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService][HandleRdsDataEvent]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;

    if-eqz v0, :cond_2d

    .line 319
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;->GetRdsDataTyep()I

    move-result v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;->GetRdsIndex()I

    move-result v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService$ReceiverRdaData;->GetRdsText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v2, v0}, Llge/android/fmradio/FmRadioUtils;->SetRdsData(Landroid/content/Context;IILjava/lang/String;)Z

    .line 323
    const-string v0, "lge.android.fmradio.rdsdata"

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 327
    :cond_2d
    return-void
.end method

.method private HandleRdsModeEvent(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const-string v2, "FM RADIO"

    .line 329
    const-string v0, "FM RADIO"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FmRadioControlService][HandleRdsModeEvent] arg1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v0, "FM RADIO"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FmRadioControlService][HandleRdsModeEvent] arg2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0}, Llge/android/fmradio/FmRadioUtils;->SetRdsState(Landroid/content/Context;I)Z

    .line 333
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0}, Llge/android/fmradio/FmRadioUtils;->SetAfState(Landroid/content/Context;I)Z

    .line 335
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_47

    .line 336
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->ReSetRdsAllData(Landroid/content/Context;)V

    .line 339
    :cond_47
    const-string v0, "lge.android.fmradio.rdsdata"

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method private HandleSeekCompleteEvent(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 343
    const-string v1, "FM RADIO"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioControlService][HandleStatusEvent] nFreq"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Llge/android/fmradio/FmRadioControlService$ReceiverSeekCompleteData;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService$ReceiverSeekCompleteData;->GetFreq()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Llge/android/fmradio/FmRadioControlService$ReceiverSeekCompleteData;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService$ReceiverSeekCompleteData;->GetFreq()I

    move-result v0

    invoke-static {v1, v0}, Llge/android/fmradio/FmRadioUtils;->SetLastFreqeuncy(Landroid/content/SharedPreferences;I)Z

    .line 350
    const-string v0, "lge.android.fmradio.updatefreq"

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method private HandleStatusEvent(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const-string v7, "lge.android.fmradio.updatefreq"

    const-string v6, "lge.android.fmradio.rdsdata"

    const-string v4, "lge.android.fmradio.power"

    const-string v3, "FM RADIO"

    const-string v5, "lge.android.fmradio.outputsound"

    .line 356
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;

    if-eqz v1, :cond_42

    .line 358
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->GetRadioIsOn()Z

    move-result v1

    if-nez v1, :cond_43

    .line 359
    const/16 v1, 0x3eb

    iput v1, p0, Llge/android/fmradio/FmRadioControlService;->mnState:I

    .line 361
    iget-boolean v1, p0, Llge/android/fmradio/FmRadioControlService;->mWasPlaying:Z

    if-eqz v1, :cond_35

    .line 362
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioControlService][HandleStatusEvent] mWasPlaying"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioControlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 364
    .local v0, nm:Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 366
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_35
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->CloseAudioDevice(Landroid/content/Context;)V

    .line 367
    const-string v1, "lge.android.fmradio.power"

    invoke-direct {p0, v4}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 368
    const-string v1, "lge.android.fmradio.outputsound"

    invoke-direct {p0, v5}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 427
    :cond_42
    :goto_42
    return-void

    .line 372
    :cond_43
    iget v1, p0, Llge/android/fmradio/FmRadioControlService;->mnState:I

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_b4

    .line 375
    const/16 v1, 0x3e9

    iput v1, p0, Llge/android/fmradio/FmRadioControlService;->mnState:I

    .line 376
    const-string v1, "lge.android.fmradio.power"

    invoke-direct {p0, v4}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->GetFreq()I

    move-result v1

    if-eq v2, v1, :cond_73

    .line 380
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mFmRadioMgr:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v2

    invoke-virtual {v1, v2}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->tuneFrequency(I)V

    .line 381
    const-string v1, "lge.android.fmradio.outputsound"

    invoke-direct {p0, v5}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    goto :goto_42

    .line 386
    :cond_73
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mFmRadioMgr:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v2

    invoke-virtual {v1, v2}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->tuneFrequency(I)V

    .line 390
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->CreateAudioDevice(Landroid/content/Context;)V

    .line 391
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->GetRdsProgramType()I

    move-result v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->GetRdsProgramService()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->GetRdsRadioText()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->GetRdsProgramTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v3, v4, v1}, Llge/android/fmradio/FmRadioUtils;->SetProgramData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 396
    const-string v1, "lge.android.fmradio.updatefreq"

    invoke-direct {p0, v7}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 398
    const-string v1, "lge.android.fmradio.rdsdata"

    invoke-direct {p0, v6}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 399
    const-string v1, "lge.android.fmradio.outputsound"

    invoke-direct {p0, v5}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    goto :goto_42

    .line 402
    :cond_b4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->GetFreq()I

    move-result v1

    const/16 v2, 0x222e

    if-lt v1, v2, :cond_fc

    .line 404
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->GetFreq()I

    move-result v1

    const/16 v2, 0x2a30

    if-gt v1, v2, :cond_fc

    .line 406
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioControlService][HandleStatusEvent] nFreq"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->GetFreq()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->CreateAudioDevice(Landroid/content/Context;)V

    .line 410
    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->GetFreq()I

    move-result v1

    invoke-static {v2, v1}, Llge/android/fmradio/FmRadioUtils;->SetLastFreqeuncy(Landroid/content/SharedPreferences;I)Z

    .line 415
    :cond_fc
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->GetRdsProgramType()I

    move-result v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->GetRdsProgramService()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->GetRdsRadioText()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->GetRdsProgramTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v3, v4, v1}, Llge/android/fmradio/FmRadioUtils;->SetProgramData(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 419
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioControlService$ReceiverStatusData;->GetRssi()I

    move-result v1

    invoke-static {p0, v1}, Llge/android/fmradio/FmRadioUtils;->SetLastRssi(Landroid/content/Context;I)Z

    .line 420
    invoke-direct {p0}, Llge/android/fmradio/FmRadioControlService;->SetNotification()V

    .line 422
    const-string v1, "lge.android.fmradio.updatefreq"

    invoke-direct {p0, v7}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 424
    const-string v1, "lge.android.fmradio.rdsdata"

    invoke-direct {p0, v6}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_42
.end method

.method private HandleWorldRegionEvent(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 429
    return-void
.end method

.method private IsWiredHeadsetOn()Z
    .registers 2

    .prologue
    .line 497
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioControlService;->GetSystemState()I

    move-result v0

    invoke-static {p0, v0}, Llge/android/fmradio/FmRadioUtils;->IsWiredHeadsetOn(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method private SetAudioDevice(ILjava/lang/String;)V
    .registers 5
    .parameter "nDevice"
    .parameter "cNotify"

    .prologue
    .line 1385
    sparse-switch p1, :sswitch_data_26

    .line 1399
    :cond_3
    :goto_3
    :sswitch_3
    iput p1, p0, Llge/android/fmradio/FmRadioControlService;->mnOutputSound:I

    .line 1400
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mAppWidgetProvider:Llge/android/fmradio/FmRadioWidgetProvider;

    if-eqz v0, :cond_17

    .line 1401
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mAppWidgetProvider:Llge/android/fmradio/FmRadioWidgetProvider;

    invoke-virtual {v0, p0}, Llge/android/fmradio/FmRadioWidgetProvider;->haswidgetInstances(Llge/android/fmradio/FmRadioControlService;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 1403
    const-string v0, "lge.android.fmradio.headsetremoved"

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 1406
    :cond_17
    invoke-direct {p0, p2}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 1407
    return-void

    .line 1391
    :sswitch_1b
    iget v0, p0, Llge/android/fmradio/FmRadioControlService;->mnState:I

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_3

    .line 1392
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->SetWiredHeadsetOn(Landroid/content/Context;)V

    goto :goto_3

    .line 1385
    nop

    :sswitch_data_26
    .sparse-switch
        0x64 -> :sswitch_3
        0xc8 -> :sswitch_1b
    .end sparse-switch
.end method

.method private SetAudioFromDevice(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    const-string v2, "FM RADIO"

    .line 1371
    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1c

    .line 1372
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioView][BroadcastReceiver] Intent.ACTION_HEADSET_PLUG : unplug"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    const/16 v0, 0x64

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->mnOutputSound:I

    .line 1381
    :goto_16
    const-string v0, "lge.android.fmradio.outputsound"

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 1382
    return-void

    .line 1377
    :cond_1c
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioView][BroadcastReceiver] Intent.ACTION_HEADSET_PLUG : plug"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    const/16 v0, 0xc8

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->mnOutputSound:I

    goto :goto_16
.end method

.method private SetNotification()V
    .registers 12

    .prologue
    const v9, 0x7f0200a2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "com.android.music.PLAYBACK_FMRADIO"

    .line 1092
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Llge/android/fmradio/FmRadioControlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1097
    .local v0, nm:Landroid/app/NotificationManager;
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Llge/android/fmradio/FmRadioControlService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030006

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1098
    .local v3, views:Landroid/widget/RemoteViews;
    const v4, 0x7f090069

    invoke-virtual {v3, v4, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1100
    const v4, 0x7f09006a

    const/high16 v5, 0x7f07

    invoke-virtual {p0, v5}, Llge/android/fmradio/FmRadioControlService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1101
    const v4, 0x7f09006b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Llge/android/fmradio/FmRadioControlService;->getDisplayFreqency()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " MHz"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1103
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.music.PLAYBACK_FMRADIO"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v2, statusintent:Landroid/content/Intent;
    const/high16 v4, 0x400

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1105
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1106
    .local v1, status:Landroid/app/Notification;
    iput-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1107
    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 1108
    iput v9, v1, Landroid/app/Notification;->icon:I

    .line 1109
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.music.PLAYBACK_FMRADIO"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v7, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1111
    invoke-virtual {v0, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1112
    iget-boolean v4, p0, Llge/android/fmradio/FmRadioControlService;->mWasPlaying:Z

    if-nez v4, :cond_7e

    .line 1113
    const-string v4, "com.android.music.playstatechanged"

    invoke-direct {p0, v4}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 1115
    :cond_7e
    iput-boolean v8, p0, Llge/android/fmradio/FmRadioControlService;->mWasPlaying:Z

    .line 1116
    return-void
.end method

.method static synthetic access$000(Llge/android/fmradio/FmRadioControlService;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioControlService;->HandleAudioModeEvent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Llge/android/fmradio/FmRadioControlService;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioControlService;->HandleEstimateNoiseFloorLevelEvent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1000(Llge/android/fmradio/FmRadioControlService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Llge/android/fmradio/FmRadioControlService;->mnState:I

    return v0
.end method

.method static synthetic access$1002(Llge/android/fmradio/FmRadioControlService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Llge/android/fmradio/FmRadioControlService;->mnState:I

    return p1
.end method

.method static synthetic access$1100()I
    .registers 1

    .prologue
    .line 77
    sget v0, Llge/android/fmradio/FmRadioControlService;->mnReferenceCount:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 77
    sput p0, Llge/android/fmradio/FmRadioControlService;->mnReferenceCount:I

    return p0
.end method

.method static synthetic access$1108()I
    .registers 2

    .prologue
    .line 77
    sget v0, Llge/android/fmradio/FmRadioControlService;->mnReferenceCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Llge/android/fmradio/FmRadioControlService;->mnReferenceCount:I

    return v0
.end method

.method static synthetic access$1200(Llge/android/fmradio/FmRadioControlService;)Llge/android/fmradio/FmRadioWidgetProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mAppWidgetProvider:Llge/android/fmradio/FmRadioWidgetProvider;

    return-object v0
.end method

.method static synthetic access$1300(Llge/android/fmradio/FmRadioControlService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Llge/android/fmradio/FmRadioControlService;ILjava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Llge/android/fmradio/FmRadioControlService;->SetAudioDevice(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Llge/android/fmradio/FmRadioControlService;)Llge/android/fmradio/IFmRadioControlService$Stub;
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mBinder:Llge/android/fmradio/IFmRadioControlService$Stub;

    return-object v0
.end method

.method static synthetic access$1600(Llge/android/fmradio/FmRadioControlService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioControlService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$1700(Llge/android/fmradio/FmRadioControlService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Llge/android/fmradio/FmRadioControlService;->mBatteryPlugged:I

    return v0
.end method

.method static synthetic access$1702(Llge/android/fmradio/FmRadioControlService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput p1, p0, Llge/android/fmradio/FmRadioControlService;->mBatteryPlugged:I

    return p1
.end method

.method static synthetic access$200(Llge/android/fmradio/FmRadioControlService;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioControlService;->HandleLiveAudioQualityEvent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Llge/android/fmradio/FmRadioControlService;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioControlService;->HandleRdsDataEvent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Llge/android/fmradio/FmRadioControlService;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioControlService;->HandleRdsModeEvent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Llge/android/fmradio/FmRadioControlService;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioControlService;->HandleSeekCompleteEvent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Llge/android/fmradio/FmRadioControlService;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioControlService;->HandleStatusEvent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Llge/android/fmradio/FmRadioControlService;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioControlService;->HandleWorldRegionEvent(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Llge/android/fmradio/FmRadioControlService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioControlService;->mResumeAfterCall:Z

    return v0
.end method

.method static synthetic access$802(Llge/android/fmradio/FmRadioControlService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Llge/android/fmradio/FmRadioControlService;->mResumeAfterCall:Z

    return p1
.end method

.method static synthetic access$900(Llge/android/fmradio/FmRadioControlService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Llge/android/fmradio/FmRadioControlService;->IsWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private getDisplayFreqency()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1087
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    rem-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, strFrequency:Ljava/lang/String;
    return-object v0
.end method

.method private notifyChange(Ljava/lang/String;)V
    .registers 6
    .parameter "what"

    .prologue
    .line 1341
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

    .line 1345
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1347
    .local v0, i:Landroid/content/Intent;
    const-string v1, "lge.android.fmradio.outputsound"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "lge.android.fmradio.listenviaoutputsound"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1349
    :cond_2d
    const-string v1, "outputsound"

    invoke-virtual {p0}, Llge/android/fmradio/FmRadioControlService;->getCurrentSoundDevice()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1355
    :cond_36
    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioControlService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1364
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mAppWidgetProvider:Llge/android/fmradio/FmRadioWidgetProvider;

    if-eqz v1, :cond_42

    .line 1365
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mAppWidgetProvider:Llge/android/fmradio/FmRadioWidgetProvider;

    invoke-virtual {v1, p0, p1}, Llge/android/fmradio/FmRadioWidgetProvider;->notifyChange(Llge/android/fmradio/FmRadioControlService;Ljava/lang/String;)V

    .line 1367
    :cond_42
    return-void
.end method

.method private saveQueue(Z)V
    .registers 3
    .parameter "full"

    .prologue
    .line 929
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioControlService;->mOneShot:Z

    if-eqz v0, :cond_4

    .line 932
    :cond_4
    return-void
.end method


# virtual methods
.method public GetSystemState()I
    .registers 3

    .prologue
    .line 1684
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService]GetSystemState"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    iget v0, p0, Llge/android/fmradio/FmRadioControlService;->mnState:I

    return v0
.end method

.method public GetwidgetsSystemstate()I
    .registers 2

    .prologue
    .line 1241
    iget v0, p0, Llge/android/fmradio/FmRadioControlService;->mnState:I

    return v0
.end method

.method public Run()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const-string v3, "FM RADIO"

    .line 1455
    const/16 v0, 0x3ea

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->mnState:I

    .line 1462
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioControlService] Run"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mFmRadioMgr:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    if-nez v0, :cond_19

    .line 1464
    new-instance v0, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    invoke-direct {v0, p0}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;-><init>(Llge/android/fmradio/FmRadioControlService;)V

    iput-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mFmRadioMgr:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    .line 1466
    :cond_19
    sget-boolean v0, Llge/android/fmradio/FmRadioControlService;->$assertionsDisabled:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mFmRadioMgr:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1468
    :cond_27
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mFmRadioMgr:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mManagerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->Initialize(Landroid/os/Handler;)Z

    move-result v0

    if-ne v0, v2, :cond_45

    .line 1470
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mFmRadioMgr:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->Run()Z

    move-result v0

    if-ne v0, v2, :cond_3e

    .line 1472
    invoke-direct {p0}, Llge/android/fmradio/FmRadioControlService;->SetNotification()V

    move v0, v2

    .line 1479
    :goto_3d
    return v0

    .line 1475
    :cond_3e
    const-string v0, "FM RADIO"

    const-string v0, "+++[Error]+++[FmRadioControlService]Run"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_45
    const/16 v0, 0x3eb

    iput v0, p0, Llge/android/fmradio/FmRadioControlService;->mnState:I

    .line 1479
    const/4 v0, 0x0

    goto :goto_3d
.end method

.method public RunAutoScanning()V
    .registers 3

    .prologue
    .line 1653
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService]RunAutoScanning start++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mFmRadioMgr:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->runAutoScanning()V

    .line 1655
    return-void
.end method

.method public RunBackwardScanning()V
    .registers 3

    .prologue
    .line 1661
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService]RunBackwardScanning start++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mFmRadioMgr:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->runBackwardScanning()V

    .line 1663
    return-void
.end method

.method public RunCatchAutoScanning()V
    .registers 3

    .prologue
    .line 1657
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService]RunCatchAutoScanning start++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mFmRadioMgr:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->runCatchAutoScanning()V

    .line 1659
    return-void
.end method

.method public RunForwardScanning()V
    .registers 3

    .prologue
    .line 1666
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService]RunBackwardScanning start++++++++++"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mFmRadioMgr:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    invoke-virtual {v0}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->runForwardScanning()V

    .line 1668
    return-void
.end method

.method public RunRdsMode(ZZ)V
    .registers 6
    .parameter "bRds"
    .parameter "bAF"

    .prologue
    .line 1670
    const-string v0, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioControlService]RunRdsMode start++++++++++ bRds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bAF = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mFmRadioMgr:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    invoke-virtual {v0, p1, p2}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->runRdsMode(ZZ)V

    .line 1672
    return-void
.end method

.method public Stop()V
    .registers 4

    .prologue
    .line 1484
    iget v1, p0, Llge/android/fmradio/FmRadioControlService;->mnState:I

    const/16 v2, 0x3e9

    if-ne v1, v2, :cond_30

    .line 1486
    sget-boolean v1, Llge/android/fmradio/FmRadioControlService;->$assertionsDisabled:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mFmRadioMgr:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    if-nez v1, :cond_14

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1487
    :cond_14
    const/16 v1, 0x3ea

    iput v1, p0, Llge/android/fmradio/FmRadioControlService;->mnState:I

    .line 1489
    const-string v1, "FM RADIO"

    const-string v2, "[FmRadioControlService] Stop "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mFmRadioMgr:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    invoke-virtual {v1}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->Stop()V

    .line 1493
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioControlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1495
    .local v0, nm:Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1498
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_30
    return-void
.end method

.method public TuneFrequency(I)V
    .registers 4
    .parameter "nFreq"

    .prologue
    .line 1705
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService]TuneFrequency"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mFmRadioMgr:Llge/android/fmradio/FmRadioControlService$FmRadioMgr;

    invoke-virtual {v0, p1}, Llge/android/fmradio/FmRadioControlService$FmRadioMgr;->tuneFrequency(I)V

    .line 1707
    return-void
.end method

.method public TunningLeft()V
    .registers 5

    .prologue
    const/16 v3, 0x222e

    .line 1501
    const-string v1, "FM RADIO"

    const-string v2, "[FmRadioControlService] TunningLeft"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 1504
    .local v0, nFreq:I
    if-le v0, v3, :cond_18

    .line 1507
    iget v1, p0, Llge/android/fmradio/FmRadioControlService;->mFrequencyStep:I

    sub-int/2addr v0, v1

    .line 1512
    :cond_14
    :goto_14
    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioControlService;->TuneFrequency(I)V

    .line 1513
    return-void

    .line 1509
    :cond_18
    if-ne v0, v3, :cond_14

    .line 1510
    const/16 v0, 0x2a30

    goto :goto_14
.end method

.method public TunningRight()V
    .registers 5

    .prologue
    const/16 v3, 0x2a30

    .line 1516
    const-string v1, "FM RADIO"

    const-string v2, "[FmRadioControlService] TunningRight"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 1519
    .local v0, nFreq:I
    if-ge v0, v3, :cond_18

    .line 1522
    iget v1, p0, Llge/android/fmradio/FmRadioControlService;->mFrequencyStep:I

    add-int/2addr v0, v1

    .line 1527
    :cond_14
    :goto_14
    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioControlService;->TuneFrequency(I)V

    .line 1528
    return-void

    .line 1524
    :cond_18
    if-ne v0, v3, :cond_14

    .line 1525
    const/16 v0, 0x222e

    goto :goto_14
.end method

.method public TunningsDummyLeft()V
    .registers 5

    .prologue
    const/16 v3, 0x222e

    .line 1572
    const-string v1, "FM RADIO"

    const-string v2, "[FmRadioControlService] TunningLeft"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 1575
    .local v0, nFreq:I
    if-le v0, v3, :cond_1f

    .line 1578
    iget v1, p0, Llge/android/fmradio/FmRadioControlService;->mFrequencyStep:I

    sub-int/2addr v0, v1

    .line 1584
    :cond_14
    :goto_14
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1, v0}, Llge/android/fmradio/FmRadioUtils;->SetLastFreqeuncy(Landroid/content/SharedPreferences;I)Z

    .line 1586
    const-string v1, "lge.android.fmradio.updatefreq"

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 1587
    return-void

    .line 1580
    :cond_1f
    if-ne v0, v3, :cond_14

    .line 1581
    const/16 v0, 0x2a30

    goto :goto_14
.end method

.method public TunningsDummyRight()V
    .registers 5

    .prologue
    const/16 v3, 0x2a30

    .line 1590
    const-string v1, "FM RADIO"

    const-string v2, "[FmRadioControlService] TunningRight"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 1593
    .local v0, nFreq:I
    if-ge v0, v3, :cond_1f

    .line 1596
    iget v1, p0, Llge/android/fmradio/FmRadioControlService;->mFrequencyStep:I

    add-int/2addr v0, v1

    .line 1602
    :cond_14
    :goto_14
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1, v0}, Llge/android/fmradio/FmRadioUtils;->SetLastFreqeuncy(Landroid/content/SharedPreferences;I)Z

    .line 1604
    const-string v1, "lge.android.fmradio.updatefreq"

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 1605
    return-void

    .line 1598
    :cond_1f
    if-ne v0, v3, :cond_14

    .line 1599
    const/16 v0, 0x222e

    goto :goto_14
.end method

.method public TunningsDummysLeft(I)V
    .registers 6
    .parameter "nCount"

    .prologue
    const/16 v3, 0x222e

    .line 1608
    const-string v1, "FM RADIO"

    const-string v2, "[FmRadioControlService] TunningLeft"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 1611
    .local v0, nFreq:I
    if-le v0, v3, :cond_24

    .line 1614
    iget v1, p0, Llge/android/fmradio/FmRadioControlService;->mFrequencyStep:I

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    .line 1616
    if-gt v0, v3, :cond_19

    .line 1617
    const/16 v0, 0x2a30

    .line 1624
    :cond_19
    :goto_19
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1, v0}, Llge/android/fmradio/FmRadioUtils;->SetLastFreqeuncy(Landroid/content/SharedPreferences;I)Z

    .line 1626
    const-string v1, "lge.android.fmradio.updatefreqdot"

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 1627
    return-void

    .line 1620
    :cond_24
    if-ne v0, v3, :cond_19

    .line 1621
    const/16 v0, 0x2a30

    goto :goto_19
.end method

.method public TunningsDummysRight(I)V
    .registers 6
    .parameter "nCount"

    .prologue
    const/16 v3, 0x2a30

    .line 1630
    const-string v1, "FM RADIO"

    const-string v2, "[FmRadioControlService] TunningRight"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 1633
    .local v0, nFreq:I
    if-ge v0, v3, :cond_24

    .line 1636
    iget v1, p0, Llge/android/fmradio/FmRadioControlService;->mFrequencyStep:I

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    .line 1638
    if-lt v0, v3, :cond_19

    .line 1639
    const/16 v0, 0x222e

    .line 1646
    :cond_19
    :goto_19
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1, v0}, Llge/android/fmradio/FmRadioUtils;->SetLastFreqeuncy(Landroid/content/SharedPreferences;I)Z

    .line 1648
    const-string v1, "lge.android.fmradio.updatefreqdot"

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 1649
    return-void

    .line 1642
    :cond_24
    if-ne v0, v3, :cond_19

    .line 1643
    const/16 v0, 0x222e

    goto :goto_19
.end method

.method public TunningsLeft(I)V
    .registers 8
    .parameter "nCount"

    .prologue
    const/16 v5, 0x222e

    .line 1531
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

    .line 1533
    sget-boolean v2, Llge/android/fmradio/FmRadioControlService;->$assertionsDisabled:Z

    if-nez v2, :cond_26

    if-nez p1, :cond_26

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1534
    :cond_26
    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v1

    .line 1535
    .local v1, nFreq:I
    if-le v1, v5, :cond_3b

    .line 1537
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2f
    if-ge v0, p1, :cond_3f

    .line 1538
    iget v2, p0, Llge/android/fmradio/FmRadioControlService;->mFrequencyStep:I

    sub-int/2addr v1, v2

    .line 1539
    if-ne v1, v5, :cond_38

    .line 1540
    const/16 v1, 0x2a30

    .line 1537
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 1543
    .end local v0           #i:I
    :cond_3b
    if-ne v1, v5, :cond_3f

    .line 1544
    const/16 v1, 0x2a30

    .line 1546
    :cond_3f
    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioControlService;->TuneFrequency(I)V

    .line 1547
    return-void
.end method

.method public TunningsRight(I)V
    .registers 8
    .parameter "nCount"

    .prologue
    const/16 v5, 0x2a30

    .line 1553
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

    .line 1554
    sget-boolean v2, Llge/android/fmradio/FmRadioControlService;->$assertionsDisabled:Z

    if-nez v2, :cond_26

    if-nez p1, :cond_26

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1555
    :cond_26
    iget-object v2, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v1

    .line 1556
    .local v1, nFreq:I
    if-ge v1, v5, :cond_3b

    .line 1558
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2f
    if-ge v0, p1, :cond_3f

    .line 1559
    iget v2, p0, Llge/android/fmradio/FmRadioControlService;->mFrequencyStep:I

    add-int/2addr v1, v2

    .line 1560
    if-ne v1, v5, :cond_38

    .line 1561
    const/16 v1, 0x222e

    .line 1558
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 1565
    .end local v0           #i:I
    :cond_3b
    if-ne v1, v5, :cond_3f

    .line 1566
    const/16 v1, 0x222e

    .line 1568
    :cond_3f
    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioControlService;->TuneFrequency(I)V

    .line 1569
    return-void
.end method

.method public Widgetfrequencydown()V
    .registers 12

    .prologue
    const/4 v8, 0x1

    const-string v10, "[FmRadioControlService]i value"

    const-string v9, "lge.android.fmradio.updatefreq"

    const-string v7, "FM RADIO"

    .line 733
    iget-object v5, p0, Llge/android/fmradio/FmRadioControlService;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v5}, Llge/android/fmradio/FmRadioUtils;->GetCurrentChannelInfo(Landroid/content/SharedPreferences;)I

    move-result v2

    .line 735
    .local v2, mTempChannelIndex:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_e
    if-gt v0, v2, :cond_12

    .line 736
    if-nez v2, :cond_7f

    .line 764
    :cond_12
    :goto_12
    const/16 v0, 0x30

    :goto_14
    if-lt v0, v8, :cond_18

    .line 765
    if-nez v2, :cond_e8

    .line 781
    :cond_18
    iget-object v5, p0, Llge/android/fmradio/FmRadioControlService;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v5, v2}, Llge/android/fmradio/FmRadioUtils;->GetChannelInfo(Landroid/content/SharedPreferences;I)I

    move-result v3

    .line 782
    .local v3, nFreq:I
    const-string v5, "FM RADIO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FmRadioControlService]frequency value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const-string v5, "FM RADIO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FmRadioControlService]temp value value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    if-nez v2, :cond_10d

    .line 785
    const-string v5, "FM RADIO"

    const-string v5, "[FmRadioControlService]Dailog to be shown"

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 787
    .local v1, intent:Landroid/content/Intent;
    const-class v5, Llge/android/fmradio/FmRadioWidgetDialog;

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 789
    if-eqz v1, :cond_79

    .line 790
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 793
    const-string v5, "FM RADIO"

    const-string v5, "Launch SSP dialog immediately"

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioControlService;->startActivity(Landroid/content/Intent;)V

    .line 795
    const-string v5, "FM RADIO"

    const-string v5, "[Widgetfrequencyup][Widgetfrequencyup] service.sendBroadcast(intent)"

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .end local v1           #intent:Landroid/content/Intent;
    :cond_79
    :goto_79
    const-string v5, "lge.android.fmradio.updatefreq"

    invoke-direct {p0, v9}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 811
    .end local v3           #nFreq:I
    :goto_7e
    return-void

    .line 739
    :cond_7f
    if-ne v2, v8, :cond_a1

    .line 740
    const-string v5, "FM RADIO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FmRadioControlService]i value"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v5, p0, Llge/android/fmradio/FmRadioControlService;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v5, v2}, Llge/android/fmradio/FmRadioUtils;->GetChannelInfo(Landroid/content/SharedPreferences;I)I

    move-result v4

    .line 742
    .local v4, nFreq_one:I
    goto/16 :goto_12

    .line 746
    .end local v4           #nFreq_one:I
    :cond_a1
    const-string v5, "FM RADIO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FmRadioControlService]i value"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v5, p0, Llge/android/fmradio/FmRadioControlService;->mChannelPrefs:Landroid/content/SharedPreferences;

    sub-int v6, v2, v0

    invoke-static {v5, v6}, Llge/android/fmradio/FmRadioUtils;->GetChannelInfo(Landroid/content/SharedPreferences;I)I

    move-result v4

    .line 750
    .restart local v4       #nFreq_one:I
    if-eqz v4, :cond_e4

    .line 751
    const-string v5, "FM RADIO"

    const-string v5, "[FmRadioControlService]inside channel down"

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    if-eq v2, v8, :cond_cd

    .line 754
    sub-int/2addr v2, v0

    .line 757
    :cond_cd
    iget-object v5, p0, Llge/android/fmradio/FmRadioControlService;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v2}, Llge/android/fmradio/FmRadioUtils;->GetSavedChannelFrequency(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v5, v2, v6}, Llge/android/fmradio/FmRadioUtils;->SetChannelInfo(Landroid/content/SharedPreferences;II)Z

    .line 758
    iget-object v5, p0, Llge/android/fmradio/FmRadioControlService;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v5, v2}, Llge/android/fmradio/FmRadioUtils;->SetCurrentChannelInfo(Landroid/content/SharedPreferences;I)Z

    .line 759
    invoke-virtual {p0, v4}, Llge/android/fmradio/FmRadioControlService;->TuneFrequency(I)V

    .line 760
    const-string v5, "lge.android.fmradio.updatefreq"

    invoke-direct {p0, v9}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    goto :goto_7e

    .line 735
    :cond_e4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    .line 767
    .end local v4           #nFreq_one:I
    :cond_e8
    iget-object v5, p0, Llge/android/fmradio/FmRadioControlService;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v5, v0}, Llge/android/fmradio/FmRadioUtils;->GetChannelInfo(Landroid/content/SharedPreferences;I)I

    move-result v4

    .line 768
    .restart local v4       #nFreq_one:I
    if-eqz v4, :cond_109

    .line 770
    move v2, v0

    .line 773
    iget-object v5, p0, Llge/android/fmradio/FmRadioControlService;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v2}, Llge/android/fmradio/FmRadioUtils;->GetSavedChannelFrequency(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v5, v2, v6}, Llge/android/fmradio/FmRadioUtils;->SetChannelInfo(Landroid/content/SharedPreferences;II)Z

    .line 774
    iget-object v5, p0, Llge/android/fmradio/FmRadioControlService;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v5, v2}, Llge/android/fmradio/FmRadioUtils;->SetCurrentChannelInfo(Landroid/content/SharedPreferences;I)Z

    .line 775
    invoke-virtual {p0, v4}, Llge/android/fmradio/FmRadioControlService;->TuneFrequency(I)V

    .line 776
    const-string v5, "lge.android.fmradio.updatefreq"

    invoke-direct {p0, v9}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_7e

    .line 764
    :cond_109
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_14

    .line 803
    .end local v4           #nFreq_one:I
    .restart local v3       #nFreq:I
    :cond_10d
    const-string v5, "FM RADIO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FmRadioControlService]saved channel  value value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0, v2}, Llge/android/fmradio/FmRadioUtils;->GetSavedChannelFrequency(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v5, p0, Llge/android/fmradio/FmRadioControlService;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v2}, Llge/android/fmradio/FmRadioUtils;->GetSavedChannelFrequency(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v5, v2, v6}, Llge/android/fmradio/FmRadioUtils;->SetChannelInfo(Landroid/content/SharedPreferences;II)Z

    .line 806
    iget-object v5, p0, Llge/android/fmradio/FmRadioControlService;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v5, v2}, Llge/android/fmradio/FmRadioUtils;->SetCurrentChannelInfo(Landroid/content/SharedPreferences;I)Z

    .line 807
    invoke-virtual {p0, v3}, Llge/android/fmradio/FmRadioControlService;->TuneFrequency(I)V

    goto/16 :goto_79
.end method

.method public Widgetfrequencyup()V
    .registers 13

    .prologue
    const/16 v10, 0x30

    const-string v11, "[FmRadioControlService]inside channel up"

    const-string v9, "lge.android.fmradio.updatefreq"

    const-string v8, "FM RADIO"

    .line 665
    iget-object v6, p0, Llge/android/fmradio/FmRadioControlService;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v6}, Llge/android/fmradio/FmRadioUtils;->GetCurrentChannelInfo(Landroid/content/SharedPreferences;)I

    move-result v2

    .line 666
    .local v2, mTempChannelIndex:I
    sub-int v3, v10, v2

    .line 667
    .local v3, mTempchannelnumber:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_11
    if-gt v0, v3, :cond_15

    .line 668
    if-nez v2, :cond_51

    .line 684
    :cond_15
    const/4 v0, 0x1

    :goto_16
    if-gt v0, v10, :cond_1a

    .line 685
    if-nez v2, :cond_7d

    .line 700
    :cond_1a
    iget-object v6, p0, Llge/android/fmradio/FmRadioControlService;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v6, v2}, Llge/android/fmradio/FmRadioUtils;->GetChannelInfo(Landroid/content/SharedPreferences;I)I

    move-result v4

    .line 701
    .local v4, nFreq:I
    if-nez v2, :cond_a8

    .line 702
    const-string v6, "FM RADIO"

    const-string v6, "[FmRadioControlService]Dailog to be shown"

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 705
    .local v1, intent:Landroid/content/Intent;
    const-class v6, Llge/android/fmradio/FmRadioWidgetDialog;

    invoke-virtual {v1, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 707
    if-eqz v1, :cond_4b

    .line 708
    const/high16 v6, 0x1000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 711
    const-string v6, "FM RADIO"

    const-string v6, "Launch dialog immediately"

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioControlService;->startActivity(Landroid/content/Intent;)V

    .line 713
    const-string v6, "FM RADIO"

    const-string v6, "[Widgetfrequencyup][Widgetfrequencyup] service.sendBroadcast(intent)"

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4b
    :goto_4b
    const-string v6, "lge.android.fmradio.updatefreq"

    invoke-direct {p0, v9}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 726
    .end local v4           #nFreq:I
    :goto_50
    return-void

    .line 671
    :cond_51
    iget-object v6, p0, Llge/android/fmradio/FmRadioControlService;->mChannelPrefs:Landroid/content/SharedPreferences;

    add-int v7, v2, v0

    invoke-static {v6, v7}, Llge/android/fmradio/FmRadioUtils;->GetChannelInfo(Landroid/content/SharedPreferences;I)I

    move-result v5

    .line 673
    .local v5, nFreq_one:I
    if-eqz v5, :cond_7a

    .line 674
    const-string v6, "FM RADIO"

    const-string v6, "[FmRadioControlService]inside channel up"

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    add-int/2addr v2, v0

    .line 676
    iget-object v6, p0, Llge/android/fmradio/FmRadioControlService;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v2}, Llge/android/fmradio/FmRadioUtils;->GetSavedChannelFrequency(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v6, v2, v7}, Llge/android/fmradio/FmRadioUtils;->SetChannelInfo(Landroid/content/SharedPreferences;II)Z

    .line 677
    iget-object v6, p0, Llge/android/fmradio/FmRadioControlService;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v6, v2}, Llge/android/fmradio/FmRadioUtils;->SetCurrentChannelInfo(Landroid/content/SharedPreferences;I)Z

    .line 678
    invoke-virtual {p0, v5}, Llge/android/fmradio/FmRadioControlService;->TuneFrequency(I)V

    .line 679
    const-string v6, "lge.android.fmradio.updatefreq"

    invoke-direct {p0, v9}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    goto :goto_50

    .line 667
    :cond_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 688
    .end local v5           #nFreq_one:I
    :cond_7d
    iget-object v6, p0, Llge/android/fmradio/FmRadioControlService;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v6, v0}, Llge/android/fmradio/FmRadioUtils;->GetChannelInfo(Landroid/content/SharedPreferences;I)I

    move-result v5

    .line 690
    .restart local v5       #nFreq_one:I
    if-eqz v5, :cond_a4

    .line 691
    const-string v6, "FM RADIO"

    const-string v6, "[FmRadioControlService]inside channel up"

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    move v2, v0

    .line 693
    iget-object v6, p0, Llge/android/fmradio/FmRadioControlService;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v2}, Llge/android/fmradio/FmRadioUtils;->GetSavedChannelFrequency(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v6, v2, v7}, Llge/android/fmradio/FmRadioUtils;->SetChannelInfo(Landroid/content/SharedPreferences;II)Z

    .line 694
    iget-object v6, p0, Llge/android/fmradio/FmRadioControlService;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v6, v2}, Llge/android/fmradio/FmRadioUtils;->SetCurrentChannelInfo(Landroid/content/SharedPreferences;I)Z

    .line 695
    invoke-virtual {p0, v5}, Llge/android/fmradio/FmRadioControlService;->TuneFrequency(I)V

    .line 696
    const-string v6, "lge.android.fmradio.updatefreq"

    invoke-direct {p0, v9}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    goto :goto_50

    .line 684
    :cond_a4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_16

    .line 718
    .end local v5           #nFreq_one:I
    .restart local v4       #nFreq:I
    :cond_a8
    iget-object v6, p0, Llge/android/fmradio/FmRadioControlService;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v2}, Llge/android/fmradio/FmRadioUtils;->GetSavedChannelFrequency(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v6, v2, v7}, Llge/android/fmradio/FmRadioUtils;->SetChannelInfo(Landroid/content/SharedPreferences;II)Z

    .line 719
    iget-object v6, p0, Llge/android/fmradio/FmRadioControlService;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v6, v2}, Llge/android/fmradio/FmRadioUtils;->SetCurrentChannelInfo(Landroid/content/SharedPreferences;I)Z

    .line 720
    invoke-virtual {p0, v4}, Llge/android/fmradio/FmRadioControlService;->TuneFrequency(I)V

    goto :goto_4b
.end method

.method public getCurrentSoundDevice()I
    .registers 2

    .prologue
    .line 1710
    iget v0, p0, Llge/android/fmradio/FmRadioControlService;->mnOutputSound:I

    return v0
.end method

.method public getRunningState()Z
    .registers 4

    .prologue
    .line 1693
    const-string v0, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioControlService]GetRunningState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Llge/android/fmradio/FmRadioControlService;->mbSystemRunningFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioControlService;->mbSystemRunningFlag:Z

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 1121
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService] onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const/4 v0, 0x1

    iput-boolean v0, p0, Llge/android/fmradio/FmRadioControlService;->mServiceInUse:Z

    .line 1123
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mBinder:Llge/android/fmradio/IFmRadioControlService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "FM RADIO"

    .line 822
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 824
    const-string v4, "FM RADIO"

    const-string v4, "[FmRadioControlService] onCreate"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const-string v4, "SHARED_RADIO_INFO_PREFS"

    invoke-virtual {p0, v4, v6}, Llge/android/fmradio/FmRadioControlService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    .line 827
    iget-object v4, p0, Llge/android/fmradio/FmRadioControlService;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    if-nez v4, :cond_21

    .line 828
    const-string v4, "FM RADIO"

    const-string v4, "++[ERROR]++ [FmRadioView][onCreate] getSharedPreferences(SHARED_RADIO_INFO_PREFS,0)"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_21
    const-string v4, "SHARED_CHANNEL_PREFS"

    invoke-virtual {p0, v4, v6}, Llge/android/fmradio/FmRadioControlService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Llge/android/fmradio/FmRadioControlService;->mChannelPrefs:Landroid/content/SharedPreferences;

    .line 832
    iget-object v4, p0, Llge/android/fmradio/FmRadioControlService;->mChannelPrefs:Landroid/content/SharedPreferences;

    if-nez v4, :cond_34

    .line 833
    const-string v4, "FM RADIO"

    const-string v4, "++[ERROR]++ [FmRadioView][onCreate] getSharedPreferences(SHARED_CHANNEL_PREFS,0)"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_34
    const-string v4, "SHARED_CURRENT_CHANNEL"

    invoke-virtual {p0, v4, v6}, Llge/android/fmradio/FmRadioControlService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Llge/android/fmradio/FmRadioControlService;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    .line 837
    iget-object v4, p0, Llge/android/fmradio/FmRadioControlService;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    if-nez v4, :cond_47

    .line 838
    const-string v4, "FM RADIO"

    const-string v4, "++[ERROR]++ [FmRadioView][onCreate] getSharedPreferences(SHARED_CURRENT_CHANNEL,0)"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_47
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Llge/android/fmradio/FmRadioControlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 860
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-virtual {v1, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 864
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 865
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v4, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 866
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 867
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 868
    const-string v4, "android.bluetooth.intent.action.REMOTE_DEVICE_CONNECTED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 871
    const-string v4, "android.bluetooth.intent.action.REMOTE_DEVICE_DISCONNECTED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 872
    const-string v4, "lge.android.fmradio.fmradioservicecommand.controlpower"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 873
    const-string v4, "lge.android.fmradio.fmradioservicecommand.frequencyup"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 874
    const-string v4, "lge.android.fmradio.fmradioservicecommand.frequencydown"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 877
    const-string v4, "lge.android.fmradio.power"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 879
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 886
    iget-object v4, p0, Llge/android/fmradio/FmRadioControlService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Llge/android/fmradio/FmRadioControlService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 888
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Llge/android/fmradio/FmRadioControlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 889
    .local v3, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Llge/android/fmradio/FmRadioControlService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 893
    const-string v4, "power"

    invoke-virtual {p0, v4}, Llge/android/fmradio/FmRadioControlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 894
    .local v2, pm:Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Llge/android/fmradio/FmRadioControlService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 895
    iget-object v4, p0, Llge/android/fmradio/FmRadioControlService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 901
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 905
    const-string v1, "FM RADIO"

    const-string v2, "[FmRadioControlService] onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mManagerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 908
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mFirstTimeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 910
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioControlService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 911
    .local v0, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 913
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioControlService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 914
    iget-object v1, p0, Llge/android/fmradio/FmRadioControlService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 918
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 919
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 1128
    const/4 v0, 0x1

    iput-boolean v0, p0, Llge/android/fmradio/FmRadioControlService;->mServiceInUse:Z

    .line 1129
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 13
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/16 v7, 0x3eb

    const/4 v6, 0x1

    const-string v9, "[FmRadioControlService] CMDFREQUP...2"

    const-string v8, "[FmRadioControlService] CMDFREQUP...1"

    const-string v5, "FM RADIO"

    .line 1134
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioControlService] onStart"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1136
    .local v0, action:Ljava/lang/String;
    const-string v3, "command"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1138
    .local v2, cmd:Ljava/lang/String;
    const-string v3, "FM RADIO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FmRadioControlService]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const-string v3, "lge.android.fmradio.fmradioservicecommand.controlpower"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 1142
    iget v3, p0, Llge/android/fmradio/FmRadioControlService;->mnState:I

    if-ne v3, v7, :cond_6e

    .line 1145
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->IsAirPlainMode(Landroid/content/Context;)Z

    move-result v3

    if-ne v3, v6, :cond_4e

    .line 1146
    const-string v3, "lge.android.fmradio.airplainmode"

    invoke-direct {p0, v3}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 1236
    :cond_4d
    :goto_4d
    return-void

    .line 1148
    :cond_4e
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->IsBlueToothMode(Landroid/content/Context;)Z

    move-result v3

    if-ne v3, v6, :cond_5a

    .line 1149
    const-string v3, "lge.android.fmradio.bluetoothmode"

    invoke-direct {p0, v3}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    goto :goto_4d

    .line 1153
    :cond_5a
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioControlService;->GetSystemState()I

    move-result v3

    invoke-static {p0, v3}, Llge/android/fmradio/FmRadioUtils;->IsWiredHeadsetOn(Landroid/content/Context;I)Z

    move-result v3

    if-ne v3, v6, :cond_68

    .line 1154
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioControlService;->Run()Z

    goto :goto_4d

    .line 1156
    :cond_68
    const-string v3, "lge.android.fmradio.warningwithoutearjack"

    invoke-direct {p0, v3}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    goto :goto_4d

    .line 1161
    :cond_6e
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioControlService] CMDPOWER...1"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioControlService;->Stop()V

    goto :goto_4d

    .line 1167
    :cond_79
    const-string v3, "lge.android.fmradio.fmradioservicecommand.frequencyup"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 1168
    iget v3, p0, Llge/android/fmradio/FmRadioControlService;->mnState:I

    if-eq v3, v7, :cond_4d

    .line 1170
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioControlService;->Widgetfrequencyup()V

    .line 1171
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioControlService] CMDFREQUP...1"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioControlService] CMDFREQUP...2"

    invoke-static {v5, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 1177
    :cond_97
    const-string v3, "lge.android.fmradio.fmradioservicecommand.frequencydown"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 1178
    iget v3, p0, Llge/android/fmradio/FmRadioControlService;->mnState:I

    if-eq v3, v7, :cond_4d

    .line 1180
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioControlService;->Widgetfrequencydown()V

    .line 1181
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioControlService] CMDFREQUP...1"

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const-string v3, "FM RADIO"

    const-string v3, "[FmRadioControlService] CMDFREQUP...2"

    invoke-static {v5, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 1185
    :cond_b5
    const-string v3, "appwidgetupdate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1188
    const-string v3, "appWidgetIds"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 1189
    .local v1, appWidgetIds:[I
    iget-object v3, p0, Llge/android/fmradio/FmRadioControlService;->mAppWidgetProvider:Llge/android/fmradio/FmRadioWidgetProvider;

    invoke-virtual {v3, p0, v1}, Llge/android/fmradio/FmRadioWidgetProvider;->performUpdate(Llge/android/fmradio/FmRadioControlService;[I)V

    goto :goto_4d
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 5
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 1245
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService] onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const/4 v0, 0x0

    iput-boolean v0, p0, Llge/android/fmradio/FmRadioControlService;->mServiceInUse:Z

    .line 1248
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mAppWidgetProvider:Llge/android/fmradio/FmRadioWidgetProvider;

    if-eqz v0, :cond_1e

    .line 1249
    const-string v0, "lge.android.fmradio.updatefreq"

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioControlService;->notifyChange(Ljava/lang/String;)V

    .line 1250
    iget-object v0, p0, Llge/android/fmradio/FmRadioControlService;->mAppWidgetProvider:Llge/android/fmradio/FmRadioWidgetProvider;

    invoke-virtual {v0, p0}, Llge/android/fmradio/FmRadioWidgetProvider;->haswidgetInstances(Llge/android/fmradio/FmRadioControlService;)Z

    move-result v0

    if-ne v0, v2, :cond_1e

    .line 1251
    iput-boolean v2, p0, Llge/android/fmradio/FmRadioControlService;->mServiceInUse:Z

    .line 1255
    :cond_1e
    return v2
.end method

.method public setRunningState(Z)V
    .registers 4
    .parameter "bState"

    .prologue
    .line 1698
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioControlService]setRunningState = "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    iput-boolean p1, p0, Llge/android/fmradio/FmRadioControlService;->mbSystemRunningFlag:Z

    .line 1700
    return-void
.end method
