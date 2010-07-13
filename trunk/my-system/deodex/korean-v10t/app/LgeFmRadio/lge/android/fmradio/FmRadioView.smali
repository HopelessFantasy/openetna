.class public Llge/android/fmradio/FmRadioView;
.super Landroid/app/Activity;
.source "FmRadioView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llge/android/fmradio/FmRadioView$UpdateHandler;,
        Llge/android/fmradio/FmRadioView$UpdateChannelSwingCallback;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ATTAG:Ljava/lang/String; = "AT COMMAND"

.field private static final COMPLTE_DIALOG:I = 0x0

.field private static final DIALOG_LONG_PRESS_SET_CHANNEL_OVERWRITE_YES_NO:I = 0xa

.field private static final DIALOG_NOTIFY_AIRPLAIN_MODE_OK:I = 0x11

.field private static final DIALOG_NOTIFY_AUTOSCAN_COMPLETE_OK:I = 0xb

.field private static final DIALOG_NOTIFY_AUTOSCAN_FAIL_OK:I = 0x7

.field private static final DIALOG_NOTIFY_BLUETOOTH_MODE_OK:I = 0x12

.field private static final DIALOG_NOTIFY_CONFIRM_SCAN_TIMER:I = 0x6

.field private static final DIALOG_NOTIFY_DISCONNECT_HEADSET_OK:I = 0x2

.field private static final DIALOG_NOTIFY_LOWBATTERY_OK:I = 0x10

.field private static final DIALOG_NOTIFY_NEED_BLUETOOTH_CONNECT_OK:I = 0xf

.field private static final DIALOG_NOTIFY_NEED_HEADSET_CONNECT_OK:I = 0xe

.field private static final DIALOG_NOTIFY_QUALITY_DOWN_WITHOUT_EARGACK_OK:I = 0xd

.field private static final DIALOG_SET_AF_OK_CANCEL:I = 0x9

.field private static final DIALOG_SET_CHANNEL_FROM_AUTOSCAN_YES_NO:I = 0xc

.field private static final DIALOG_SET_CHANNEL_OVERWRITE_YES_NO:I = 0x3

.field private static final DIALOG_SET_RESET_ALL_CHANNEL_AUTOSCAN_YES_NO:I = 0x5

.field private static final DIALOG_SET_STATION_INFO_OK_CANCEL:I = 0x8

.field private static final DISPLAY_AUTO_SCAN_CATCH_MODE:I = 0x4

.field private static final DISPLAY_AUTO_SCAN_SCANNING_MODE:I = 0x5

.field private static final DISPLAY_EDIT_CHANNEL_MODE:I = 0x3

.field private static final DISPLAY_POWER_OFF_MODE:I = 0x2

.field private static final DISPLAY_WINDOW_FREQEUNCY:I = 0x0

.field private static final DISPLAY_WINDOW_VOLUME:I = 0x1

.field public static final GUI_UPDATE_MSG_AUTOSCAN_FREQ:I = 0xf

.field public static final GUI_UPDATE_MSG_COMPLETE_AUTOSCAN:I = 0xe

.field public static final GUI_UPDATE_MSG_FREQ_STATUS:I = 0x5

.field public static final GUI_UPDATE_MSG_INIT_DISPLAY:I = 0x1

.field public static final GUI_UPDATE_MSG_SIGNAL_STATUS:I = 0x2

.field public static final GUI_UPDATE_MSG_WORLD_STATUS:I = 0x6

.field private static final INTENT_COMPLETE_DIALOG_ACTIVITY:I = 0x0

.field private static final LINKED_ACTIVITY_TUNE_DIALOG:I = 0x0

.field private static final LOGTAG:Ljava/lang/String; = "FM RADIO"

.field public static final NFL_TIMER_EVENT:I = 0x15

.field public static final RDS_TYPE_PROGRAM_SERVICE:I = 0x7d0

.field public static final RDS_TYPE_PROGRAM_TYPE:I = 0x3e8

.field public static final RDS_TYPE_RADIO_TEXT:I = 0xbb8

.field public static final RESULT_SELECTED_STATION:I = 0x3e8

.field public static final SIGNAL_CHECK_PENDING_EVENTS:I = 0x14

.field private static final VIBRATE_EFFECT_DURATION:I = 0xa


# instance fields
.field private final AT_COMMAND_1063:I

.field private final AT_COMMAND_901:I

.field private final AT_COMMAND_CANCEL:I

.field private final AT_COMMAND_NOTUSE:I

.field private final DIFFERENCE_FREQ:I

.field private final DISPLAY_VIEW_DOT_Y:I

.field private final FMRADIO_MOVE_TOLERANCE:I

.field private final FMRADIO_TUNNER_MOVE_SCALE:I

.field private final OPTION_MENU_AUTO_SCAN:I

.field private final OPTION_MENU_EDIT_CHANNEL:I

.field private final OPTION_MENU_RECORD:I

.field private final OPTION_MENU_RESET_ALL_CHANNEL:I

.field private final OPTION_MENU_RESET_CHANNEL:I

.field private final REFERENCE_FREQ:I

.field private final REFERENCE_HEIGHT:I

.field private final REFERENCE_LENGTH:I

.field private final REFERENCE_POINT:I

.field private final REFERENCE_WIDTH:I

.field private final SOUND_OUT_BLUETOOTH:I

.field private final SOUND_OUT_SPEAKER:I

.field private final SOUND_OUT_WIRED_HEADSET:I

.field private mAppwidgetset:Z

.field mAtCommandRunnable:Ljava/lang/Runnable;

.field private mAtCommandStatus:I

.field public mAtCommandTimeHandler:Landroid/os/Handler;

.field private mAutoScanChannelIndex:I

.field private mAutoScanDlgFreq:I

.field private mAutoScanMode:Z

.field private mAutoScanOlderFreq:I

.field private mAutoscanenable:Z

.field private mChannelPrefs:Landroid/content/SharedPreferences;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCredsDlg:Landroid/app/ProgressDialog;

.field private mCurrentChannelPrefs:Landroid/content/SharedPreferences;

.field mFirstRunnable:Ljava/lang/Runnable;

.field public mFirstTimeHandler:Landroid/os/Handler;

.field private mFrequency:I

.field public mListener:Llge/android/buttonflicking/EventListener;

.field private mRadioInfoPrefs:Landroid/content/SharedPreferences;

.field mRunnable:Ljava/lang/Runnable;

.field mSecondRunnable:Ljava/lang/Runnable;

.field public mSecondTimeHandler:Landroid/os/Handler;

.field mService:Llge/android/fmradio/IFmRadioControlService;

.field private mSetchannelLongPress:Z

.field private mSetchannelMode:Z

.field private mSetchannelshortPress:Z

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mTempAfMode:Z

.field private mTempChannelIndex:I

.field private mTempDlgFreq:I

.field private mTempStationMode:Z

.field public mTimeHandler:Landroid/os/Handler;

.field mVibrator:Landroid/os/Vibrator;

.field private m_autoscan_background:Landroid/view/View;

.field private m_btn_autoscan_set_channel:Landroid/widget/Button;

.field private m_btn_autoscan_skip:Landroid/widget/Button;

.field private m_btn_autoscan_stop:Landroid/widget/Button;

.field private m_btn_edit_channel_set:Landroid/widget/Button;

.field private m_btn_frequency_tune_next:Landroid/widget/Button;

.field private m_btn_frequency_tune_pre:Landroid/widget/Button;

.field private m_btn_listen_Via:Landroid/widget/Button;

.field private m_btn_power_off:Landroid/widget/Button;

.field private m_btn_set_channel:Landroid/widget/Button;

.field private m_btn_volume:Landroid/widget/Button;

.field private m_customview_rds:Llge/android/fmradio/FmRadioCustomViewRDS;

.field private m_frequency_background:Landroid/view/View;

.field private m_image_af:Landroid/widget/ImageView;

.field private m_image_channel_arrow:Llge/android/fmradio/FmRadioCustomViewChannelArrow;

.field private m_image_freq_dot:Llge/android/fmradio/FmRadioCustomViewDot;

.field private m_image_sound_device:Landroid/widget/ImageView;

.field private m_panelswitch:Landroid/view/View;

.field private m_radio_view:Landroid/view/View;

.field private m_scaning_level_image:Landroid/view/View;

.field private m_text_channel:Landroid/widget/TextView;

.field private m_text_edit_channel_frequency:Landroid/widget/TextView;

.field private m_text_frequency:Landroid/widget/TextView;

.field private m_text_hertz:Landroid/widget/TextView;

.field private m_text_scaning:Landroid/widget/TextView;

.field private m_text_volume_title:Landroid/widget/TextView;

.field private m_text_volume_value:Landroid/widget/TextView;

.field private m_volume_background:Landroid/view/View;

.field private m_volume_level_image:Landroid/view/View;

.field private m_wheel_frequency_tuner:Landroid/widget/Button;

.field private mbAutoScanState:Z

.field private mbEditSettingChannelState:Z

.field private mbSettingChannelState:Z

.field private mbSystemPowerOnState:Z

.field private mbTuneState:Z

.field private mbVolumeControlState:Z

.field private mnChannelIndex:[Llge/android/buttonflicking/ColorButton;

.field private mnOldTunePointX:I

.field radioView:Landroid/view/View;

.field viewUpdateHandler:Llge/android/fmradio/FmRadioView$UpdateHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-class v0, Llge/android/fmradio/FmRadioView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Llge/android/fmradio/FmRadioView;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    iput v3, p0, Llge/android/fmradio/FmRadioView;->OPTION_MENU_AUTO_SCAN:I

    .line 51
    iput v4, p0, Llge/android/fmradio/FmRadioView;->OPTION_MENU_RECORD:I

    .line 54
    iput v5, p0, Llge/android/fmradio/FmRadioView;->OPTION_MENU_EDIT_CHANNEL:I

    .line 55
    const/4 v0, 0x4

    iput v0, p0, Llge/android/fmradio/FmRadioView;->OPTION_MENU_RESET_CHANNEL:I

    .line 56
    const/4 v0, 0x7

    iput v0, p0, Llge/android/fmradio/FmRadioView;->OPTION_MENU_RESET_ALL_CHANNEL:I

    .line 114
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->mService:Llge/android/fmradio/IFmRadioControlService;

    .line 115
    const/16 v0, 0x222e

    iput v0, p0, Llge/android/fmradio/FmRadioView;->mFrequency:I

    .line 116
    iput v2, p0, Llge/android/fmradio/FmRadioView;->mnOldTunePointX:I

    .line 119
    iput-boolean v2, p0, Llge/android/fmradio/FmRadioView;->mbTuneState:Z

    .line 120
    iput-boolean v2, p0, Llge/android/fmradio/FmRadioView;->mbVolumeControlState:Z

    .line 121
    iput-boolean v2, p0, Llge/android/fmradio/FmRadioView;->mbSettingChannelState:Z

    .line 122
    iput-boolean v2, p0, Llge/android/fmradio/FmRadioView;->mbAutoScanState:Z

    .line 123
    iput-boolean v2, p0, Llge/android/fmradio/FmRadioView;->mbSystemPowerOnState:Z

    .line 125
    iput-boolean v2, p0, Llge/android/fmradio/FmRadioView;->mAppwidgetset:Z

    .line 127
    iput v2, p0, Llge/android/fmradio/FmRadioView;->mTempDlgFreq:I

    .line 128
    iput v2, p0, Llge/android/fmradio/FmRadioView;->mTempChannelIndex:I

    .line 129
    iput v3, p0, Llge/android/fmradio/FmRadioView;->mAutoScanChannelIndex:I

    .line 130
    iput v2, p0, Llge/android/fmradio/FmRadioView;->mAutoScanDlgFreq:I

    .line 131
    iput v2, p0, Llge/android/fmradio/FmRadioView;->mAutoScanOlderFreq:I

    .line 132
    iput-boolean v2, p0, Llge/android/fmradio/FmRadioView;->mTempStationMode:Z

    .line 133
    iput-boolean v2, p0, Llge/android/fmradio/FmRadioView;->mTempAfMode:Z

    .line 134
    iput-boolean v2, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    .line 136
    iput-boolean v2, p0, Llge/android/fmradio/FmRadioView;->mAutoscanenable:Z

    .line 137
    iput-boolean v2, p0, Llge/android/fmradio/FmRadioView;->mSetchannelshortPress:Z

    .line 138
    iput-boolean v2, p0, Llge/android/fmradio/FmRadioView;->mSetchannelLongPress:Z

    .line 140
    iput-boolean v2, p0, Llge/android/fmradio/FmRadioView;->mAutoScanMode:Z

    .line 141
    iput-boolean v2, p0, Llge/android/fmradio/FmRadioView;->mbEditSettingChannelState:Z

    .line 144
    iput v2, p0, Llge/android/fmradio/FmRadioView;->AT_COMMAND_NOTUSE:I

    .line 145
    iput v3, p0, Llge/android/fmradio/FmRadioView;->AT_COMMAND_901:I

    .line 146
    iput v4, p0, Llge/android/fmradio/FmRadioView;->AT_COMMAND_1063:I

    .line 147
    iput v5, p0, Llge/android/fmradio/FmRadioView;->AT_COMMAND_CANCEL:I

    .line 149
    iput v2, p0, Llge/android/fmradio/FmRadioView;->mAtCommandStatus:I

    .line 152
    const/16 v0, 0x2328

    iput v0, p0, Llge/android/fmradio/FmRadioView;->REFERENCE_FREQ:I

    .line 153
    const/16 v0, 0x5d

    iput v0, p0, Llge/android/fmradio/FmRadioView;->REFERENCE_POINT:I

    .line 154
    const/16 v0, 0x52

    iput v0, p0, Llge/android/fmradio/FmRadioView;->REFERENCE_LENGTH:I

    .line 155
    const/16 v0, 0x3e8

    iput v0, p0, Llge/android/fmradio/FmRadioView;->DIFFERENCE_FREQ:I

    .line 157
    iput v3, p0, Llge/android/fmradio/FmRadioView;->FMRADIO_MOVE_TOLERANCE:I

    .line 158
    const/4 v0, 0x5

    iput v0, p0, Llge/android/fmradio/FmRadioView;->FMRADIO_TUNNER_MOVE_SCALE:I

    .line 160
    const/16 v0, 0x140

    iput v0, p0, Llge/android/fmradio/FmRadioView;->REFERENCE_WIDTH:I

    .line 161
    const/16 v0, 0x1c7

    iput v0, p0, Llge/android/fmradio/FmRadioView;->REFERENCE_HEIGHT:I

    .line 164
    iput v2, p0, Llge/android/fmradio/FmRadioView;->SOUND_OUT_WIRED_HEADSET:I

    .line 165
    iput v3, p0, Llge/android/fmradio/FmRadioView;->SOUND_OUT_SPEAKER:I

    .line 166
    iput v4, p0, Llge/android/fmradio/FmRadioView;->SOUND_OUT_BLUETOOTH:I

    .line 176
    const/16 v0, 0x76

    iput v0, p0, Llge/android/fmradio/FmRadioView;->DISPLAY_VIEW_DOT_Y:I

    .line 178
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->mCredsDlg:Landroid/app/ProgressDialog;

    .line 181
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->radioView:Landroid/view/View;

    .line 183
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    .line 184
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    .line 185
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    .line 187
    const/16 v0, 0x30

    new-array v0, v0, [Llge/android/buttonflicking/ColorButton;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->mnChannelIndex:[Llge/android/buttonflicking/ColorButton;

    .line 196
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_frequency_background:Landroid/view/View;

    .line 197
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_radio_view:Landroid/view/View;

    .line 198
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_volume_background:Landroid/view/View;

    .line 199
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_volume_level_image:Landroid/view/View;

    .line 200
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_panelswitch:Landroid/view/View;

    .line 201
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_autoscan_background:Landroid/view/View;

    .line 202
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_scaning_level_image:Landroid/view/View;

    .line 248
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_btn_set_channel:Landroid/widget/Button;

    .line 249
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_btn_volume:Landroid/widget/Button;

    .line 250
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_btn_power_off:Landroid/widget/Button;

    .line 251
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_wheel_frequency_tuner:Landroid/widget/Button;

    .line 252
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_btn_edit_channel_set:Landroid/widget/Button;

    .line 253
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_btn_listen_Via:Landroid/widget/Button;

    .line 254
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_btn_autoscan_set_channel:Landroid/widget/Button;

    .line 255
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_btn_autoscan_skip:Landroid/widget/Button;

    .line 256
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_btn_autoscan_stop:Landroid/widget/Button;

    .line 257
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_btn_frequency_tune_pre:Landroid/widget/Button;

    .line 258
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_btn_frequency_tune_next:Landroid/widget/Button;

    .line 327
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_image_freq_dot:Llge/android/fmradio/FmRadioCustomViewDot;

    .line 337
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_image_channel_arrow:Llge/android/fmradio/FmRadioCustomViewChannelArrow;

    .line 346
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_customview_rds:Llge/android/fmradio/FmRadioCustomViewRDS;

    .line 355
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_text_frequency:Landroid/widget/TextView;

    .line 364
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_text_channel:Landroid/widget/TextView;

    .line 373
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_text_hertz:Landroid/widget/TextView;

    .line 382
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_text_scaning:Landroid/widget/TextView;

    .line 391
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_text_volume_title:Landroid/widget/TextView;

    .line 400
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_text_volume_value:Landroid/widget/TextView;

    .line 409
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_text_edit_channel_frequency:Landroid/widget/TextView;

    .line 418
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_image_sound_device:Landroid/widget/ImageView;

    .line 427
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->m_image_af:Landroid/widget/ImageView;

    .line 438
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->viewUpdateHandler:Llge/android/fmradio/FmRadioView$UpdateHandler;

    .line 439
    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->mVibrator:Landroid/os/Vibrator;

    .line 442
    new-instance v0, Llge/android/buttonflicking/EventListener;

    invoke-direct {v0}, Llge/android/buttonflicking/EventListener;-><init>()V

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->mListener:Llge/android/buttonflicking/EventListener;

    .line 444
    new-instance v0, Llge/android/fmradio/FmRadioView$1;

    invoke-direct {v0, p0}, Llge/android/fmradio/FmRadioView$1;-><init>(Llge/android/fmradio/FmRadioView;)V

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 645
    new-instance v0, Llge/android/fmradio/FmRadioView$2;

    invoke-direct {v0, p0}, Llge/android/fmradio/FmRadioView$2;-><init>(Llge/android/fmradio/FmRadioView;)V

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->mConnection:Landroid/content/ServiceConnection;

    .line 701
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->mFirstTimeHandler:Landroid/os/Handler;

    .line 703
    new-instance v0, Llge/android/fmradio/FmRadioView$3;

    invoke-direct {v0, p0}, Llge/android/fmradio/FmRadioView$3;-><init>(Llge/android/fmradio/FmRadioView;)V

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->mFirstRunnable:Ljava/lang/Runnable;

    .line 708
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->mSecondTimeHandler:Landroid/os/Handler;

    .line 710
    new-instance v0, Llge/android/fmradio/FmRadioView$4;

    invoke-direct {v0, p0}, Llge/android/fmradio/FmRadioView$4;-><init>(Llge/android/fmradio/FmRadioView;)V

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->mSecondRunnable:Ljava/lang/Runnable;

    .line 729
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->mAtCommandTimeHandler:Landroid/os/Handler;

    .line 731
    new-instance v0, Llge/android/fmradio/FmRadioView$5;

    invoke-direct {v0, p0}, Llge/android/fmradio/FmRadioView$5;-><init>(Llge/android/fmradio/FmRadioView;)V

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->mAtCommandRunnable:Ljava/lang/Runnable;

    .line 2228
    new-instance v0, Llge/android/fmradio/FmRadioView$29;

    invoke-direct {v0, p0}, Llge/android/fmradio/FmRadioView$29;-><init>(Llge/android/fmradio/FmRadioView;)V

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->mRunnable:Ljava/lang/Runnable;

    .line 2234
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->mTimeHandler:Landroid/os/Handler;

    .line 3053
    return-void
.end method

.method private DialogHandlerAutoScanCancel()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 2807
    iput-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbAutoScanState:Z

    .line 2808
    iput-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mAutoscanenable:Z

    .line 2809
    iput v0, p0, Llge/android/fmradio/FmRadioView;->mAutoScanOlderFreq:I

    .line 2810
    return-void
.end method

.method private DialogHandlerAutoScanOK()V
    .registers 4

    .prologue
    .line 2791
    sget-boolean v0, Llge/android/fmradio/FmRadioView;->$assertionsDisabled:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mService:Llge/android/fmradio/IFmRadioControlService;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2794
    :cond_e
    const-string v0, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioView][onTouchEvent]DIALOG_SET_CHANNEL_FROM_AUTOSCAN_YES_NO  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Llge/android/fmradio/FmRadioView;->mAutoScanChannelIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    iget v1, p0, Llge/android/fmradio/FmRadioView;->mAutoScanChannelIndex:I

    iget-object v2, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v2

    invoke-static {v0, v1, v2}, Llge/android/fmradio/FmRadioUtils;->SetChannelInfo(Landroid/content/SharedPreferences;II)Z

    .line 2797
    iget v0, p0, Llge/android/fmradio/FmRadioView;->mAutoScanChannelIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Llge/android/fmradio/FmRadioView;->mAutoScanChannelIndex:I

    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Llge/android/fmradio/FmRadioView;->DisplaySetChannelInfo(II)V

    .line 2800
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView;->DisplayMode(I)V

    .line 2802
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->runCatchAutoScanning()V

    .line 2803
    return-void
.end method

.method private DialogHandlerLongPressSetChannelOverwriteNo()V
    .registers 2

    .prologue
    .line 2828
    const/4 v0, 0x0

    iput-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mSetchannelLongPress:Z

    .line 2832
    return-void
.end method

.method private DialogHandlerLongPressSetChannelOverwriteYes()V
    .registers 4

    .prologue
    .line 2820
    const/4 v0, 0x0

    iput-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mSetchannelLongPress:Z

    .line 2822
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    iget v1, p0, Llge/android/fmradio/FmRadioView;->mTempChannelIndex:I

    iget v2, p0, Llge/android/fmradio/FmRadioView;->mTempDlgFreq:I

    invoke-static {v0, v1, v2}, Llge/android/fmradio/FmRadioUtils;->SetChannelInfo(Landroid/content/SharedPreferences;II)Z

    .line 2823
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    iget v1, p0, Llge/android/fmradio/FmRadioView;->mTempChannelIndex:I

    invoke-static {v0, v1}, Llge/android/fmradio/FmRadioUtils;->SetCurrentChannelInfo(Landroid/content/SharedPreferences;I)Z

    .line 2824
    iget v0, p0, Llge/android/fmradio/FmRadioView;->mTempChannelIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Llge/android/fmradio/FmRadioView;->mTempChannelIndex:I

    iget v1, p0, Llge/android/fmradio/FmRadioView;->mTempDlgFreq:I

    invoke-direct {p0, v0, v1}, Llge/android/fmradio/FmRadioView;->DisplaySetChannelInfo(II)V

    .line 2826
    return-void
.end method

.method private DialogHandlerReSetAllChannelAutoScanOK()V
    .registers 6

    .prologue
    const/16 v4, 0x222e

    const/4 v3, 0x1

    .line 2841
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->ReSetAllChannel(Landroid/content/SharedPreferences;)V

    .line 2842
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->ReSetCurrentChannelInfo(Landroid/content/SharedPreferences;)Z

    .line 2843
    iput v3, p0, Llge/android/fmradio/FmRadioView;->mAutoScanChannelIndex:I

    .line 2845
    const/4 v0, 0x1

    .local v0, nChannelIndex:I
    :goto_10
    const/16 v1, 0x30

    if-gt v0, v1, :cond_1e

    .line 2847
    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->GetColorButton(I)Llge/android/buttonflicking/ColorButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Llge/android/buttonflicking/ColorButton;->SetTextChannelNum(I)V

    .line 2845
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2849
    :cond_1e
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DisplayCurrentChannel()V

    .line 2852
    const-string v1, "FM RADIO"

    const-string v2, "[FmRadioView][onTouchEvent]DIALOG_SET_RESET_ALL_CHANNEL_AUTOSCAN_YES_NO"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioView;->DisplayMode(I)V

    .line 2856
    iput-boolean v3, p0, Llge/android/fmradio/FmRadioView;->mbAutoScanState:Z

    .line 2857
    const/4 v1, 0x0

    iput-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mAutoscanenable:Z

    .line 2859
    invoke-static {v4}, Llge/android/fmradio/FmRadioUtils;->tuneFrequency(I)V

    .line 2860
    invoke-direct {p0, v4}, Llge/android/fmradio/FmRadioView;->DisplayAutofrequencyImage(I)V

    .line 2861
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->runCatchAutoScanning()V

    .line 2862
    return-void
.end method

.method private DialogHandlerSetChannelOverwriteNo()V
    .registers 2

    .prologue
    .line 2836
    const/4 v0, 0x0

    iput-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mSetchannelshortPress:Z

    .line 2837
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbSettingChannelState:Z

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView;->SetSettingChannelState(Z)V

    .line 2838
    return-void
.end method

.method private DialogHandlerSetChannelOverwriteYes()V
    .registers 4

    .prologue
    .line 2812
    const/4 v0, 0x0

    iput-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mSetchannelshortPress:Z

    .line 2814
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    iget v1, p0, Llge/android/fmradio/FmRadioView;->mTempChannelIndex:I

    iget v2, p0, Llge/android/fmradio/FmRadioView;->mTempDlgFreq:I

    invoke-static {v0, v1, v2}, Llge/android/fmradio/FmRadioUtils;->SetChannelInfo(Landroid/content/SharedPreferences;II)Z

    .line 2815
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    iget v1, p0, Llge/android/fmradio/FmRadioView;->mTempChannelIndex:I

    invoke-static {v0, v1}, Llge/android/fmradio/FmRadioUtils;->SetCurrentChannelInfo(Landroid/content/SharedPreferences;I)Z

    .line 2816
    iget v0, p0, Llge/android/fmradio/FmRadioView;->mTempChannelIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Llge/android/fmradio/FmRadioView;->mTempChannelIndex:I

    iget v1, p0, Llge/android/fmradio/FmRadioView;->mTempDlgFreq:I

    invoke-direct {p0, v0, v1}, Llge/android/fmradio/FmRadioView;->DisplaySetChannelInfo(II)V

    .line 2817
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbSettingChannelState:Z

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView;->SetSettingChannelState(Z)V

    .line 2818
    return-void
.end method

.method private DisplayAudioDevice(I)V
    .registers 5
    .parameter "nDevices"

    .prologue
    const/4 v2, 0x0

    .line 2933
    sparse-switch p1, :sswitch_data_4e

    .line 2963
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioView][GetAudioDevice] +++[Error]+++ No Audio Devices"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    :goto_b
    return-void

    .line 2936
    :sswitch_c
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2939
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2941
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mAppwidgetset:Z

    if-nez v0, :cond_26

    .line 2942
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->showDialog(I)V

    .line 2943
    :cond_26
    iput-boolean v2, p0, Llge/android/fmradio/FmRadioView;->mAppwidgetset:Z

    goto :goto_b

    .line 2948
    :sswitch_29
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2951
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    .line 2956
    :sswitch_3b
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2959
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    .line 2933
    nop

    :sswitch_data_4e
    .sparse-switch
        0x64 -> :sswitch_c
        0xc8 -> :sswitch_29
        0x12c -> :sswitch_3b
    .end sparse-switch
.end method

.method private DisplayAudioDeviceLisenVia(I)V
    .registers 5
    .parameter "nDevices"

    .prologue
    const/4 v2, 0x0

    .line 2970
    sparse-switch p1, :sswitch_data_42

    .line 2997
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioView][GetAudioDevice] +++[Error]+++ No Audio Devices"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    :goto_b
    return-void

    .line 2973
    :sswitch_c
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2976
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    .line 2982
    :sswitch_1e
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2985
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    .line 2990
    :sswitch_30
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2993
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b

    .line 2970
    :sswitch_data_42
    .sparse-switch
        0x64 -> :sswitch_c
        0xc8 -> :sswitch_1e
        0x12c -> :sswitch_30
    .end sparse-switch
.end method

.method private DisplayAutofrequencyImage(I)V
    .registers 4
    .parameter "nFreq"

    .prologue
    .line 2259
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioView][Displayfrequency] nFreq"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Llge/android/fmradio/FmRadioUtils;->getfrequencyImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2263
    return-void
.end method

.method private DisplayCurrentChannel()V
    .registers 4

    .prologue
    .line 2155
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Llge/android/fmradio/FmRadioUtils;->GetCurrentChannelInfo(Landroid/content/SharedPreferences;)I

    move-result v0

    if-eqz v0, :cond_29

    .line 2158
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_channel()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->GetCurrentChannelInfo(Landroid/content/SharedPreferences;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2163
    :goto_28
    return-void

    .line 2161
    :cond_29
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_channel()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_28
.end method

.method private DisplayDlgAirPlainMode()V
    .registers 2

    .prologue
    .line 2222
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->showDialog(I)V

    .line 2223
    return-void
.end method

.method private DisplayDlgBlueToothMode()V
    .registers 2

    .prologue
    .line 2225
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->showDialog(I)V

    .line 2226
    return-void
.end method

.method private DisplayDlgWithoutEarjack()V
    .registers 2

    .prologue
    .line 2218
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->showDialog(I)V

    .line 2219
    return-void
.end method

.method private DisplayFrequency()V
    .registers 5

    .prologue
    .line 2067
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 2069
    .local v0, nLastFrequency:I
    const-string v1, "FM RADIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FmRadioView][DisplayFrequency] nFreq"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mTimeHandler:Landroid/os/Handler;

    iget-object v2, p0, Llge/android/fmradio/FmRadioView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2075
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_frequency()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit8 v3, v0, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit8 v3, v0, 0xa

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2078
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewDot_image_freq_dot()Llge/android/fmradio/FmRadioCustomViewDot;

    move-result-object v1

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView;->GetFreqDotx(I)I

    move-result v2

    const/16 v3, 0x76

    invoke-virtual {v1, v2, v3}, Llge/android/fmradio/FmRadioCustomViewDot;->SetDisplay(II)V

    .line 2080
    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mbEditSettingChannelState:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_75

    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    if-nez v1, :cond_75

    .line 2082
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioView;->DisplayMode(I)V

    .line 2086
    :goto_71
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DisplayCurrentChannel()V

    .line 2087
    return-void

    .line 2084
    :cond_75
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioView;->DisplayMode(I)V

    goto :goto_71
.end method

.method private DisplayFrequencyDot()V
    .registers 5

    .prologue
    .line 2090
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 2092
    .local v0, nLastFrequency:I
    const-string v1, "FM RADIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FmRadioView][DisplayFrequency] nFreq"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_frequency()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit8 v3, v0, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit8 v3, v0, 0xa

    rem-int/lit8 v3, v3, 0xa

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2097
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewDot_image_freq_dot()Llge/android/fmradio/FmRadioCustomViewDot;

    move-result-object v1

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView;->GetFreqDotx(I)I

    move-result v2

    const/16 v3, 0x76

    invoke-virtual {v1, v2, v3}, Llge/android/fmradio/FmRadioCustomViewDot;->SetDisplay(II)V

    .line 2098
    return-void
.end method

.method private DisplayInitView()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1962
    const-string v1, "FM RADIO"

    const-string v2, "[FmRadioView][DisplayInitView]"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1964
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioView;->setContentView(I)V

    .line 1965
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioView;->DisplayMode(I)V

    .line 1966
    const v1, 0x7f090013

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->radioView:Landroid/view/View;

    .line 1970
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_frequency_background()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1972
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_pre()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1974
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_next()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1977
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_pre()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1979
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_next()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1984
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_set_channel()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1987
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_volume()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1989
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_power_off()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1991
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_wheel_frequency_tuner()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1993
    const v1, 0x7f09002c

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Llge/android/buttonflicking/PanelSwitcher;

    new-instance v2, Llge/android/fmradio/FmRadioView$UpdateChannelSwingCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Llge/android/fmradio/FmRadioView$UpdateChannelSwingCallback;-><init>(Llge/android/fmradio/FmRadioView;Llge/android/fmradio/FmRadioView$1;)V

    invoke-virtual {v1, v2}, Llge/android/buttonflicking/PanelSwitcher;->registerCallBack(Llge/android/buttonflicking/PanelSwitcher$UpdateChannelSwingCallback;)V

    .line 1995
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_set_channel()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1997
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_skip()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1999
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_stop()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2005
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_edit_channel_set()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2008
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->IsAirPlainMode(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v4, :cond_b9

    .line 2010
    invoke-direct {p0, v5}, Llge/android/fmradio/FmRadioView;->DisplayPower(Z)V

    .line 2011
    invoke-direct {p0, v4}, Llge/android/fmradio/FmRadioView;->Displaychannelpoweroff(Z)V

    .line 2012
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mFirstTimeHandler:Landroid/os/Handler;

    iget-object v2, p0, Llge/android/fmradio/FmRadioView;->mFirstRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2013
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioView;->showDialog(I)V

    .line 2035
    :goto_a3
    const/4 v0, 0x1

    .local v0, i:I
    :goto_a4
    const/16 v1, 0x30

    if-gt v0, v1, :cond_e2

    .line 2037
    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->GetColorButton(I)Llge/android/buttonflicking/ColorButton;

    move-result-object v1

    invoke-virtual {v1, p0}, Llge/android/buttonflicking/ColorButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2039
    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->GetColorButton(I)Llge/android/buttonflicking/ColorButton;

    move-result-object v1

    invoke-virtual {v1, p0}, Llge/android/buttonflicking/ColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2035
    add-int/lit8 v0, v0, 0x1

    goto :goto_a4

    .line 2015
    .end local v0           #i:I
    :cond_b9
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->IsBlueToothMode(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v4, :cond_d2

    .line 2017
    invoke-direct {p0, v5}, Llge/android/fmradio/FmRadioView;->DisplayPower(Z)V

    .line 2018
    invoke-direct {p0, v4}, Llge/android/fmradio/FmRadioView;->Displaychannelpoweroff(Z)V

    .line 2019
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mFirstTimeHandler:Landroid/os/Handler;

    iget-object v2, p0, Llge/android/fmradio/FmRadioView;->mFirstRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2020
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioView;->showDialog(I)V

    goto :goto_a3

    .line 2027
    :cond_d2
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->initChannelArea()V

    .line 2030
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->WaitpopupOpen()V

    .line 2032
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mFirstTimeHandler:Landroid/os/Handler;

    iget-object v2, p0, Llge/android/fmradio/FmRadioView;->mFirstRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a3

    .line 2041
    .restart local v0       #i:I
    :cond_e2
    return-void
.end method

.method private DisplayLowBattery()V
    .registers 2

    .prologue
    .line 2182
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->showDialog(I)V

    .line 2183
    return-void
.end method

.method private DisplayMode(I)V
    .registers 5
    .parameter "nMode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 2266
    packed-switch p1, :pswitch_data_47c

    .line 2749
    :goto_5
    return-void

    .line 2270
    :pswitch_6
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_frequency_background()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2272
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_frequency()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2275
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_channel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2278
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_hertz()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2281
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewDot_image_freq_dot()Llge/android/fmradio/FmRadioCustomViewDot;

    move-result-object v0

    invoke-virtual {v0, v2}, Llge/android/fmradio/FmRadioCustomViewDot;->setVisibility(I)V

    .line 2284
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2290
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_pre()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2292
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_next()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2294
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_wheel_frequency_tuner()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2297
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_set_channel()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2303
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_volume()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2305
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_power_off()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2308
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_panelswitch()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2310
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_edit_channel_frequency()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2313
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_edit_channel_set()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2317
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_volume_background()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2319
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_volume_title()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2322
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_volume_value()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2325
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_volume_level_image()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2329
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_set_channel()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2331
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_skip()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2333
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_stop()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2336
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_autoscan_background()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2338
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_scaning_level_image()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2340
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_scaning()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2343
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewChannelArrow_image_channel_arrow()Llge/android/fmradio/FmRadioCustomViewChannelArrow;

    move-result-object v0

    invoke-virtual {v0, v2}, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->setVisibility(I)V

    goto/16 :goto_5

    .line 2350
    :pswitch_be
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_frequency_background()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2353
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_frequency()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2356
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_channel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2359
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_hertz()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2362
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewDot_image_freq_dot()Llge/android/fmradio/FmRadioCustomViewDot;

    move-result-object v0

    invoke-virtual {v0, v1}, Llge/android/fmradio/FmRadioCustomViewDot;->setVisibility(I)V

    .line 2365
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2368
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_af()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2371
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewRDS_customview_rds()Llge/android/fmradio/FmRadioCustomViewRDS;

    move-result-object v0

    invoke-virtual {v0, v1}, Llge/android/fmradio/FmRadioCustomViewRDS;->setVisibility(I)V

    .line 2375
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_pre()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2377
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_next()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2379
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_wheel_frequency_tuner()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2382
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_set_channel()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2387
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_volume()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2389
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_power_off()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2392
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_panelswitch()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2395
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_edit_channel_frequency()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2398
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_edit_channel_set()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2401
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_volume_background()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2404
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_volume_title()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2407
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_volume_value()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2410
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_volume_level_image()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2414
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_set_channel()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2416
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_skip()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2418
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_stop()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2421
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_autoscan_background()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2423
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_scaning_level_image()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2425
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_scaning()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2428
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewChannelArrow_image_channel_arrow()Llge/android/fmradio/FmRadioCustomViewChannelArrow;

    move-result-object v0

    invoke-virtual {v0, v2}, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->setVisibility(I)V

    goto/16 :goto_5

    .line 2434
    :pswitch_184
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_frequency_background()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2437
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_frequency()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2440
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_channel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2443
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_hertz()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2446
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewDot_image_freq_dot()Llge/android/fmradio/FmRadioCustomViewDot;

    move-result-object v0

    invoke-virtual {v0, v1}, Llge/android/fmradio/FmRadioCustomViewDot;->setVisibility(I)V

    .line 2449
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2452
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_af()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2455
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewRDS_customview_rds()Llge/android/fmradio/FmRadioCustomViewRDS;

    move-result-object v0

    invoke-virtual {v0, v1}, Llge/android/fmradio/FmRadioCustomViewRDS;->setVisibility(I)V

    .line 2459
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_pre()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2461
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_next()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2463
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_wheel_frequency_tuner()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2466
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_set_channel()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2471
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_volume()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2473
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_power_off()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2476
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_panelswitch()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2479
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_edit_channel_frequency()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2482
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_edit_channel_set()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2485
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_volume_background()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2487
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_volume_title()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2490
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_volume_value()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2493
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_volume_level_image()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2497
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_set_channel()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2499
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_skip()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2501
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_stop()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2504
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_autoscan_background()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2506
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_scaning_level_image()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2508
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_scaning()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2511
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewChannelArrow_image_channel_arrow()Llge/android/fmradio/FmRadioCustomViewChannelArrow;

    move-result-object v0

    invoke-virtual {v0, v1}, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->setVisibility(I)V

    goto/16 :goto_5

    .line 2518
    :pswitch_24a
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_frequency_background()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2520
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_frequency()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2522
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_channel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2525
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_hertz()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2528
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewDot_image_freq_dot()Llge/android/fmradio/FmRadioCustomViewDot;

    move-result-object v0

    invoke-virtual {v0, v2}, Llge/android/fmradio/FmRadioCustomViewDot;->setVisibility(I)V

    .line 2530
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2537
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_pre()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2539
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_next()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2541
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_wheel_frequency_tuner()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2545
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_set_channel()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2550
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_volume()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2552
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_power_off()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2555
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_panelswitch()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2557
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_edit_channel_frequency()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2560
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_edit_channel_set()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2563
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_volume_background()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2565
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_volume_title()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2568
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_volume_value()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2571
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_volume_level_image()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2575
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_set_channel()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2577
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_skip()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2579
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_stop()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2582
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_autoscan_background()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2584
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_scaning_level_image()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2586
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_scaning()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2589
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewChannelArrow_image_channel_arrow()Llge/android/fmradio/FmRadioCustomViewChannelArrow;

    move-result-object v0

    invoke-virtual {v0, v1}, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->setVisibility(I)V

    goto/16 :goto_5

    .line 2596
    :pswitch_302
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_frequency_background()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2598
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_frequency()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2600
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_channel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2603
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_hertz()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2606
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewDot_image_freq_dot()Llge/android/fmradio/FmRadioCustomViewDot;

    move-result-object v0

    invoke-virtual {v0, v2}, Llge/android/fmradio/FmRadioCustomViewDot;->setVisibility(I)V

    .line 2608
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2614
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_pre()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2616
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_next()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2618
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_wheel_frequency_tuner()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2621
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_set_channel()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2626
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_volume()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2628
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_power_off()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2631
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_panelswitch()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2633
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_edit_channel_frequency()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2636
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_edit_channel_set()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2639
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_volume_background()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2641
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_volume_title()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2644
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_volume_value()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2647
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_volume_level_image()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2651
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_set_channel()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2653
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_skip()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2655
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_stop()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2658
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_autoscan_background()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2660
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_scaning_level_image()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2662
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_scaning()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2665
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewChannelArrow_image_channel_arrow()Llge/android/fmradio/FmRadioCustomViewChannelArrow;

    move-result-object v0

    invoke-virtual {v0, v2}, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->setVisibility(I)V

    goto/16 :goto_5

    .line 2672
    :pswitch_3ba
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_frequency_background()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2674
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_frequency()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2677
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_channel()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2680
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_hertz()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2683
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewDot_image_freq_dot()Llge/android/fmradio/FmRadioCustomViewDot;

    move-result-object v0

    invoke-virtual {v0, v2}, Llge/android/fmradio/FmRadioCustomViewDot;->setVisibility(I)V

    .line 2685
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2692
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_pre()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2694
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_next()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2696
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_wheel_frequency_tuner()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2699
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_set_channel()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2704
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_volume()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2706
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_power_off()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2709
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_panelswitch()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2711
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_edit_channel_frequency()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2714
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_edit_channel_set()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2717
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_volume_background()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2719
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_volume_title()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2722
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_volume_value()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2725
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_volume_level_image()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2729
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_set_channel()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2731
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_skip()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2733
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_stop()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2736
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_autoscan_background()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2738
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_scaning_level_image()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2740
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_scaning()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2742
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v0

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView;->DisplayAutofrequencyImage(I)V

    .line 2744
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewChannelArrow_image_channel_arrow()Llge/android/fmradio/FmRadioCustomViewChannelArrow;

    move-result-object v0

    invoke-virtual {v0, v2}, Llge/android/fmradio/FmRadioCustomViewChannelArrow;->setVisibility(I)V

    goto/16 :goto_5

    .line 2266
    nop

    :pswitch_data_47c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_be
        :pswitch_184
        :pswitch_24a
        :pswitch_302
        :pswitch_3ba
    .end packed-switch
.end method

.method private DisplayPower(Z)V
    .registers 4
    .parameter "bPower"

    .prologue
    .line 2056
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 2057
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView;->DisplayMode(I)V

    .line 2059
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_power_off()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2065
    :goto_11
    return-void

    .line 2061
    :cond_12
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView;->DisplayMode(I)V

    .line 2063
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_power_off()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_11
.end method

.method private DisplayRDS()V
    .registers 5

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    const-string v2, "FM RADIO"

    .line 2110
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioView][DisplayRDS]"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetAfState(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_7d

    .line 2115
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_af()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2123
    :goto_18
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetRdsState(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_85

    .line 2125
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetRdsProgramTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 2126
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetRdsProgramTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3b

    .line 2128
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewRDS_customview_rds()Llge/android/fmradio/FmRadioCustomViewRDS;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetRdsProgramTypeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Llge/android/fmradio/FmRadioCustomViewRDS;->setText(ILjava/lang/String;)V

    .line 2132
    :cond_3b
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetRdsProgramService(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 2133
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetRdsProgramService(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_58

    .line 2135
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewRDS_customview_rds()Llge/android/fmradio/FmRadioCustomViewRDS;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetRdsProgramService(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Llge/android/fmradio/FmRadioCustomViewRDS;->setText(ILjava/lang/String;)V

    .line 2138
    :cond_58
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetRdsRadioText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 2139
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetRdsRadioText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_75

    .line 2141
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewRDS_customview_rds()Llge/android/fmradio/FmRadioCustomViewRDS;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetRdsRadioText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Llge/android/fmradio/FmRadioCustomViewRDS;->setText(ILjava/lang/String;)V

    .line 2145
    :cond_75
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewRDS_customview_rds()Llge/android/fmradio/FmRadioCustomViewRDS;

    move-result-object v0

    invoke-virtual {v0, v3}, Llge/android/fmradio/FmRadioCustomViewRDS;->setVisibility(I)V

    .line 2152
    :goto_7c
    return-void

    .line 2119
    :cond_7d
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_af()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_18

    .line 2148
    :cond_85
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioView] customview_rds = INVISIBLE "

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewRDS_customview_rds()Llge/android/fmradio/FmRadioCustomViewRDS;

    move-result-object v0

    invoke-virtual {v0, v1}, Llge/android/fmradio/FmRadioCustomViewRDS;->setVisibility(I)V

    goto :goto_7c
.end method

.method private DisplayRssi()V
    .registers 1

    .prologue
    .line 2107
    return-void
.end method

.method private DisplaySetChannelInfo(II)V
    .registers 6
    .parameter "nChannelIndex"
    .parameter "nFreq"

    .prologue
    const-string v2, "FM RADIO"

    .line 2166
    const-string v0, "FM RADIO"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FmRadioView][DisplaySetChannelInfo] nChannelIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    const-string v0, "FM RADIO"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FmRadioView][DisplaySetChannelInfo] nFreq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    invoke-virtual {p0, p1}, Llge/android/fmradio/FmRadioView;->GetColorButton(I)Llge/android/buttonflicking/ColorButton;

    move-result-object v0

    invoke-direct {p0, p2}, Llge/android/fmradio/FmRadioView;->GetStringFrequency(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Llge/android/buttonflicking/ColorButton;->SetTextFrequency(ILjava/lang/String;)V

    .line 2178
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_channel()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2179
    return-void
.end method

.method private DisplaySoundOutDevice(I)V
    .registers 5
    .parameter "nDevice"

    .prologue
    const/4 v2, 0x0

    .line 2187
    packed-switch p1, :pswitch_data_3e

    .line 2215
    :goto_4
    return-void

    .line 2190
    :pswitch_5
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2193
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 2198
    :pswitch_17
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2201
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2203
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DisplayDlgWithoutEarjack()V

    goto :goto_4

    .line 2208
    :pswitch_2c
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2211
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetImageView_image_sound_device()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 2187
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_17
        :pswitch_2c
    .end packed-switch
.end method

.method private DisplayVolume(II)V
    .registers 7
    .parameter "nMaxVolume"
    .parameter "nCurrentVolume"

    .prologue
    .line 2239
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mTimeHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2241
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView;->DisplayMode(I)V

    .line 2244
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_volume_background()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2246
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_volume_title()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2249
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_volume_value()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2252
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetView_volume_level_image()Landroid/view/View;

    move-result-object v0

    invoke-static {p2}, Llge/android/fmradio/FmRadioUtils;->getVolumeImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2254
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2255
    return-void
.end method

.method private Displaychannelpoweroff(Z)V
    .registers 4
    .parameter "bPower"

    .prologue
    .line 869
    if-eqz p1, :cond_11

    .line 870
    const/4 v0, 0x1

    .local v0, i:I
    :goto_3
    const/16 v1, 0x30

    if-gt v0, v1, :cond_14

    .line 872
    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->GetColorButton(I)Llge/android/buttonflicking/ColorButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Llge/android/buttonflicking/ColorButton;->SetTextChannelNum(I)V

    .line 870
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 875
    .end local v0           #i:I
    :cond_11
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->initChannelArea()V

    .line 876
    :cond_14
    return-void
.end method

.method private Displaysetchannelwindow(Z)V
    .registers 5
    .parameter "channelset"

    .prologue
    const v1, 0x7f09002b

    const/4 v2, 0x0

    .line 879
    if-eqz p1, :cond_4c

    .line 880
    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llge/android/fmradio/FmRadioCustomSetChannel;

    invoke-virtual {v0, v2}, Llge/android/fmradio/FmRadioCustomSetChannel;->setVisibility(I)V

    .line 881
    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llge/android/fmradio/FmRadioCustomSetChannel;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Llge/android/fmradio/FmRadioCustomSetChannel;->SetDisplay(II)V

    .line 883
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_pre()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 885
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_next()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 887
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_set_channel()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 889
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_volume()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 891
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_power_off()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 907
    :goto_4b
    return-void

    .line 894
    :cond_4c
    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llge/android/fmradio/FmRadioCustomSetChannel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Llge/android/fmradio/FmRadioCustomSetChannel;->setVisibility(I)V

    .line 896
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_pre()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020056

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 898
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_next()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 900
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_set_channel()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 902
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_volume()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 904
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_power_off()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 905
    invoke-direct {p0, v2}, Llge/android/fmradio/FmRadioView;->DisplayMode(I)V

    goto :goto_4b
.end method

.method private DrawTunnerChange()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1189
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbTuneState:Z

    if-ne v0, v2, :cond_1e

    .line 1191
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_10

    .line 1192
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1195
    :cond_10
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_wheel_frequency_tuner()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1196
    const/4 v0, 0x0

    iput-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbTuneState:Z

    .line 1202
    :goto_1d
    return-void

    .line 1199
    :cond_1e
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_wheel_frequency_tuner()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1200
    iput-boolean v2, p0, Llge/android/fmradio/FmRadioView;->mbTuneState:Z

    goto :goto_1d
.end method

.method private GetButton_btn_autoscan_set_channel()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_autoscan_set_channel:Landroid/widget/Button;

    if-nez v0, :cond_f

    .line 298
    const v0, 0x7f090065

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_autoscan_set_channel:Landroid/widget/Button;

    .line 300
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_autoscan_set_channel:Landroid/widget/Button;

    return-object v0
.end method

.method private GetButton_btn_autoscan_skip()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_autoscan_skip:Landroid/widget/Button;

    if-nez v0, :cond_f

    .line 304
    const v0, 0x7f090066

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_autoscan_skip:Landroid/widget/Button;

    .line 306
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_autoscan_skip:Landroid/widget/Button;

    return-object v0
.end method

.method private GetButton_btn_autoscan_stop()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_autoscan_stop:Landroid/widget/Button;

    if-nez v0, :cond_f

    .line 310
    const v0, 0x7f090067

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_autoscan_stop:Landroid/widget/Button;

    .line 312
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_autoscan_stop:Landroid/widget/Button;

    return-object v0
.end method

.method private GetButton_btn_edit_channel_set()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_edit_channel_set:Landroid/widget/Button;

    if-nez v0, :cond_f

    .line 286
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_edit_channel_set:Landroid/widget/Button;

    .line 288
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_edit_channel_set:Landroid/widget/Button;

    return-object v0
.end method

.method private GetButton_btn_frequency_tune_next()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_frequency_tune_next:Landroid/widget/Button;

    if-nez v0, :cond_f

    .line 322
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_frequency_tune_next:Landroid/widget/Button;

    .line 324
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_frequency_tune_next:Landroid/widget/Button;

    return-object v0
.end method

.method private GetButton_btn_frequency_tune_pre()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_frequency_tune_pre:Landroid/widget/Button;

    if-nez v0, :cond_f

    .line 316
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_frequency_tune_pre:Landroid/widget/Button;

    .line 318
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_frequency_tune_pre:Landroid/widget/Button;

    return-object v0
.end method

.method private GetButton_btn_power_off()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_power_off:Landroid/widget/Button;

    if-nez v0, :cond_f

    .line 274
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_power_off:Landroid/widget/Button;

    .line 276
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_power_off:Landroid/widget/Button;

    return-object v0
.end method

.method private GetButton_btn_set_channel()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_set_channel:Landroid/widget/Button;

    if-nez v0, :cond_f

    .line 262
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_set_channel:Landroid/widget/Button;

    .line 264
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_set_channel:Landroid/widget/Button;

    return-object v0
.end method

.method private GetButton_btn_volume()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_volume:Landroid/widget/Button;

    if-nez v0, :cond_f

    .line 268
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_volume:Landroid/widget/Button;

    .line 270
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_btn_volume:Landroid/widget/Button;

    return-object v0
.end method

.method private GetButton_wheel_frequency_tuner()Landroid/widget/Button;
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_wheel_frequency_tuner:Landroid/widget/Button;

    if-nez v0, :cond_f

    .line 280
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_wheel_frequency_tuner:Landroid/widget/Button;

    .line 282
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_wheel_frequency_tuner:Landroid/widget/Button;

    return-object v0
.end method

.method private GetFmRadioCustomViewChannelArrow_image_channel_arrow()Llge/android/fmradio/FmRadioCustomViewChannelArrow;
    .registers 2

    .prologue
    .line 340
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_image_channel_arrow:Llge/android/fmradio/FmRadioCustomViewChannelArrow;

    if-nez v0, :cond_f

    .line 341
    const v0, 0x7f090068

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llge/android/fmradio/FmRadioCustomViewChannelArrow;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_image_channel_arrow:Llge/android/fmradio/FmRadioCustomViewChannelArrow;

    .line 343
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_image_channel_arrow:Llge/android/fmradio/FmRadioCustomViewChannelArrow;

    return-object v0
.end method

.method private GetFmRadioCustomViewDot_image_freq_dot()Llge/android/fmradio/FmRadioCustomViewDot;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_image_freq_dot:Llge/android/fmradio/FmRadioCustomViewDot;

    if-nez v0, :cond_f

    .line 331
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llge/android/fmradio/FmRadioCustomViewDot;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_image_freq_dot:Llge/android/fmradio/FmRadioCustomViewDot;

    .line 333
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_image_freq_dot:Llge/android/fmradio/FmRadioCustomViewDot;

    return-object v0
.end method

.method private GetFmRadioCustomViewRDS_customview_rds()Llge/android/fmradio/FmRadioCustomViewRDS;
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_customview_rds:Llge/android/fmradio/FmRadioCustomViewRDS;

    if-nez v0, :cond_f

    .line 350
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llge/android/fmradio/FmRadioCustomViewRDS;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_customview_rds:Llge/android/fmradio/FmRadioCustomViewRDS;

    .line 352
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_customview_rds:Llge/android/fmradio/FmRadioCustomViewRDS;

    return-object v0
.end method

.method private GetFreqDotx(I)I
    .registers 8
    .parameter "nFreq"

    .prologue
    const/16 v3, 0x5d

    const/16 v2, 0x2328

    const-string v5, "[FmRadioView] GetFreqDotx"

    const-string v4, "FM RADIO"

    .line 2914
    if-ge p1, v2, :cond_33

    .line 2915
    const-string v0, "FM RADIO"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FmRadioView] GetFreqDotx"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, v2, p1

    mul-int/lit8 v1, v1, 0x52

    div-int/lit16 v1, v1, 0x3e8

    sub-int v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    sub-int v0, v2, p1

    mul-int/lit8 v0, v0, 0x52

    div-int/lit16 v0, v0, 0x3e8

    sub-int v0, v3, v0

    .line 2920
    :goto_32
    return v0

    .line 2919
    :cond_33
    const-string v0, "FM RADIO"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FmRadioView] GetFreqDotx"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p1, v2

    mul-int/lit8 v1, v1, 0x52

    div-int/lit16 v1, v1, 0x3e8

    add-int/lit8 v1, v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    sub-int v0, p1, v2

    mul-int/lit8 v0, v0, 0x52

    div-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v0, v0, 0x5d

    goto :goto_32
.end method

.method private GetImageView_image_af()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_image_af:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    .line 431
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_image_af:Landroid/widget/ImageView;

    .line 433
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_image_af:Landroid/widget/ImageView;

    return-object v0
.end method

.method private GetImageView_image_sound_device()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 421
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_image_sound_device:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    .line 422
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_image_sound_device:Landroid/widget/ImageView;

    .line 424
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_image_sound_device:Landroid/widget/ImageView;

    return-object v0
.end method

.method private GetLisnViaItems()[Ljava/lang/CharSequence;
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "Wired headset"

    const-string v7, "Speaker"

    const-string v6, "Bluetooth"

    .line 3004
    const-string v1, "FM RADIO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FmRadioView] GetLisnViaItems, getCurrentSoundDevice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getCurrentSoundDevice()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/CharSequence;

    .line 3007
    .local v0, csItems:[Ljava/lang/CharSequence;
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getCurrentSoundDevice()I

    move-result v1

    sparse-switch v1, :sswitch_data_4c

    .line 3021
    const/4 v1, 0x0

    .line 3024
    :goto_2f
    return-object v1

    .line 3010
    :sswitch_30
    const-string v1, "Wired headset"

    aput-object v8, v0, v4

    .line 3011
    const-string v1, "Bluetooth"

    aput-object v6, v0, v5

    :goto_38
    move-object v1, v0

    .line 3024
    goto :goto_2f

    .line 3014
    :sswitch_3a
    const-string v1, "Speaker"

    aput-object v7, v0, v4

    .line 3015
    const-string v1, "Bluetooth"

    aput-object v6, v0, v5

    goto :goto_38

    .line 3018
    :sswitch_43
    const-string v1, "Wired headset"

    aput-object v8, v0, v4

    .line 3019
    const-string v1, "Speaker"

    aput-object v7, v0, v5

    goto :goto_38

    .line 3007
    :sswitch_data_4c
    .sparse-switch
        0x64 -> :sswitch_30
        0xc8 -> :sswitch_3a
        0x12c -> :sswitch_43
    .end sparse-switch
.end method

.method private GetStringFrequency(I)Ljava/lang/String;
    .registers 5
    .parameter "nFreq"

    .prologue
    .line 1932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, p1, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, p1, 0xa

    rem-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1933
    .local v0, strFreq:Ljava/lang/String;
    return-object v0
.end method

.method private GetTextView_text_channel()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_channel:Landroid/widget/TextView;

    if-nez v0, :cond_f

    .line 368
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_channel:Landroid/widget/TextView;

    .line 370
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_channel:Landroid/widget/TextView;

    return-object v0
.end method

.method private GetTextView_text_edit_channel_frequency()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 412
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_edit_channel_frequency:Landroid/widget/TextView;

    if-nez v0, :cond_f

    .line 413
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_edit_channel_frequency:Landroid/widget/TextView;

    .line 415
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_edit_channel_frequency:Landroid/widget/TextView;

    return-object v0
.end method

.method private GetTextView_text_frequency()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_frequency:Landroid/widget/TextView;

    if-nez v0, :cond_f

    .line 359
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_frequency:Landroid/widget/TextView;

    .line 361
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_frequency:Landroid/widget/TextView;

    return-object v0
.end method

.method private GetTextView_text_hertz()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_hertz:Landroid/widget/TextView;

    if-nez v0, :cond_f

    .line 377
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_hertz:Landroid/widget/TextView;

    .line 379
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_hertz:Landroid/widget/TextView;

    return-object v0
.end method

.method private GetTextView_text_scaning()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_scaning:Landroid/widget/TextView;

    if-nez v0, :cond_f

    .line 386
    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_scaning:Landroid/widget/TextView;

    .line 388
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_scaning:Landroid/widget/TextView;

    return-object v0
.end method

.method private GetTextView_text_volume_title()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_volume_title:Landroid/widget/TextView;

    if-nez v0, :cond_f

    .line 395
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_volume_title:Landroid/widget/TextView;

    .line 397
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_volume_title:Landroid/widget/TextView;

    return-object v0
.end method

.method private GetTextView_text_volume_value()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_volume_value:Landroid/widget/TextView;

    if-nez v0, :cond_f

    .line 404
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_volume_value:Landroid/widget/TextView;

    .line 406
    :cond_f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_text_volume_value:Landroid/widget/TextView;

    return-object v0
.end method

.method private GetTunnerCount(II)I
    .registers 5
    .parameter "nStart"
    .parameter "nMove"

    .prologue
    .line 1206
    const/4 v0, 0x0

    .line 1208
    .local v0, nDiff:I
    if-le p1, p2, :cond_8

    .line 1210
    sub-int v0, p1, p2

    .line 1212
    div-int/lit8 v1, v0, 0x5

    .line 1221
    :goto_7
    return v1

    .line 1214
    :cond_8
    if-ge p1, p2, :cond_f

    .line 1216
    sub-int v0, p2, p1

    .line 1218
    div-int/lit8 v1, v0, 0x5

    goto :goto_7

    .line 1221
    :cond_f
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private GetView_autoscan_background()Landroid/view/View;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_autoscan_background:Landroid/view/View;

    if-nez v0, :cond_d

    .line 237
    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_autoscan_background:Landroid/view/View;

    .line 239
    :cond_d
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_autoscan_background:Landroid/view/View;

    return-object v0
.end method

.method private GetView_frequency_background()Landroid/view/View;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_frequency_background:Landroid/view/View;

    if-nez v0, :cond_d

    .line 206
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_frequency_background:Landroid/view/View;

    .line 208
    :cond_d
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_frequency_background:Landroid/view/View;

    return-object v0
.end method

.method private GetView_panelswitch()Landroid/view/View;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_panelswitch:Landroid/view/View;

    if-nez v0, :cond_d

    .line 231
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_panelswitch:Landroid/view/View;

    .line 233
    :cond_d
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_panelswitch:Landroid/view/View;

    return-object v0
.end method

.method private GetView_radio_view()Landroid/view/View;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_radio_view:Landroid/view/View;

    if-nez v0, :cond_d

    .line 213
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_radio_view:Landroid/view/View;

    .line 215
    :cond_d
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_radio_view:Landroid/view/View;

    return-object v0
.end method

.method private GetView_scaning_level_image()Landroid/view/View;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_scaning_level_image:Landroid/view/View;

    if-nez v0, :cond_d

    .line 243
    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_scaning_level_image:Landroid/view/View;

    .line 245
    :cond_d
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_scaning_level_image:Landroid/view/View;

    return-object v0
.end method

.method private GetView_volume_background()Landroid/view/View;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_volume_background:Landroid/view/View;

    if-nez v0, :cond_d

    .line 219
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_volume_background:Landroid/view/View;

    .line 221
    :cond_d
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_volume_background:Landroid/view/View;

    return-object v0
.end method

.method private GetView_volume_level_image()Landroid/view/View;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_volume_level_image:Landroid/view/View;

    if-nez v0, :cond_d

    .line 225
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->m_volume_level_image:Landroid/view/View;

    .line 227
    :cond_d
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->m_volume_level_image:Landroid/view/View;

    return-object v0
.end method

.method private IsAfState()Z
    .registers 4

    .prologue
    .line 1718
    const-string v0, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioView] IsAfState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetAfState(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetAfState(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private IsAirPlainMode()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 632
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->IsAirPlainMode(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    .line 635
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private IsBlueToothMode()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 639
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->IsBlueToothMode(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    .line 642
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private IsRdsState()Z
    .registers 2

    .prologue
    .line 1715
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetRdsState(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private RunAFMode()V
    .registers 3

    .prologue
    .line 2901
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->IsRdsState()Z

    move-result v0

    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mTempAfMode:Z

    invoke-static {v0, v1}, Llge/android/fmradio/FmRadioUtils;->runRdsMode(ZZ)V

    .line 2902
    return-void
.end method

.method private RunAgainAutoScanning()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const-string v4, "FM RADIO"

    .line 2865
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetLastRssi(Landroid/content/Context;)I

    move-result v0

    .line 2866
    .local v0, mRssi:I
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v1

    iget v2, p0, Llge/android/fmradio/FmRadioView;->mAutoScanOlderFreq:I

    if-lt v1, v2, :cond_1b

    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v1

    const/16 v2, 0x2a30

    if-ne v1, v2, :cond_52

    .line 2868
    :cond_1b
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioView][RunAgainAutoScanning]FmRadioUtils.GetLastFrequency"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mAutoScanOlderFreq"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Llge/android/fmradio/FmRadioView;->mAutoScanOlderFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    iput-boolean v3, p0, Llge/android/fmradio/FmRadioView;->mbAutoScanState:Z

    .line 2871
    iput v3, p0, Llge/android/fmradio/FmRadioView;->mAutoScanOlderFreq:I

    .line 2872
    invoke-direct {p0, v3}, Llge/android/fmradio/FmRadioView;->DisplayMode(I)V

    .line 2875
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioView;->showDialog(I)V

    .line 2893
    :goto_51
    return-void

    .line 2883
    :cond_52
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v1

    iput v1, p0, Llge/android/fmradio/FmRadioView;->mAutoScanOlderFreq:I

    .line 2885
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioView][RunAgainAutoScanning]FmRadioUtils.GetLastRssi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    iget v1, p0, Llge/android/fmradio/FmRadioView;->mAutoScanOlderFreq:I

    const/16 v2, 0x222e

    if-ne v1, v2, :cond_84

    const/16 v1, 0x6e

    if-le v0, v1, :cond_84

    .line 2887
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioView;->DisplayMode(I)V

    .line 2889
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->runCatchAutoScanning()V

    goto :goto_51

    .line 2892
    :cond_84
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioView;->DisplayMode(I)V

    goto :goto_51
.end method

.method private RunFirstChannel()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2925
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Llge/android/fmradio/FmRadioUtils;->GetSetChannelCount(Landroid/content/SharedPreferences;)I

    move-result v0

    if-eqz v0, :cond_17

    .line 2926
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Llge/android/fmradio/FmRadioUtils;->SetCurrentChannelInfo(Landroid/content/SharedPreferences;I)Z

    .line 2927
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Llge/android/fmradio/FmRadioUtils;->GetChannelInfo(Landroid/content/SharedPreferences;I)I

    move-result v0

    invoke-static {v0}, Llge/android/fmradio/FmRadioUtils;->tuneFrequency(I)V

    .line 2929
    :cond_17
    return-void
.end method

.method private RunStationMode()V
    .registers 3

    .prologue
    .line 2897
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mTempStationMode:Z

    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->IsAfState()Z

    move-result v1

    invoke-static {v0, v1}, Llge/android/fmradio/FmRadioUtils;->runRdsMode(ZZ)V

    .line 2898
    return-void
.end method

.method private SetAFMode(Z)V
    .registers 2
    .parameter "bMode"

    .prologue
    .line 2909
    iput-boolean p1, p0, Llge/android/fmradio/FmRadioView;->mTempAfMode:Z

    .line 2910
    return-void
.end method

.method private SetAtCommand(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    const-string v2, "FM RADIO"

    .line 3029
    const-string v1, "lgeatcommand"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3031
    .local v0, shuf:Ljava/lang/String;
    if-eqz v0, :cond_1f

    .line 3032
    const/4 v1, 0x0

    iput v1, p0, Llge/android/fmradio/FmRadioView;->mAtCommandStatus:I

    .line 3034
    const-string v1, "cancel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3035
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][onCreate] lgeatcommand_cancle"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    const/4 v1, 0x3

    iput v1, p0, Llge/android/fmradio/FmRadioView;->mAtCommandStatus:I

    .line 3047
    :cond_1f
    :goto_1f
    return-void

    .line 3038
    :cond_20
    const-string v1, "first"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 3039
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][onCreate] lgeatcommand_first"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    const/4 v1, 0x1

    iput v1, p0, Llge/android/fmradio/FmRadioView;->mAtCommandStatus:I

    goto :goto_1f

    .line 3042
    :cond_33
    const-string v1, "second"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3043
    const-string v1, "FM RADIO"

    const-string v1, "[FmRadioView][onCreate] lgeatcommand_second"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    const/4 v1, 0x2

    iput v1, p0, Llge/android/fmradio/FmRadioView;->mAtCommandStatus:I

    goto :goto_1f
.end method

.method private SetSettingChannelState(Z)V
    .registers 3
    .parameter "bState"

    .prologue
    .line 2779
    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbSettingChannelState:Z

    .line 2780
    return-void

    .line 2779
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private SetStationMode(Z)V
    .registers 2
    .parameter "bMode"

    .prologue
    .line 2905
    iput-boolean p1, p0, Llge/android/fmradio/FmRadioView;->mTempStationMode:Z

    .line 2906
    return-void
.end method

.method private SetVolumeControlState(Z)V
    .registers 4
    .parameter "bVolumeControlState"

    .prologue
    const/4 v1, 0x1

    .line 2753
    if-nez p1, :cond_16

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbVolumeControlState:Z

    .line 2755
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbVolumeControlState:Z

    if-ne v0, v1, :cond_18

    .line 2756
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetStreamMaxVolume(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetCurrentVolumeLevel(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Llge/android/fmradio/FmRadioView;->DisplayVolume(II)V

    .line 2761
    :goto_15
    return-void

    .line 2753
    :cond_16
    const/4 v0, 0x0

    goto :goto_4

    .line 2759
    :cond_18
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DisplayFrequency()V

    goto :goto_15
.end method

.method private SetVolumeLevel(I)V
    .registers 5
    .parameter "nVolume"

    .prologue
    .line 2765
    const-string v0, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SetCurrentVolumeLevel] nVolume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetStreamMaxVolume(Landroid/content/Context;)I

    move-result v0

    if-gt p1, v0, :cond_33

    if-ltz p1, :cond_33

    .line 2769
    invoke-static {p0, p1}, Llge/android/fmradio/FmRadioUtils;->SetCurrentVolumeLevel(Landroid/content/Context;I)V

    .line 2771
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbVolumeControlState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_33

    .line 2773
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetStreamMaxVolume(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetCurrentVolumeLevel(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Llge/android/fmradio/FmRadioView;->DisplayVolume(II)V

    .line 2776
    :cond_33
    return-void
.end method

.method private TunningsDummysLeft(I)V
    .registers 7
    .parameter "nCount"

    .prologue
    const/16 v4, 0x222e

    .line 1225
    const-string v2, "FM RADIO"

    const-string v3, "[FmRadioView] TunningLeft"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v2, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 1229
    .local v0, nFreq:I
    if-le v0, v4, :cond_23

    .line 1232
    const/16 v1, 0xa

    .line 1233
    .local v1, nFrequencyStep:I
    mul-int v2, v1, p1

    sub-int/2addr v0, v2

    .line 1235
    if-gt v0, v4, :cond_1a

    .line 1236
    const/16 v0, 0x2a30

    .line 1243
    .end local v1           #nFrequencyStep:I
    :cond_1a
    :goto_1a
    iget-object v2, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2, v0}, Llge/android/fmradio/FmRadioUtils;->SetLastFreqeuncy(Landroid/content/SharedPreferences;I)Z

    .line 1244
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DisplayFrequencyDot()V

    .line 1245
    return-void

    .line 1239
    :cond_23
    if-ne v0, v4, :cond_1a

    .line 1240
    const/16 v0, 0x2a30

    goto :goto_1a
.end method

.method private TunningsDummysRight(I)V
    .registers 7
    .parameter "nCount"

    .prologue
    const/16 v4, 0x2a30

    .line 1248
    const-string v2, "FM RADIO"

    const-string v3, "[FmRadioControlService] TunningRight"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v2, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 1252
    .local v0, nFreq:I
    if-ge v0, v4, :cond_23

    .line 1255
    const/16 v1, 0xa

    .line 1256
    .local v1, nFrequencyStep:I
    mul-int v2, v1, p1

    add-int/2addr v0, v2

    .line 1258
    if-lt v0, v4, :cond_1a

    .line 1259
    const/16 v0, 0x222e

    .line 1266
    .end local v1           #nFrequencyStep:I
    :cond_1a
    :goto_1a
    iget-object v2, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2, v0}, Llge/android/fmradio/FmRadioUtils;->SetLastFreqeuncy(Landroid/content/SharedPreferences;I)Z

    .line 1267
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DisplayFrequencyDot()V

    .line 1268
    return-void

    .line 1262
    :cond_23
    if-ne v0, v4, :cond_1a

    .line 1263
    const/16 v0, 0x222e

    goto :goto_1a
.end method

.method private WaitpopupOpen()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 2043
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mCredsDlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_2b

    .line 2045
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->mCredsDlg:Landroid/app/ProgressDialog;

    .line 2047
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mCredsDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2b

    .line 2048
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mCredsDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2049
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mCredsDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2050
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mCredsDlg:Landroid/app/ProgressDialog;

    const v1, 0x7f07005b

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2051
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mCredsDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 2054
    :cond_2b
    return-void
.end method

.method static synthetic access$000(Llge/android/fmradio/FmRadioView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DisplayFrequency()V

    return-void
.end method

.method static synthetic access$100(Llge/android/fmradio/FmRadioView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbAutoScanState:Z

    return v0
.end method

.method static synthetic access$1000(Llge/android/fmradio/FmRadioView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DisplayDlgAirPlainMode()V

    return-void
.end method

.method static synthetic access$102(Llge/android/fmradio/FmRadioView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Llge/android/fmradio/FmRadioView;->mbAutoScanState:Z

    return p1
.end method

.method static synthetic access$1100(Llge/android/fmradio/FmRadioView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DisplayDlgBlueToothMode()V

    return-void
.end method

.method static synthetic access$1200(Llge/android/fmradio/FmRadioView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbSettingChannelState:Z

    return v0
.end method

.method static synthetic access$1202(Llge/android/fmradio/FmRadioView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Llge/android/fmradio/FmRadioView;->mbSettingChannelState:Z

    return p1
.end method

.method static synthetic access$1300(Llge/android/fmradio/FmRadioView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbEditSettingChannelState:Z

    return v0
.end method

.method static synthetic access$1302(Llge/android/fmradio/FmRadioView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Llge/android/fmradio/FmRadioView;->mbEditSettingChannelState:Z

    return p1
.end method

.method static synthetic access$1400(Llge/android/fmradio/FmRadioView;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_set_channel()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Llge/android/fmradio/FmRadioView;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_skip()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Llge/android/fmradio/FmRadioView;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_autoscan_stop()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Llge/android/fmradio/FmRadioView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mAutoscanenable:Z

    return v0
.end method

.method static synthetic access$1702(Llge/android/fmradio/FmRadioView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Llge/android/fmradio/FmRadioView;->mAutoscanenable:Z

    return p1
.end method

.method static synthetic access$1800(Llge/android/fmradio/FmRadioView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mSetchannelshortPress:Z

    return v0
.end method

.method static synthetic access$1802(Llge/android/fmradio/FmRadioView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Llge/android/fmradio/FmRadioView;->mSetchannelshortPress:Z

    return p1
.end method

.method static synthetic access$1900(Llge/android/fmradio/FmRadioView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mSetchannelLongPress:Z

    return v0
.end method

.method static synthetic access$1902(Llge/android/fmradio/FmRadioView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Llge/android/fmradio/FmRadioView;->mSetchannelLongPress:Z

    return p1
.end method

.method static synthetic access$200(Llge/android/fmradio/FmRadioView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->RunAgainAutoScanning()V

    return-void
.end method

.method static synthetic access$2000(Llge/android/fmradio/FmRadioView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->WaitpopupOpen()V

    return-void
.end method

.method static synthetic access$2100(Llge/android/fmradio/FmRadioView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    return v0
.end method

.method static synthetic access$2102(Llge/android/fmradio/FmRadioView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    return p1
.end method

.method static synthetic access$2200(Llge/android/fmradio/FmRadioView;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_pre()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Llge/android/fmradio/FmRadioView;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_frequency_tune_next()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Llge/android/fmradio/FmRadioView;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_set_channel()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Llge/android/fmradio/FmRadioView;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetButton_btn_volume()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Llge/android/fmradio/FmRadioView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioView;->DisplayAudioDevice(I)V

    return-void
.end method

.method static synthetic access$2700(Llge/android/fmradio/FmRadioView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioView;->DisplayAudioDeviceLisenVia(I)V

    return-void
.end method

.method static synthetic access$2800(Llge/android/fmradio/FmRadioView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DisplayLowBattery()V

    return-void
.end method

.method static synthetic access$2902(Llge/android/fmradio/FmRadioView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Llge/android/fmradio/FmRadioView;->mAppwidgetset:Z

    return p1
.end method

.method static synthetic access$300(Llge/android/fmradio/FmRadioView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Llge/android/fmradio/FmRadioView;->mAtCommandStatus:I

    return v0
.end method

.method static synthetic access$3000(Llge/android/fmradio/FmRadioView;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioView;->SetAtCommand(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3100(Llge/android/fmradio/FmRadioView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->IsAirPlainMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Llge/android/fmradio/FmRadioView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->IsBlueToothMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Llge/android/fmradio/FmRadioView;)Llge/android/fmradio/FmRadioCustomViewChannelArrow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetFmRadioCustomViewChannelArrow_image_channel_arrow()Llge/android/fmradio/FmRadioCustomViewChannelArrow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Llge/android/fmradio/FmRadioView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DialogHandlerAutoScanCancel()V

    return-void
.end method

.method static synthetic access$3500(Llge/android/fmradio/FmRadioView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DialogHandlerAutoScanOK()V

    return-void
.end method

.method static synthetic access$3600(Llge/android/fmradio/FmRadioView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DialogHandlerSetChannelOverwriteNo()V

    return-void
.end method

.method static synthetic access$3700(Llge/android/fmradio/FmRadioView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DialogHandlerSetChannelOverwriteYes()V

    return-void
.end method

.method static synthetic access$3800(Llge/android/fmradio/FmRadioView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DialogHandlerLongPressSetChannelOverwriteNo()V

    return-void
.end method

.method static synthetic access$3900(Llge/android/fmradio/FmRadioView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DialogHandlerLongPressSetChannelOverwriteYes()V

    return-void
.end method

.method static synthetic access$400(Llge/android/fmradio/FmRadioView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DisplayFrequencyDot()V

    return-void
.end method

.method static synthetic access$4000(Llge/android/fmradio/FmRadioView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DialogHandlerReSetAllChannelAutoScanOK()V

    return-void
.end method

.method static synthetic access$4100(Llge/android/fmradio/FmRadioView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->RunFirstChannel()V

    return-void
.end method

.method static synthetic access$4200(Llge/android/fmradio/FmRadioView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->RunStationMode()V

    return-void
.end method

.method static synthetic access$4300(Llge/android/fmradio/FmRadioView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioView;->SetStationMode(Z)V

    return-void
.end method

.method static synthetic access$4400(Llge/android/fmradio/FmRadioView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->RunAFMode()V

    return-void
.end method

.method static synthetic access$4500(Llge/android/fmradio/FmRadioView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioView;->SetAFMode(Z)V

    return-void
.end method

.method static synthetic access$4700(Llge/android/fmradio/FmRadioView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbVolumeControlState:Z

    return v0
.end method

.method static synthetic access$4800(Llge/android/fmradio/FmRadioView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioView;->SetVolumeControlState(Z)V

    return-void
.end method

.method static synthetic access$4900(Llge/android/fmradio/FmRadioView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DisplayInitView()V

    return-void
.end method

.method static synthetic access$500(Llge/android/fmradio/FmRadioView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DisplayRssi()V

    return-void
.end method

.method static synthetic access$5000(Llge/android/fmradio/FmRadioView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioView;->setFrequency(I)V

    return-void
.end method

.method static synthetic access$5102(Llge/android/fmradio/FmRadioView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Llge/android/fmradio/FmRadioView;->mAutoScanDlgFreq:I

    return p1
.end method

.method static synthetic access$602(Llge/android/fmradio/FmRadioView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Llge/android/fmradio/FmRadioView;->mbSystemPowerOnState:Z

    return p1
.end method

.method static synthetic access$700(Llge/android/fmradio/FmRadioView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioView;->DisplayPower(Z)V

    return-void
.end method

.method static synthetic access$800(Llge/android/fmradio/FmRadioView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Llge/android/fmradio/FmRadioView;->Displaychannelpoweroff(Z)V

    return-void
.end method

.method static synthetic access$900(Llge/android/fmradio/FmRadioView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DisplayDlgWithoutEarjack()V

    return-void
.end method

.method private initChannelArea()V
    .registers 5

    .prologue
    .line 1910
    const/4 v1, 0x0

    .line 1913
    .local v1, nFreq:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_2
    const/16 v2, 0x30

    if-gt v0, v2, :cond_29

    .line 1917
    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->GetColorButton(I)Llge/android/buttonflicking/ColorButton;

    move-result-object v2

    invoke-virtual {v2, p0}, Llge/android/buttonflicking/ColorButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1920
    invoke-static {p0, v0}, Llge/android/fmradio/FmRadioUtils;->GetSavedChannelFrequency(Landroid/content/Context;I)I

    move-result v1

    .line 1921
    if-eqz v1, :cond_21

    .line 1923
    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->GetColorButton(I)Llge/android/buttonflicking/ColorButton;

    move-result-object v2

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioView;->GetStringFrequency(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Llge/android/buttonflicking/ColorButton;->SetTextFrequency(ILjava/lang/String;)V

    .line 1913
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1927
    :cond_21
    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->GetColorButton(I)Llge/android/buttonflicking/ColorButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Llge/android/buttonflicking/ColorButton;->SetTextChannelNum(I)V

    goto :goto_1e

    .line 1930
    :cond_29
    return-void
.end method

.method private processListenVia(I)V
    .registers 5
    .parameter "nIndex"

    .prologue
    .line 1724
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetLisnViaItems()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, p1

    .line 1725
    .local v0, csItem:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wired headset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1727
    const/16 v1, 0xc8

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->SetAudioFromUser(I)V

    .line 1734
    :cond_17
    :goto_17
    return-void

    .line 1728
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Speaker"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1730
    const/16 v1, 0x64

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->SetAudioFromUser(I)V

    goto :goto_17

    .line 1731
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bluetooth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_17
.end method

.method private resetChannel(I)V
    .registers 4
    .parameter "nChannelIndex"

    .prologue
    .line 2784
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0, p1}, Llge/android/fmradio/FmRadioUtils;->ReSetChannelInfo(Landroid/content/SharedPreferences;I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 2786
    invoke-virtual {p0, p1}, Llge/android/fmradio/FmRadioView;->GetColorButton(I)Llge/android/buttonflicking/ColorButton;

    move-result-object v0

    invoke-virtual {v0, p1}, Llge/android/buttonflicking/ColorButton;->SetTextChannelNum(I)V

    .line 2788
    :cond_10
    return-void
.end method

.method private setFrequency(I)V
    .registers 5
    .parameter "nFreq"

    .prologue
    .line 1939
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1941
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView;->DisplayMode(I)V

    .line 1943
    const/16 v0, 0x222e

    if-lt p1, v0, :cond_62

    .line 1945
    const/16 v0, 0x2a30

    if-gt p1, v0, :cond_62

    .line 1948
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->GetTextView_text_frequency()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, p1, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, p1, 0xa

    rem-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1951
    const-string v0, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioView][setFrequency] nFreq"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1954
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0, p1}, Llge/android/fmradio/FmRadioUtils;->SetLastFreqeuncy(Landroid/content/SharedPreferences;I)Z

    .line 1957
    :cond_62
    return-void
.end method


# virtual methods
.method GetColorButton(I)Llge/android/buttonflicking/ColorButton;
    .registers 6
    .parameter "nIndex"

    .prologue
    const/4 v3, 0x1

    .line 190
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mnChannelIndex:[Llge/android/buttonflicking/ColorButton;

    sub-int v1, p1, v3

    aget-object v0, v0, v1

    if-nez v0, :cond_19

    .line 191
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mnChannelIndex:[Llge/android/buttonflicking/ColorButton;

    sub-int v2, p1, v3

    invoke-static {p1}, Llge/android/fmradio/FmRadioUtils;->getChannelID(I)I

    move-result v0

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llge/android/buttonflicking/ColorButton;

    aput-object v0, v1, v2

    .line 193
    :cond_19
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mnChannelIndex:[Llge/android/buttonflicking/ColorButton;

    sub-int v1, p1, v3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public RunAtCommandOnTime()V
    .registers 6

    .prologue
    const-string v4, "FM RADIO"

    .line 739
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_3f

    .line 741
    iget v0, p0, Llge/android/fmradio/FmRadioView;->mAtCommandStatus:I

    packed-switch v0, :pswitch_data_72

    .line 756
    :goto_f
    const/4 v0, 0x0

    iput v0, p0, Llge/android/fmradio/FmRadioView;->mAtCommandStatus:I

    .line 757
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mAtCommandTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mAtCommandRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 774
    :goto_19
    return-void

    .line 744
    :pswitch_1a
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioView][RunAtCommandOnTime] AT_COMMAND_901"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/16 v0, 0x2332

    invoke-static {v0}, Llge/android/fmradio/FmRadioUtils;->tuneFrequency(I)V

    goto :goto_f

    .line 748
    :pswitch_27
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioView][RunAtCommandOnTime] AT_COMMAND_1063"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/16 v0, 0x2986

    invoke-static {v0}, Llge/android/fmradio/FmRadioUtils;->tuneFrequency(I)V

    goto :goto_f

    .line 752
    :pswitch_34
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioView][RunAtCommandOnTime] AT_COMMAND_CANCEL"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->stop()V

    goto :goto_f

    .line 760
    :cond_3f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mCredsDlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_56

    .line 762
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioView] btn_power_on"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->WaitpopupOpen()V

    .line 766
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mSecondTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mSecondRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 769
    :cond_56
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v0

    invoke-static {p0, v0}, Llge/android/fmradio/FmRadioUtils;->IsWiredHeadsetOn(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6a

    .line 770
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mAtCommandTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mAtCommandRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 772
    :cond_6a
    const-string v0, "FM RADIO"

    const-string v0, "[FmRadioView][RunAtCommandOnTime] postDelayed again"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 741
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_27
        :pswitch_34
    .end packed-switch
.end method

.method public Setonofftimer()V
    .registers 3

    .prologue
    .line 724
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v0}, Llge/android/fmradio/FmRadioUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    .line 725
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mFirstTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mFirstRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 726
    return-void
.end method

.method public Setontimer()V
    .registers 3

    .prologue
    .line 717
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->run()Z

    move-result v0

    if-nez v0, :cond_9

    .line 718
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioView;->waitpopupclose()V

    .line 720
    :cond_9
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mSecondTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mSecondRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 721
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 1895
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1896
    packed-switch p1, :pswitch_data_20

    .line 1906
    :cond_7
    :goto_7
    return-void

    .line 1900
    :pswitch_8
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Llge/android/fmradio/FmRadioUtils;->GetSetChannelCount(Landroid/content/SharedPreferences;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 1901
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Llge/android/fmradio/FmRadioUtils;->SetCurrentChannelInfo(Landroid/content/SharedPreferences;I)Z

    .line 1902
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Llge/android/fmradio/FmRadioUtils;->GetChannelInfo(Landroid/content/SharedPreferences;I)I

    move-result v0

    invoke-static {v0}, Llge/android/fmradio/FmRadioUtils;->tuneFrequency(I)V

    goto :goto_7

    .line 1896
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "viewItem"

    .prologue
    const/4 v6, 0x5

    const/16 v2, 0x3e9

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "FM RADIO"

    .line 913
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_268

    .line 1110
    :cond_e
    :goto_e
    :pswitch_e
    return-void

    .line 925
    :pswitch_f
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v1

    if-ne v1, v2, :cond_e

    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    if-nez v1, :cond_e

    .line 927
    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mbVolumeControlState:Z

    if-ne v1, v3, :cond_42

    .line 928
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioView][onClick] GetCurrentVolumeLevel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetCurrentVolumeLevel(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetCurrentVolumeLevel(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v1, v3

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioView;->SetVolumeLevel(I)V

    goto :goto_e

    .line 932
    :cond_42
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->ReSetCurrentChannelInfo(Landroid/content/SharedPreferences;)Z

    .line 933
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->tunningLeft()V

    goto :goto_e

    .line 941
    :pswitch_4b
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v1

    if-ne v1, v2, :cond_e

    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    if-nez v1, :cond_e

    .line 943
    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mbVolumeControlState:Z

    if-ne v1, v3, :cond_7f

    .line 944
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioView][onClick] GetCurrentVolumeLevel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetCurrentVolumeLevel(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetCurrentVolumeLevel(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioView;->SetVolumeLevel(I)V

    goto :goto_e

    .line 947
    :cond_7f
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->ReSetCurrentChannelInfo(Landroid/content/SharedPreferences;)Z

    .line 948
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->tunningRight()V

    goto :goto_e

    .line 957
    :pswitch_88
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v1

    if-ne v1, v2, :cond_e

    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    if-nez v1, :cond_e

    .line 958
    iput-boolean v3, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    .line 959
    invoke-direct {p0, v3}, Llge/android/fmradio/FmRadioView;->Displaysetchannelwindow(Z)V

    .line 960
    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mbSettingChannelState:Z

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioView;->SetSettingChannelState(Z)V

    .line 961
    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mbVolumeControlState:Z

    if-ne v1, v3, :cond_e

    .line 962
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mTimeHandler:Landroid/os/Handler;

    iget-object v2, p0, Llge/android/fmradio/FmRadioView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 963
    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mbVolumeControlState:Z

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioView;->SetVolumeControlState(Z)V

    goto/16 :goto_e

    .line 976
    :pswitch_ae
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v1

    if-ne v1, v2, :cond_e

    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    if-nez v1, :cond_e

    .line 977
    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mbVolumeControlState:Z

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioView;->SetVolumeControlState(Z)V

    goto/16 :goto_e

    .line 982
    :pswitch_bf
    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    if-nez v1, :cond_e

    .line 983
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v1

    if-ne v1, v2, :cond_d1

    .line 985
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->WaitpopupOpen()V

    .line 987
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->stop()V

    goto/16 :goto_e

    .line 989
    :cond_d1
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v1

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_e

    .line 992
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->IsAirPlainMode(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v3, :cond_e6

    .line 993
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioView;->showDialog(I)V

    goto/16 :goto_e

    .line 995
    :cond_e6
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->IsBlueToothMode(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v3, :cond_f3

    .line 996
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioView;->showDialog(I)V

    goto/16 :goto_e

    .line 999
    :cond_f3
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v1

    invoke-static {p0, v1}, Llge/android/fmradio/FmRadioUtils;->IsWiredHeadsetOn(Landroid/content/Context;I)Z

    move-result v1

    if-ne v1, v3, :cond_10b

    .line 1001
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->WaitpopupOpen()V

    .line 1003
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mSecondTimeHandler:Landroid/os/Handler;

    iget-object v2, p0, Llge/android/fmradio/FmRadioView;->mSecondRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_e

    .line 1006
    :cond_10b
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioView;->showDialog(I)V

    goto/16 :goto_e

    .line 1015
    :pswitch_112
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioView] btn_edit_channel_set = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Llge/android/fmradio/FmRadioView;->mbEditSettingChannelState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mbEditSettingChannelState:Z

    if-ne v1, v3, :cond_e

    .line 1017
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    iget v2, p0, Llge/android/fmradio/FmRadioView;->mTempChannelIndex:I

    iget-object v3, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v3}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v3

    invoke-static {v1, v2, v3}, Llge/android/fmradio/FmRadioUtils;->SetChannelInfo(Landroid/content/SharedPreferences;II)Z

    .line 1018
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    iget v2, p0, Llge/android/fmradio/FmRadioView;->mTempChannelIndex:I

    invoke-static {v1, v2}, Llge/android/fmradio/FmRadioUtils;->SetCurrentChannelInfo(Landroid/content/SharedPreferences;I)Z

    .line 1020
    iget v1, p0, Llge/android/fmradio/FmRadioView;->mTempChannelIndex:I

    iget-object v2, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Llge/android/fmradio/FmRadioView;->DisplaySetChannelInfo(II)V

    .line 1022
    iput-boolean v4, p0, Llge/android/fmradio/FmRadioView;->mbEditSettingChannelState:Z

    .line 1023
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->radioView:Landroid/view/View;

    const v2, 0x7f02003d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1024
    invoke-direct {p0, v4}, Llge/android/fmradio/FmRadioView;->DisplayMode(I)V

    goto/16 :goto_e

    .line 1030
    :pswitch_15e
    sget-boolean v1, Llge/android/fmradio/FmRadioView;->$assertionsDisabled:Z

    if-nez v1, :cond_16c

    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mService:Llge/android/fmradio/IFmRadioControlService;

    if-nez v1, :cond_16c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1031
    :cond_16c
    iget v1, p0, Llge/android/fmradio/FmRadioView;->mAutoScanChannelIndex:I

    const/16 v2, 0x30

    if-gt v1, v2, :cond_e

    .line 1033
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioView][onTouchEvent]DIALOG_SET_CHANNEL_FROM_AUTOSCAN_YES_NO  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Llge/android/fmradio/FmRadioView;->mAutoScanChannelIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    iget v2, p0, Llge/android/fmradio/FmRadioView;->mAutoScanChannelIndex:I

    iget-object v3, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v3}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v3

    invoke-static {v1, v2, v3}, Llge/android/fmradio/FmRadioUtils;->SetChannelInfo(Landroid/content/SharedPreferences;II)Z

    .line 1035
    iget v1, p0, Llge/android/fmradio/FmRadioView;->mAutoScanChannelIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Llge/android/fmradio/FmRadioView;->mAutoScanChannelIndex:I

    iget-object v2, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Llge/android/fmradio/FmRadioView;->DisplaySetChannelInfo(II)V

    .line 1038
    invoke-direct {p0, v6}, Llge/android/fmradio/FmRadioView;->DisplayMode(I)V

    .line 1040
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->runCatchAutoScanning()V

    goto/16 :goto_e

    .line 1047
    :pswitch_1b0
    invoke-direct {p0, v6}, Llge/android/fmradio/FmRadioView;->DisplayMode(I)V

    .line 1049
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->runCatchAutoScanning()V

    goto/16 :goto_e

    .line 1054
    :pswitch_1b8
    iput-boolean v4, p0, Llge/android/fmradio/FmRadioView;->mbAutoScanState:Z

    .line 1055
    iput v4, p0, Llge/android/fmradio/FmRadioView;->mAutoScanOlderFreq:I

    .line 1056
    invoke-direct {p0, v4}, Llge/android/fmradio/FmRadioView;->DisplayMode(I)V

    goto/16 :goto_e

    .line 1074
    :pswitch_1c1
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v1

    if-ne v1, v2, :cond_e

    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mbAutoScanState:Z

    if-nez v1, :cond_e

    .line 1076
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->radioView:Landroid/view/View;

    const v2, 0x7f02003d

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1077
    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mbSettingChannelState:Z

    if-eq v1, v3, :cond_1db

    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    if-ne v1, v3, :cond_242

    .line 1079
    :cond_1db
    iput-boolean v4, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    .line 1080
    invoke-direct {p0, v4}, Llge/android/fmradio/FmRadioView;->Displaysetchannelwindow(Z)V

    .line 1082
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->getChannelIndex(I)I

    move-result v2

    invoke-static {v1, v2}, Llge/android/fmradio/FmRadioUtils;->GetChannelInfo(Landroid/content/SharedPreferences;I)I

    move-result v0

    .line 1083
    .local v0, nFreq:I
    if-nez v0, :cond_228

    .line 1085
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->getChannelIndex(I)I

    move-result v2

    iget-object v3, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v3}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v3

    invoke-static {v1, v2, v3}, Llge/android/fmradio/FmRadioUtils;->SetChannelInfo(Landroid/content/SharedPreferences;II)Z

    .line 1086
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->getChannelIndex(I)I

    move-result v2

    invoke-static {v1, v2}, Llge/android/fmradio/FmRadioUtils;->SetCurrentChannelInfo(Landroid/content/SharedPreferences;I)Z

    .line 1088
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->getChannelIndex(I)I

    move-result v1

    iget-object v2, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Llge/android/fmradio/FmRadioView;->DisplaySetChannelInfo(II)V

    .line 1089
    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mbSettingChannelState:Z

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioView;->SetSettingChannelState(Z)V

    goto/16 :goto_e

    .line 1092
    :cond_228
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v1

    iput v1, p0, Llge/android/fmradio/FmRadioView;->mTempDlgFreq:I

    .line 1093
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->getChannelIndex(I)I

    move-result v1

    iput v1, p0, Llge/android/fmradio/FmRadioView;->mTempChannelIndex:I

    .line 1094
    iput-boolean v3, p0, Llge/android/fmradio/FmRadioView;->mSetchannelshortPress:Z

    .line 1095
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioView;->showDialog(I)V

    goto/16 :goto_e

    .line 1099
    .end local v0           #nFreq:I
    :cond_242
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->getChannelIndex(I)I

    move-result v2

    invoke-static {v1, v2}, Llge/android/fmradio/FmRadioUtils;->GetChannelInfo(Landroid/content/SharedPreferences;I)I

    move-result v0

    .line 1100
    .restart local v0       #nFreq:I
    if-eqz v0, :cond_e

    .line 1101
    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView;->setFrequency(I)V

    .line 1103
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->getChannelIndex(I)I

    move-result v2

    invoke-static {v1, v2}, Llge/android/fmradio/FmRadioUtils;->SetCurrentChannelInfo(Landroid/content/SharedPreferences;I)Z

    .line 1104
    invoke-static {v0}, Llge/android/fmradio/FmRadioUtils;->tuneFrequency(I)V

    goto/16 :goto_e

    .line 913
    nop

    :pswitch_data_268
    .packed-switch 0x7f09001c
        :pswitch_112
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_4b
        :pswitch_e
        :pswitch_88
        :pswitch_ae
        :pswitch_bf
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_e
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_e
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_e
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_e
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_e
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_e
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_e
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_1c1
        :pswitch_15e
        :pswitch_1b0
        :pswitch_1b8
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 1430
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioView][onConfigurationChanged]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1433
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const-string v4, "lge.android.fmradio.updatefreq"

    const-string v3, "FM RADIO"

    .line 780
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 782
    const-string v1, "SHARED_RADIO_INFO_PREFS"

    invoke-virtual {p0, v1, v2}, Llge/android/fmradio/FmRadioView;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    .line 783
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1b

    .line 784
    const-string v1, "FM RADIO"

    const-string v1, "++[ERROR]++ [FmRadioView][onCreate] getSharedPreferences(SHARED_RADIO_INFO_PREFS,0)"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_1b
    const-string v1, "SHARED_CHANNEL_PREFS"

    invoke-virtual {p0, v1, v2}, Llge/android/fmradio/FmRadioView;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    .line 788
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_2e

    .line 789
    const-string v1, "FM RADIO"

    const-string v1, "++[ERROR]++ [FmRadioView][onCreate] getSharedPreferences(SHARED_CHANNEL_PREFS,0)"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_2e
    const-string v1, "SHARED_CURRENT_CHANNEL"

    invoke-virtual {p0, v1, v2}, Llge/android/fmradio/FmRadioView;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    .line 793
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_41

    .line 794
    const-string v1, "FM RADIO"

    const-string v1, "++[ERROR]++ [FmRadioView][onCreate] getSharedPreferences(SHARED_CURRENT_CHANNEL,0)"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_41
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioView;->SetAtCommand(Landroid/content/Intent;)V

    .line 806
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 807
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "lge.android.fmradio.power"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 809
    const-string v1, "lge.android.fmradio.updatefreq"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 810
    const-string v1, "lge.android.fmradio.rdsdata"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 813
    const-string v1, "lge.android.fmradio.updatefreq"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 814
    const-string v1, "lge.android.fmradio.updatefreqdot"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 816
    const-string v1, "lge.android.fmradio.warningwithoutearjack"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 817
    const-string v1, "lge.android.fmradio.outputsound"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    const-string v1, "lge.android.fmradio.listenviaoutputsound"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 820
    const-string v1, "lge.android.fmradio.headsetremoved"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 821
    const-string v1, "lge.android.fmradio.airplainmode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 822
    const-string v1, "lge.android.fmradio.bluetoothmode"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 824
    const-string v1, "lge.android.fmradio.withoutheadset"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 831
    const-string v1, "android.intent.action.LGE_AT_COMMAND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 834
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Llge/android/fmradio/FmRadioView;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 836
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    iput-object v1, p0, Llge/android/fmradio/FmRadioView;->mVibrator:Landroid/os/Vibrator;

    .line 838
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioView;->requestWindowFeature(I)Z

    .line 839
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioView;->setVolumeControlStream(I)V

    .line 840
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DisplayInitView()V

    .line 841
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const v5, 0x7f070057

    const v4, 0x7f070056

    const v1, 0x7f020022

    .line 1438
    packed-switch p1, :pswitch_data_240

    .line 1711
    :pswitch_e
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_12
    return-object v0

    .line 1441
    :pswitch_13
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070048

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$7;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$7;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$6;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$6;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_12

    .line 1484
    :pswitch_3a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070046

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$8;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$8;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_12

    .line 1495
    :pswitch_58
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$10;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$10;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$9;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$9;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_12

    .line 1512
    :pswitch_7f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$12;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$12;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$11;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$11;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_12

    .line 1529
    :pswitch_a7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07004a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$14;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$14;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$13;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$13;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_12

    .line 1547
    :pswitch_cf
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07004c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$15;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$15;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_12

    .line 1559
    :pswitch_ee
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070045

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$16;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$16;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_12

    .line 1570
    :pswitch_10d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$17;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$17;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_12

    .line 1581
    :pswitch_12c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07004d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$18;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$18;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_12

    .line 1592
    :pswitch_14b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07004e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050004

    new-array v2, v2, [Z

    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->IsRdsState()Z

    move-result v3

    aput-boolean v3, v2, v6

    new-instance v3, Llge/android/fmradio/FmRadioView$21;

    invoke-direct {v3, p0}, Llge/android/fmradio/FmRadioView$21;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$20;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$20;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$19;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$19;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_12

    .line 1630
    :pswitch_187
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07004f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050005

    new-array v2, v2, [Z

    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->IsAfState()Z

    move-result v3

    aput-boolean v3, v2, v6

    new-instance v3, Llge/android/fmradio/FmRadioView$24;

    invoke-direct {v3, p0}, Llge/android/fmradio/FmRadioView$24;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$23;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$23;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$22;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$22;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_12

    .line 1667
    :pswitch_1c3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070051

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$25;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$25;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_12

    .line 1678
    :pswitch_1e2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070052

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$26;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$26;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_12

    .line 1689
    :pswitch_201
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070053

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$27;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$27;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_12

    .line 1700
    :pswitch_220
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070054

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Llge/android/fmradio/FmRadioView$28;

    invoke-direct {v1, p0}, Llge/android/fmradio/FmRadioView$28;-><init>(Llge/android/fmradio/FmRadioView;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_12

    .line 1438
    nop

    :pswitch_data_240
    .packed-switch 0x2
        :pswitch_3a
        :pswitch_58
        :pswitch_e
        :pswitch_a7
        :pswitch_e
        :pswitch_12c
        :pswitch_14b
        :pswitch_187
        :pswitch_7f
        :pswitch_cf
        :pswitch_13
        :pswitch_1c3
        :pswitch_ee
        :pswitch_10d
        :pswitch_220
        :pswitch_1e2
        :pswitch_201
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1756
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1758
    const v0, 0x7f07003e

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1766
    const/4 v0, 0x3

    const v1, 0x7f070042

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1770
    const/4 v0, 0x4

    const v1, 0x7f070043

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1771
    const/4 v0, 0x7

    const v1, 0x7f070044

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1773
    return v3
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1738
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioView] onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    const/4 v0, 0x0

    iput v0, p0, Llge/android/fmradio/FmRadioView;->mAtCommandStatus:I

    .line 1741
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mAtCommandTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mAtCommandRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1743
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 1745
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1746
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->unbindFromService(Landroid/content/Context;)V

    .line 1747
    iput-object v2, p0, Llge/android/fmradio/FmRadioView;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 1748
    iput-object v2, p0, Llge/android/fmradio/FmRadioView;->mConnection:Landroid/content/ServiceConnection;

    .line 1750
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1751
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v1, 0x3e9

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v5, "[FmRadioView][onKeyDown] GetCurrentVolumeLevel"

    const-string v4, "FM RADIO"

    .line 1351
    const/16 v0, 0x18

    if-ne p1, v0, :cond_4f

    .line 1352
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v0

    if-ne v0, v1, :cond_4d

    .line 1354
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbAutoScanState:Z

    if-ne v0, v2, :cond_18

    move v0, v2

    .line 1424
    :goto_17
    return v0

    .line 1359
    :cond_18
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    if-nez v0, :cond_25

    .line 1361
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbVolumeControlState:Z

    if-nez v0, :cond_27

    .line 1363
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbVolumeControlState:Z

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView;->SetVolumeControlState(Z)V

    :cond_25
    :goto_25
    move v0, v2

    .line 1371
    goto :goto_17

    .line 1367
    :cond_27
    const-string v0, "FM RADIO"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FmRadioView][onKeyDown] GetCurrentVolumeLevel"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetCurrentVolumeLevel(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetCurrentVolumeLevel(Landroid/content/Context;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView;->SetVolumeLevel(I)V

    goto :goto_25

    :cond_4d
    move v0, v3

    .line 1373
    goto :goto_17

    .line 1374
    :cond_4f
    const/16 v0, 0x19

    if-ne p1, v0, :cond_95

    .line 1375
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v0

    if-ne v0, v1, :cond_93

    .line 1376
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbAutoScanState:Z

    if-ne v0, v2, :cond_5f

    move v0, v2

    .line 1377
    goto :goto_17

    .line 1380
    :cond_5f
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    if-nez v0, :cond_6c

    .line 1382
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbVolumeControlState:Z

    if-nez v0, :cond_6e

    .line 1383
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbVolumeControlState:Z

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView;->SetVolumeControlState(Z)V

    :cond_6c
    :goto_6c
    move v0, v2

    .line 1389
    goto :goto_17

    .line 1385
    :cond_6e
    const-string v0, "FM RADIO"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FmRadioView][onKeyDown] GetCurrentVolumeLevel"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetCurrentVolumeLevel(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetCurrentVolumeLevel(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView;->SetVolumeLevel(I)V

    goto :goto_6c

    :cond_93
    move v0, v3

    .line 1391
    goto :goto_17

    .line 1392
    :cond_95
    const/4 v0, 0x4

    if-ne p1, v0, :cond_ce

    .line 1394
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mAutoscanenable:Z

    if-ne v0, v2, :cond_9e

    .line 1395
    iput-boolean v3, p0, Llge/android/fmradio/FmRadioView;->mAutoscanenable:Z

    .line 1398
    :cond_9e
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mSetchannelshortPress:Z

    if-ne v0, v2, :cond_a4

    .line 1399
    iput-boolean v3, p0, Llge/android/fmradio/FmRadioView;->mSetchannelshortPress:Z

    .line 1402
    :cond_a4
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mSetchannelLongPress:Z

    if-ne v0, v2, :cond_aa

    .line 1403
    iput-boolean v3, p0, Llge/android/fmradio/FmRadioView;->mSetchannelLongPress:Z

    .line 1406
    :cond_aa
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbEditSettingChannelState:Z

    if-ne v0, v2, :cond_be

    .line 1407
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->radioView:Landroid/view/View;

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1408
    invoke-direct {p0, v3}, Llge/android/fmradio/FmRadioView;->DisplayMode(I)V

    .line 1409
    iput-boolean v3, p0, Llge/android/fmradio/FmRadioView;->mbEditSettingChannelState:Z

    :goto_bb
    move v0, v2

    .line 1422
    goto/16 :goto_17

    .line 1411
    :cond_be
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    if-ne v0, v2, :cond_ca

    .line 1412
    invoke-direct {p0, v3}, Llge/android/fmradio/FmRadioView;->Displaysetchannelwindow(Z)V

    .line 1413
    iput-boolean v3, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    .line 1415
    iput-boolean v3, p0, Llge/android/fmradio/FmRadioView;->mbSettingChannelState:Z

    goto :goto_bb

    .line 1418
    :cond_ca
    invoke-virtual {p0}, Llge/android/fmradio/FmRadioView;->finish()V

    goto :goto_bb

    :cond_ce
    move v0, v3

    .line 1424
    goto/16 :goto_17
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 8
    .parameter "viewItem"

    .prologue
    const/16 v5, 0x3e9

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v2, "FM RADIO"

    .line 1116
    const-string v1, "FM RADIO"

    const-string v1, "[onLongClick]"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mbVolumeControlState:Z

    if-ne v1, v4, :cond_13

    move v1, v3

    .line 1185
    :goto_12
    return v1

    .line 1120
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_ca

    :cond_1a
    :pswitch_1a
    move v1, v3

    .line 1185
    goto :goto_12

    .line 1124
    :pswitch_1c
    const-string v1, "LOGTAG"

    const-string v2, "[onLongClick] R.id.btn_frequency_tune_pre"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v1

    if-ne v1, v5, :cond_1a

    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    if-nez v1, :cond_1a

    .line 1126
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->ReSetCurrentChannelInfo(Landroid/content/SharedPreferences;)Z

    .line 1127
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->runBackwardScanning()V

    move v1, v4

    .line 1128
    goto :goto_12

    .line 1133
    :pswitch_37
    const-string v1, "FM RADIO"

    const-string v1, "[onLongClick] R.id.btn_frequency_tune_next"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v1

    if-ne v1, v5, :cond_1a

    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    if-nez v1, :cond_1a

    .line 1135
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->ReSetCurrentChannelInfo(Landroid/content/SharedPreferences;)Z

    .line 1136
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->runForwardScanning()V

    move v1, v4

    .line 1137
    goto :goto_12

    .line 1154
    :pswitch_52
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v1

    if-ne v1, v5, :cond_1a

    .line 1155
    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mbAutoScanState:Z

    if-ne v1, v4, :cond_5e

    move v1, v4

    .line 1156
    goto :goto_12

    .line 1158
    :cond_5e
    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    if-ne v1, v4, :cond_6b

    .line 1159
    iput-boolean v3, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    .line 1160
    iput-boolean v3, p0, Llge/android/fmradio/FmRadioView;->mbSettingChannelState:Z

    .line 1161
    iput-boolean v3, p0, Llge/android/fmradio/FmRadioView;->mbEditSettingChannelState:Z

    .line 1162
    invoke-direct {p0, v3}, Llge/android/fmradio/FmRadioView;->Displaysetchannelwindow(Z)V

    .line 1165
    :cond_6b
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->getChannelIndex(I)I

    move-result v2

    invoke-static {v1, v2}, Llge/android/fmradio/FmRadioUtils;->GetChannelInfo(Landroid/content/SharedPreferences;I)I

    move-result v0

    .line 1166
    .local v0, nFreq:I
    if-nez v0, :cond_af

    .line 1168
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->getChannelIndex(I)I

    move-result v2

    iget-object v3, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v3}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v3

    invoke-static {v1, v2, v3}, Llge/android/fmradio/FmRadioUtils;->SetChannelInfo(Landroid/content/SharedPreferences;II)Z

    .line 1169
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->getChannelIndex(I)I

    move-result v2

    invoke-static {v1, v2}, Llge/android/fmradio/FmRadioUtils;->SetCurrentChannelInfo(Landroid/content/SharedPreferences;I)Z

    .line 1171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->getChannelIndex(I)I

    move-result v1

    iget-object v2, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Llge/android/fmradio/FmRadioView;->DisplaySetChannelInfo(II)V

    :goto_ac
    move v1, v4

    .line 1182
    goto/16 :goto_12

    .line 1175
    :cond_af
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v1

    iput v1, p0, Llge/android/fmradio/FmRadioView;->mTempDlgFreq:I

    .line 1176
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->getChannelIndex(I)I

    move-result v1

    iput v1, p0, Llge/android/fmradio/FmRadioView;->mTempChannelIndex:I

    .line 1179
    iput-boolean v4, p0, Llge/android/fmradio/FmRadioView;->mSetchannelLongPress:Z

    .line 1180
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioView;->showDialog(I)V

    goto :goto_ac

    .line 1120
    nop

    :pswitch_data_ca
    .packed-switch 0x7f090025
        :pswitch_1c
        :pswitch_37
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_1a
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_1a
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_1a
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_1a
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_1a
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_1a
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_1a
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 855
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioView][onNewIntent] "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 857
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 1844
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_7c

    .line 1889
    :cond_8
    :goto_8
    :pswitch_8
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 1846
    :pswitch_d
    iput-boolean v3, p0, Llge/android/fmradio/FmRadioView;->mAutoscanenable:Z

    .line 1847
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioView;->showDialog(I)V

    goto :goto_8

    .line 1859
    :pswitch_14
    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mbEditSettingChannelState:Z

    if-nez v1, :cond_8

    .line 1860
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->radioView:Landroid/view/View;

    const v2, 0x7f02003e

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1861
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->GetCurrentChannelInfo(Landroid/content/SharedPreferences;)I

    move-result v1

    iput v1, p0, Llge/android/fmradio/FmRadioView;->mTempChannelIndex:I

    .line 1862
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioView;->DisplayMode(I)V

    .line 1863
    iput-boolean v3, p0, Llge/android/fmradio/FmRadioView;->mbEditSettingChannelState:Z

    goto :goto_8

    .line 1869
    :pswitch_2f
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->GetCurrentChannelInfo(Landroid/content/SharedPreferences;)I

    move-result v1

    if-eqz v1, :cond_8

    .line 1871
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->GetCurrentChannelInfo(Landroid/content/SharedPreferences;)I

    move-result v1

    invoke-virtual {p0, v1}, Llge/android/fmradio/FmRadioView;->GetColorButton(I)Llge/android/buttonflicking/ColorButton;

    move-result-object v1

    iget-object v2, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->GetCurrentChannelInfo(Landroid/content/SharedPreferences;)I

    move-result v2

    invoke-virtual {v1, v2}, Llge/android/buttonflicking/ColorButton;->SetTextChannelNum(I)V

    .line 1872
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Llge/android/fmradio/FmRadioUtils;->GetCurrentChannelInfo(Landroid/content/SharedPreferences;)I

    move-result v2

    invoke-static {v1, v2}, Llge/android/fmradio/FmRadioUtils;->ReSetChannelInfo(Landroid/content/SharedPreferences;I)Z

    .line 1873
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->ReSetCurrentChannelInfo(Landroid/content/SharedPreferences;)Z

    .line 1875
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DisplayCurrentChannel()V

    goto :goto_8

    .line 1880
    :pswitch_5e
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->ReSetAllChannel(Landroid/content/SharedPreferences;)V

    .line 1881
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->ReSetCurrentChannelInfo(Landroid/content/SharedPreferences;)Z

    .line 1882
    const/4 v0, 0x1

    .local v0, nChannelIndex:I
    :goto_69
    const/16 v1, 0x30

    if-gt v0, v1, :cond_77

    .line 1884
    invoke-virtual {p0, v0}, Llge/android/fmradio/FmRadioView;->GetColorButton(I)Llge/android/buttonflicking/ColorButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Llge/android/buttonflicking/ColorButton;->SetTextChannelNum(I)V

    .line 1882
    add-int/lit8 v0, v0, 0x1

    goto :goto_69

    .line 1886
    :cond_77
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DisplayCurrentChannel()V

    goto :goto_8

    .line 1844
    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_d
        :pswitch_8
        :pswitch_14
        :pswitch_2f
        :pswitch_8
        :pswitch_8
        :pswitch_5e
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1780
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbSystemPowerOnState:Z

    if-ne v0, v2, :cond_b7

    .line 1782
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1786
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Llge/android/fmradio/FmRadioUtils;->GetCurrentChannelInfo(Landroid/content/SharedPreferences;)I

    move-result v0

    if-eqz v0, :cond_9e

    .line 1787
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1792
    :goto_1f
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Llge/android/fmradio/FmRadioUtils;->GetCurrentChannelInfo(Landroid/content/SharedPreferences;)I

    move-result v0

    if-eqz v0, :cond_a7

    .line 1793
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1798
    :goto_2e
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Llge/android/fmradio/FmRadioUtils;->GetSetChannelCount(Landroid/content/SharedPreferences;)I

    move-result v0

    if-eqz v0, :cond_af

    .line 1799
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1805
    :goto_3d
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    if-ne v0, v2, :cond_5d

    .line 1806
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1809
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1810
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1811
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1813
    :cond_5d
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbAutoScanState:Z

    if-ne v0, v2, :cond_7d

    .line 1814
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1817
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1818
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1819
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1821
    :cond_7d
    iget-boolean v0, p0, Llge/android/fmradio/FmRadioView;->mbEditSettingChannelState:Z

    if-ne v0, v2, :cond_9d

    .line 1822
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1825
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1826
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1827
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1838
    :cond_9d
    :goto_9d
    return v2

    .line 1789
    :cond_9e
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1f

    .line 1795
    :cond_a7
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2e

    .line 1802
    :cond_af
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3d

    .line 1831
    :cond_b7
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1834
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1835
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1836
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9d
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 860
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioView][onRestart] "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 862
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 865
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioView][onResume] "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 867
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 845
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioView][onStart] "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 847
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 851
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 852
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "viewItem"
    .parameter "motionEvent"

    .prologue
    const/16 v5, 0x3e9

    const/4 v3, 0x1

    const-string v4, "FM RADIO"

    .line 1274
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_140

    .line 1346
    :cond_c
    :goto_c
    const/4 v1, 0x0

    return v1

    .line 1278
    :pswitch_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_146

    goto :goto_c

    .line 1281
    :pswitch_16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Llge/android/fmradio/FmRadioView;->mnOldTunePointX:I

    .line 1282
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioView][onTouchEvent]ACTION_DOWN ========Start X ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Llge/android/fmradio/FmRadioView;->mnOldTunePointX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1286
    :pswitch_38
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioView][onTouchEvent]ACTION_MOVE motionEvent.getX ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v1

    if-ne v1, v5, :cond_c

    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    if-nez v1, :cond_c

    .line 1290
    iget v1, p0, Llge/android/fmradio/FmRadioView;->mnOldTunePointX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_ac

    .line 1292
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DrawTunnerChange()V

    .line 1293
    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mbVolumeControlState:Z

    if-ne v1, v3, :cond_80

    .line 1295
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetCurrentVolumeLevel(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v1, v3

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioView;->SetVolumeLevel(I)V

    .line 1307
    :goto_78
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Llge/android/fmradio/FmRadioView;->mnOldTunePointX:I

    goto :goto_c

    .line 1298
    :cond_80
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->ReSetCurrentChannelInfo(Landroid/content/SharedPreferences;)Z

    .line 1300
    iget v1, p0, Llge/android/fmradio/FmRadioView;->mnOldTunePointX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Llge/android/fmradio/FmRadioView;->GetTunnerCount(II)I

    move-result v0

    .line 1303
    .local v0, nTuneCount:I
    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView;->TunningsDummysLeft(I)V

    .line 1305
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioView][onTouchEvent]================================DWDWDW ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 1310
    .end local v0           #nTuneCount:I
    :cond_ac
    iget v1, p0, Llge/android/fmradio/FmRadioView;->mnOldTunePointX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_c

    .line 1312
    invoke-direct {p0}, Llge/android/fmradio/FmRadioView;->DrawTunnerChange()V

    .line 1314
    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mbVolumeControlState:Z

    if-ne v1, v3, :cond_cf

    .line 1315
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetCurrentVolumeLevel(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Llge/android/fmradio/FmRadioView;->SetVolumeLevel(I)V

    .line 1326
    :goto_c6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Llge/android/fmradio/FmRadioView;->mnOldTunePointX:I

    goto/16 :goto_c

    .line 1317
    :cond_cf
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->ReSetCurrentChannelInfo(Landroid/content/SharedPreferences;)Z

    .line 1319
    iget v1, p0, Llge/android/fmradio/FmRadioView;->mnOldTunePointX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Llge/android/fmradio/FmRadioView;->GetTunnerCount(II)I

    move-result v0

    .line 1322
    .restart local v0       #nTuneCount:I
    invoke-direct {p0, v0}, Llge/android/fmradio/FmRadioView;->TunningsDummysRight(I)V

    .line 1324
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioView][onTouchEvent]================================UPUPUP ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    .line 1331
    .end local v0           #nTuneCount:I
    :pswitch_fb
    const-string v1, "FM RADIO"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FmRadioView][onTouchEvent]ACTION_UP================================"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Llge/android/fmradio/FmRadioView;->mnOldTunePointX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    invoke-static {}, Llge/android/fmradio/FmRadioUtils;->getSystemState()I

    move-result v1

    if-ne v1, v5, :cond_c

    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mSetchannelMode:Z

    if-nez v1, :cond_c

    .line 1334
    iget-boolean v1, p0, Llge/android/fmradio/FmRadioView;->mbVolumeControlState:Z

    if-ne v1, v3, :cond_130

    .line 1335
    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetStreamMaxVolume(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Llge/android/fmradio/FmRadioUtils;->GetCurrentVolumeLevel(Landroid/content/Context;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Llge/android/fmradio/FmRadioView;->DisplayVolume(II)V

    goto/16 :goto_c

    .line 1338
    :cond_130
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mCurrentChannelPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->ReSetCurrentChannelInfo(Landroid/content/SharedPreferences;)Z

    .line 1339
    iget-object v1, p0, Llge/android/fmradio/FmRadioView;->mRadioInfoPrefs:Landroid/content/SharedPreferences;

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->GetLastFrequency(Landroid/content/SharedPreferences;)I

    move-result v1

    invoke-static {v1}, Llge/android/fmradio/FmRadioUtils;->tuneFrequency(I)V

    goto/16 :goto_c

    .line 1274
    :pswitch_data_140
    .packed-switch 0x7f090027
        :pswitch_e
    .end packed-switch

    .line 1278
    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_16
        :pswitch_fb
        :pswitch_38
    .end packed-switch
.end method

.method public waitpopupclose()V
    .registers 3

    .prologue
    .line 623
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mCredsDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1c

    .line 624
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mCredsDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 625
    const-string v0, "FM RADIO"

    const-string v1, "[FmRadioView][waitpopupclose] waitpopupclose..1"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v0, p0, Llge/android/fmradio/FmRadioView;->mCredsDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 628
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Llge/android/fmradio/FmRadioView;->mCredsDlg:Landroid/app/ProgressDialog;

    .line 630
    :cond_1c
    return-void
.end method
