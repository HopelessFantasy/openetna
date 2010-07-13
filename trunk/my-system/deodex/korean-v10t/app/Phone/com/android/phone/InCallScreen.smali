.class public Lcom/android/phone/InCallScreen;
.super Landroid/app/Activity;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallScreen$22;,
        Lcom/android/phone/InCallScreen$ConfigurationHelper;,
        Lcom/android/phone/InCallScreen$InCallInitStatus;,
        Lcom/android/phone/InCallScreen$InCallScreenMode;
    }
.end annotation


# static fields
.field private static final ADD_VOICEMAIL_NUMBER:I = 0x6a

.field private static final ALLOW_SCREEN_ON:I = 0x70

.field private static final ANSWER_AND_END_HOLD_CALL:I = 0x79

.field private static final BLUETOOTH_STATE_CHANGED:I = 0x72

.field private static final CALL_ENDED_LONG_DELAY:I = 0x7d0

.field private static final CALL_ENDED_SHORT_DELAY:I = 0xc8

.field private static final CLOSE_NOTI_DIALOG:I = 0x78

.field private static final CLOSE_NOTI_DIALOG_TIMEOUT:I = 0x3e8

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DELAYED_CLEANUP_AFTER_DISCONNECT:I = 0x6c

.field private static final DIALOG_TIMEOUT:I = 0x1d4c0

.field private static final DISMISS_MENU:I = 0x6f

.field private static final DONT_ADD_VOICEMAIL_NUMBER:I = 0x6b

.field static final ENABLE_PHONE_UI_EVENT_LOGGING:Z = false

.field private static final END_BUTTON_BLOCK:I = 0x74

.field private static final END_BUTTON_BLOCK_TIMEOUT:I = 0x3e8

.field private static final EVENT_HEADSET_PLUG_STATE_CHANGED:I = 0x67

.field private static final EVENT_SSN:I = 0x73

.field private static final FOCUS_BEEP_VOLUME:I = 0x64

.field private static final HANGUP_BACKGROUND_CALL:I = 0x77

.field private static final HANGUP_FOREGROUND_CALL:I = 0x76

.field private static final HANGUP_RINIGING_CALL:I = 0x75

.field private static final LOG_TAG:Ljava/lang/String; = "InCallScreen"

.field private static final LOW_LAYER_COMMAND_TIMEOUT:I = 0x12c

.field private static final LOW_LAYER_COMMAND_TIMEOUT_LONG:I = 0x258

.field private static final MAX_CALLERS_IN_CONFERENCE:I = 0x5

.field private static final MENU_DISMISS_DELAY:I = 0x3e8

.field private static final MSG_ID_TIMEOUT:I = 0x1

.field private static final PHONE_CDMA_CALL_WAITING:I = 0x73

.field private static final PHONE_CONNECT:I = 0x7a

.field private static final PHONE_DISCONNECT:I = 0x66

.field private static final PHONE_STATE_CHANGED:I = 0x65

.field static final PHONE_UI_EVENT_BUTTON_CLICK:Ljava/lang/String; = "button_click"

.field static final PHONE_UI_EVENT_ENTER:Ljava/lang/String; = "enter"

.field static final PHONE_UI_EVENT_EXIT:Ljava/lang/String; = "exit"

.field private static final POST_ON_DIAL_CHARS:I = 0x68

.field static final SHOW_DIALPAD_EXTRA:Ljava/lang/String; = "com.android.phone.ShowDialpad"

.field private static final SUPP_SERVICE_FAILED:I = 0x6e

.field private static final THREEWAY_CALLERINFO_DISPLAY_DONE:I = 0x74

.field private static final THREEWAY_CALLERINFO_DISPLAY_TIME:I = 0x7d0

.field private static final TOUCH_LOCK_DELAY_DEFAULT:I = 0x1770

.field private static final TOUCH_LOCK_TIMER:I = 0x71

.field private static final VDBG:Z = false

.field private static final WILD_PROMPT_CHAR_ENTERED:I = 0x69

.field private static final devInputEvent5:Ljava/lang/String; = "/sys/devices/platform/i2c-gpio.6/i2c-adapter/i2c-6/6-0044/show"


# instance fields
.field private backDialog:Landroid/app/AlertDialog;

.field private createDialog:Landroid/app/AlertDialog;

.field private mBackgroundCall:Lcom/android/internal/telephony/Call;

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mButtonManageConferenceDone:Landroid/widget/Button;

.field private mCallCard:Lcom/android/phone/CallCard;

.field private mConferenceCallList:[Landroid/view/ViewGroup;

.field private mConferenceTime:Landroid/widget/Chronometer;

.field private mDTMFDisplay:Landroid/widget/EditText;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mDialerDrawer:Landroid/widget/SlidingDrawer;

.field private mDialerTabBtn:Landroid/widget/Button;

.field mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

.field private mInCallMenu:Lcom/android/phone/InCallMenu;

.field private mInCallMenuFrame:Landroid/view/ViewGroup;

.field private mInCallPanel:Landroid/view/ViewGroup;

.field private mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field private mIncomingMenuFrame:Landroid/view/ViewGroup;

.field private mIsDestroyed:Z

.field private mIsForegroundActivity:Z

.field private mIsForegroundTask:Z

.field private mIsIncallBackKey:Z

.field private final mListener:Landroid/hardware/SensorListener;

.field private mMainFrame:Landroid/view/ViewGroup;

.field private mManageConferencePanel:Landroid/view/ViewGroup;

.field private mMenuButtonAccept:Landroid/widget/Button;

.field private mMenuButtonBlocked:Z

.field private mMenuButtonEnd:Landroid/widget/Button;

.field private mMenuButtonHint:Landroid/widget/TextView;

.field private mMenuButtonReject:Landroid/widget/Button;

.field private mMissingVoicemailDialog:Landroid/app/AlertDialog;

.field private mMmiStartedDialog:Landroid/app/Dialog;

.field mNotiDialogStopper:Landroid/os/Handler;

.field private mNumCallersInConference:I

.field private mOnscreenAnswerButton:Landroid/view/View;

.field private mOnscreenAnswerButtonLastTouchTime:J

.field private mOnscreenAnswerUiContainer:Landroid/view/View;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisteredForPhoneStates:Z

.field private mRingingCall:Lcom/android/internal/telephony/Call;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShowCallLogAfterDisconnect:Z

.field private mSuppServiceFailureDialog:Landroid/app/AlertDialog;

.field mTimeoutHandler:Landroid/os/Handler;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mTouchLockFadeIn:Landroid/view/animation/Animation;

.field private mTouchLockIcon:Landroid/view/View;

.field private mTouchLockLastTouchTime:J

.field private mTouchLockOverlay:Landroid/view/View;

.field private mUserInterfaceArea:Landroid/view/ViewGroup;

.field private mWaitPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptText:Landroid/widget/EditText;

.field private suppSvcNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 108
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_e

    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    return-void

    :cond_e
    move v0, v1

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 278
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mSensorManager:Landroid/hardware/SensorManager;

    .line 279
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    .line 339
    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 340
    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 342
    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundTask:Z

    .line 374
    new-instance v0, Lcom/android/phone/InCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$1;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mNotiDialogStopper:Landroid/os/Handler;

    .line 392
    new-instance v0, Lcom/android/phone/InCallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$2;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    .line 562
    new-instance v0, Lcom/android/phone/InCallScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$3;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 582
    new-instance v0, Lcom/android/phone/InCallScreen$4;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$4;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mListener:Landroid/hardware/SensorListener;

    .line 3358
    new-instance v0, Lcom/android/phone/InCallScreen$14;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$14;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mTimeoutHandler:Landroid/os/Handler;

    .line 3371
    new-instance v0, Lcom/android/phone/InCallScreen$15;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$15;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 4161
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->touchLockTimerExpired()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/InCallScreen;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->showNotiDialog(I)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/phone/InCallScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mMenuButtonBlocked:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallScreen$InCallScreenMode;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->backDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/phone/InCallScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mIsIncallBackKey:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/InCallScreen;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/phone/InCallScreen;Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->bailOutAfterErrorDialog()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/InCallScreen;)Landroid/media/ToneGenerator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/phone/InCallScreen;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/phone/InCallScreen;ILcom/android/internal/telephony/Connection;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->endConferenceConnection(ILcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/phone/InCallScreen;ILcom/android/internal/telephony/Connection;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->separateConferenceConnection(ILcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/phone/InCallScreen;Landroid/widget/EditText;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mDTMFDisplay:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/InCallScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/InCallScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMMICancel()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method private addVoiceMailNumberPanel()V
    .registers 3

    .prologue
    .line 2755
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_c

    .line 2756
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2757
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 2759
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 2761
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_18

    const-string v1, "show vm setting"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2764
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2765
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2766
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 2767
    return-void
.end method

.method private bailOutAfterErrorDialog()V
    .registers 2

    .prologue
    .line 3455
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 3457
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 3460
    :cond_c
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_15

    const-string v0, "bailOutAfterErrorDialog(): finishing..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3461
    :cond_15
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 3462
    return-void
.end method

.method private checkIfOkToInitiateOutgoingCall()Lcom/android/phone/InCallScreen$InCallInitStatus;
    .registers 5

    .prologue
    .line 2690
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 2693
    .local v0, state:I
    packed-switch v0, :pswitch_data_30

    .line 2709
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ServiceState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2696
    :pswitch_26
    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 2707
    :goto_28
    return-object v1

    .line 2701
    :pswitch_29
    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_28

    .line 2707
    :pswitch_2c
    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_28

    .line 2693
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_26
        :pswitch_2c
        :pswitch_2c
        :pswitch_29
    .end packed-switch
.end method

.method private createWildPromptView()Landroid/view/View;
    .registers 11

    .prologue
    const/4 v9, -0x2

    const/high16 v8, 0x4160

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x5

    .line 2326
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2327
    .local v3, result:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2328
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2330
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2334
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2335
    .local v2, promptMsg:Landroid/widget/TextView;
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 2336
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2337
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090044

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2339
    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2341
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    .line 2342
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 2343
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2344
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setTextSize(F)V

    .line 2345
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 2346
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 2347
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const v5, 0x1080018

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 2349
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2352
    .local v1, lp2:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x3

    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 2354
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2356
    return-object v3
.end method

.method private delayedCleanupAfterDisconnect()V
    .registers 4

    .prologue
    .line 2807
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 2810
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2812
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v2

    if-nez v2, :cond_39

    .line 2814
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_18

    const-string v2, "- delayedCleanupAfterDisconnect: phone is idle..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2825
    :cond_18
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_21

    const-string v2, "- delayedCleanupAfterDisconnect: finishing..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2832
    :cond_21
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mShowCallLogAfterDisconnect:Z

    if-eqz v2, :cond_32

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isPhoneStateRestricted()Z

    move-result v2

    if-nez v2, :cond_32

    .line 2834
    invoke-static {}, Lcom/android/phone/PhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2835
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 2840
    .end local v1           #intent:Landroid/content/Intent;
    :cond_32
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 2843
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 2853
    :cond_38
    :goto_38
    return-void

    .line 2848
    :cond_39
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_42

    const-string v2, "- delayedCleanupAfterDisconnect: staying on the InCallScreen..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2849
    :cond_42
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    goto :goto_38
.end method

.method private dismissAllDialogs()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3478
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 3480
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3481
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3483
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_17

    .line 3485
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3486
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 3488
    :cond_17
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_22

    .line 3490
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3491
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 3493
    :cond_22
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2d

    .line 3495
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3496
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3498
    :cond_2d
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_38

    .line 3500
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3501
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 3503
    :cond_38
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_43

    .line 3505
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3506
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 3508
    :cond_43
    return-void
.end method

.method private final displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 11
    .parameter "ci"
    .parameter "nameTextView"
    .parameter "numberTypeTextView"
    .parameter "numberTextView"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 3886
    const-string v0, ""

    .line 3887
    .local v0, callerName:Ljava/lang/String;
    const-string v1, ""

    .line 3888
    .local v1, callerNumber:Ljava/lang/String;
    const-string v2, ""

    .line 3889
    .local v2, callerNumberType:Ljava/lang/String;
    if-eqz p1, :cond_22

    .line 3890
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 3891
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 3892
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3893
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 3894
    const v3, 0x7f090007

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3903
    :cond_22
    :goto_22
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3906
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 3907
    invoke-virtual {p4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3908
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3915
    :goto_31
    return-void

    .line 3897
    :cond_32
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3898
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    goto :goto_22

    .line 3910
    :cond_37
    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3911
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3912
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3913
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_31
.end method

.method private dontAddVoiceMailNumber()V
    .registers 2

    .prologue
    .line 2770
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 2771
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2772
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 2774
    :cond_c
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_15

    const-string v0, "dontAddVoiceMailNumber: finishing..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2775
    :cond_15
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 2776
    return-void
.end method

.method private dumpBluetoothState()V
    .registers 4

    .prologue
    .line 4442
    const-string v1, "============== dumpBluetoothState() ============="

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= isBluetoothAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= isBluetoothAudioConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= isBluetoothAudioConnectedOrPending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= PhoneApp.showBluetoothIndication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4448
    const-string v1, "="

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4449
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v1, :cond_db

    .line 4450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= BluetoothHandsfree.isAudioOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4451
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_d5

    .line 4452
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getHeadsetAddress()Ljava/lang/String;

    move-result-object v0

    .line 4453
    .local v0, headsetAddress:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= BluetoothHeadset.getHeadsetAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4454
    if-eqz v0, :cond_d4

    .line 4455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= BluetoothHeadset.isConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->isConnected(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4464
    .end local v0           #headsetAddress:Ljava/lang/String;
    :cond_d4
    :goto_d4
    return-void

    .line 4459
    :cond_d5
    const-string v1, "= mBluetoothHeadset is null"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_d4

    .line 4462
    :cond_db
    const-string v1, "= mBluetoothHandsfree is null; device is not BT capable"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_d4
.end method

.method private enableTouchLock(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 4557
    if-eqz p1, :cond_2e

    .line 4560
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4595
    :cond_a
    :goto_a
    return-void

    .line 4566
    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4572
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-nez v0, :cond_1c

    .line 4573
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initTouchLock()V

    .line 4579
    :cond_1c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 4582
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4583
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mTouchLockFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_a

    .line 4593
    :cond_2e
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a
.end method

.method private endConferenceConnection(ILcom/android/internal/telephony/Connection;)V
    .registers 3
    .parameter "i"
    .parameter "connection"

    .prologue
    .line 3927
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 3931
    return-void
.end method

.method private getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    .registers 5
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    const-string v2, "android.intent.extra.PHONE_NUMBER"

    .line 2510
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2512
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 2513
    const/4 v1, 0x0

    .line 2521
    :goto_9
    return-object v1

    .line 2516
    :cond_a
    if-eqz v0, :cond_23

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2518
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 2521
    :cond_23
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0, v1, p1}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method private handleBackKey()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1424
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v1, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 1427
    .local v1, notifier:Lcom/android/phone/CallNotifier;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1428
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_1d

    const-string v2, "BACK key while ringing: reject the call"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_1d
    move v2, v4

    .line 1488
    :goto_1e
    return v2

    .line 1442
    :cond_1f
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1445
    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 1447
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2, v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    move v2, v4

    .line 1448
    goto :goto_1e

    .line 1451
    :cond_31
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v2, v3, :cond_3e

    .line 1453
    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    move v2, v4

    .line 1454
    goto :goto_1e

    .line 1458
    :cond_3e
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1459
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_5f

    const-string v2, "BACK key but no more call: ignore it"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_5f
    move v2, v5

    .line 1460
    goto :goto_1e

    .line 1465
    :cond_61
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1466
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0901df

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1467
    const v2, 0x7f0a0013

    new-instance v3, Lcom/android/phone/InCallScreen$6;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$6;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1482
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->backDialog:Landroid/app/AlertDialog;

    .line 1483
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->backDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1485
    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mIsIncallBackKey:Z

    move v2, v4

    .line 1488
    goto :goto_1e
.end method

.method private handleCallKey()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1535
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_37

    move v2, v5

    .line 1536
    .local v2, hasRingingCall:Z
    :goto_b
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_39

    move v0, v5

    .line 1537
    .local v0, hasActiveCall:Z
    :goto_14
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_3b

    move v1, v5

    .line 1567
    .local v1, hasHoldingCall:Z
    :goto_1d
    if-eqz v2, :cond_4a

    .line 1578
    const-string v3, "InCallScreen"

    const-string v4, "handleCallKey: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    if-eqz v0, :cond_3d

    if-eqz v1, :cond_3d

    .line 1585
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_33

    const-string v3, "handleCallKey: ringing (both lines in use) ==> answer!"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1586
    :cond_33
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCallBothLinesInUse()V

    .line 1616
    :cond_36
    :goto_36
    return v5

    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    .end local v2           #hasRingingCall:Z
    :cond_37
    move v2, v4

    .line 1535
    goto :goto_b

    .restart local v2       #hasRingingCall:Z
    :cond_39
    move v0, v4

    .line 1536
    goto :goto_14

    .restart local v0       #hasActiveCall:Z
    :cond_3b
    move v1, v4

    .line 1537
    goto :goto_1d

    .line 1588
    .restart local v1       #hasHoldingCall:Z
    :cond_3d
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_46

    const-string v3, "handleCallKey: ringing ==> answer!"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1589
    :cond_46
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_36

    .line 1592
    :cond_4a
    if-eqz v0, :cond_5b

    if-eqz v1, :cond_5b

    .line 1594
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_57

    const-string v3, "handleCallKey: both lines in use ==> swap calls."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1595
    :cond_57
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_36

    .line 1596
    :cond_5b
    if-eqz v1, :cond_36

    .line 1599
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_66

    const-string v3, "handleCallKey: call on hold ==> unhold."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1600
    :cond_66
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Phone;)V

    goto :goto_36
.end method

.method private handleCallKey_temp()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1625
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_27

    move v2, v4

    .line 1626
    .local v2, hasRingingCall:Z
    :goto_b
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_29

    move v0, v4

    .line 1627
    .local v0, hasActiveCall:Z
    :goto_14
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2b

    move v1, v4

    .line 1629
    .local v1, hasHoldingCall:Z
    :goto_1d
    if-eqz v2, :cond_26

    .line 1632
    if-nez v0, :cond_26

    if-nez v1, :cond_26

    .line 1633
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 1640
    :cond_26
    return v4

    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    .end local v2           #hasRingingCall:Z
    :cond_27
    move v2, v5

    .line 1625
    goto :goto_b

    .restart local v2       #hasRingingCall:Z
    :cond_29
    move v0, v5

    .line 1626
    goto :goto_14

    .restart local v0       #hasActiveCall:Z
    :cond_2b
    move v1, v5

    .line 1627
    goto :goto_1d
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1409
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1410
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1413
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private handleMissingVoiceMailNumber()V
    .registers 6

    .prologue
    .line 2714
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_9

    const-string v2, "handleMissingVoiceMailNumber"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2716
    :cond_9
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 2717
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x6b

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2719
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 2720
    .local v1, msg2:Landroid/os/Message;
    const/16 v2, 0x6a

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2722
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090045

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090046

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09003d

    new-instance v4, Lcom/android/phone/InCallScreen$13;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/InCallScreen$13;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090047

    new-instance v4, Lcom/android/phone/InCallScreen$12;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/InCallScreen$12;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/InCallScreen$11;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/InCallScreen$11;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 2748
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 2751
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2752
    return-void
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .registers 8
    .parameter "r"
    .parameter "ch"

    .prologue
    .line 2253
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2255
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_15

    .line 2256
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 2262
    .local v2, state:Lcom/android/internal/telephony/Connection$PostDialState;
    sget-object v3, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_22

    .line 2289
    .end local v2           #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_15
    :goto_15
    :pswitch_15
    return-void

    .line 2273
    .restart local v2       #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :pswitch_16
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v1

    .line 2274
    .local v1, postDialStr:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_15

    .line 2279
    .end local v1           #postDialStr:Ljava/lang/String;
    :pswitch_1e
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V

    goto :goto_15

    .line 2262
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_15
        :pswitch_16
        :pswitch_1e
        :pswitch_15
    .end packed-switch
.end method

.method private handleStartupError(Lcom/android/phone/InCallScreen$InCallInitStatus;)V
    .registers 8
    .parameter "status"

    .prologue
    const v4, 0x7f0901c6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v5, "InCallScreen"

    .line 3266
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartupError(): status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3277
    :cond_21
    sget-object v0, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_90

    .line 3352
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartupError: unexpected status code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    invoke-direct {p0, v4, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    .line 3356
    :cond_47
    :goto_47
    return-void

    .line 3283
    :pswitch_48
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleMissingVoiceMailNumber()V

    goto :goto_47

    .line 3294
    :pswitch_4c
    const v0, 0x7f0901c3

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_47

    .line 3300
    :pswitch_53
    const v0, 0x7f0901c4

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_47

    .line 3306
    :pswitch_5a
    const-string v0, "InCallScreen"

    const-string v0, "handleStartupError: unexpected PHONE_NOT_IN_USE status"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 3314
    :pswitch_62
    const v0, 0x7f0901c5

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_47

    .line 3326
    :pswitch_69
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_47

    .line 3327
    const v0, 0x7f0901c7

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_47

    .line 3337
    :pswitch_7e
    invoke-direct {p0, v4, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_47

    .line 3342
    :pswitch_82
    const v0, 0x7f0901ca

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_47

    .line 3348
    :pswitch_89
    const v0, 0x7f090013

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_47

    .line 3277
    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_48
        :pswitch_4c
        :pswitch_53
        :pswitch_5a
        :pswitch_62
        :pswitch_69
        :pswitch_7e
        :pswitch_82
        :pswitch_89
    .end packed-switch
.end method

.method private initInCallScreen()V
    .registers 5

    .prologue
    .line 1346
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1348
    const v1, 0x7f060064

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mMainFrame:Landroid/view/ViewGroup;

    .line 1349
    const v1, 0x7f060065

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    .line 1351
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->initConfiguration(Landroid/content/res/Configuration;)V

    .line 1360
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030003

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1363
    .local v0, callCardLayout:Landroid/view/View;
    const v1, 0x7f06002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallCard;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    .line 1365
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v1, p0}, Lcom/android/phone/CallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1367
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v1}, Lcom/android/phone/CallCard;->reset()V

    .line 1370
    const v1, 0x7f060066

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mMenuButtonHint:Landroid/widget/TextView;

    .line 1373
    const v1, 0x7f06001f

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mUserInterfaceArea:Landroid/view/ViewGroup;

    .line 1374
    const v1, 0x7f060020

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenuFrame:Landroid/view/ViewGroup;

    .line 1375
    const v1, 0x7f060022

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mIncomingMenuFrame:Landroid/view/ViewGroup;

    .line 1376
    const v1, 0x7f060023

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mMenuButtonAccept:Landroid/widget/Button;

    .line 1377
    const v1, 0x7f060024

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mMenuButtonReject:Landroid/widget/Button;

    .line 1378
    const v1, 0x7f060021

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mMenuButtonEnd:Landroid/widget/Button;

    .line 1384
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMenuButtonAccept:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1385
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMenuButtonReject:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1386
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMenuButtonEnd:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1390
    invoke-static {p0}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->applyConfigurationToLayout(Lcom/android/phone/InCallScreen;)V

    .line 1391
    return-void
.end method

.method private initManageConferencePanel()V
    .registers 6

    .prologue
    const/4 v4, 0x5

    .line 3598
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v2, :cond_52

    .line 3599
    const v2, 0x7f060067

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mManageConferencePanel:Landroid/view/ViewGroup;

    .line 3602
    const v2, 0x7f060068

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Chronometer;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mConferenceTime:Landroid/widget/Chronometer;

    .line 3603
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mConferenceTime:Landroid/widget/Chronometer;

    const v3, 0x7f09019c

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 3606
    new-array v2, v4, [Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mConferenceCallList:[Landroid/view/ViewGroup;

    .line 3608
    new-array v1, v4, [I

    fill-array-data v1, :array_54

    .line 3610
    .local v1, viewGroupIdList:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_31
    if-ge v0, v4, :cond_42

    .line 3611
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    aput-object v2, v3, v0

    .line 3610
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 3615
    :cond_42
    const v2, 0x7f060071

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mButtonManageConferenceDone:Landroid/widget/Button;

    .line 3617
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mButtonManageConferenceDone:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3619
    .end local v0           #i:I
    .end local v1           #viewGroupIdList:[I
    :cond_52
    return-void

    .line 3608
    nop

    :array_54
    .array-data 0x4
        0x6ct 0x0t 0x6t 0x7ft
        0x6dt 0x0t 0x6t 0x7ft
        0x6et 0x0t 0x6t 0x7ft
        0x6ft 0x0t 0x6t 0x7ft
        0x70t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method private initTouchLock()V
    .registers 3

    .prologue
    .line 4516
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 4517
    const-string v0, "InCallScreen"

    const-string v1, "initTouchLock: already initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4532
    :goto_b
    return-void

    .line 4521
    :cond_c
    const v0, 0x7f060072

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    .line 4523
    const v0, 0x7f060073

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    .line 4528
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4529
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4531
    const/high16 v0, 0x7f04

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockFadeIn:Landroid/view/animation/Animation;

    goto :goto_b
.end method

.method private internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .registers 11
    .parameter "intent"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const-string v8, "com.android.phone.ShowDialpad"

    const-string v7, "android.intent.action.ONDISCONNECT"

    .line 1282
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_11

    .line 1283
    :cond_e
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1334
    :goto_10
    return-object v3

    .line 1286
    :cond_11
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1287
    .local v0, action:Ljava/lang/String;
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_2f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "internalResolveIntent: action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1294
    :cond_2f
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 1295
    .local v1, app:Lcom/android/phone/PhoneApp;
    const-string v3, "android.intent.action.ANSWER"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 1296
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 1297
    invoke-virtual {v1, v5}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 1298
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_10

    .line 1299
    :cond_44
    const-string v3, "android.intent.action.CALL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 1301
    :cond_54
    invoke-virtual {v1, v5}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 1302
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->placeCall(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v3

    goto :goto_10

    .line 1305
    :cond_5c
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    const-string v3, "android.intent.action.ONDISCONNECT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 1309
    :cond_6c
    const-string v3, "android.intent.action.ONDISCONNECT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8c

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 1310
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 1311
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/android/phone/PhoneUtils;->setAudioMode(Landroid/content/Context;I)V

    .line 1320
    :cond_8c
    const-string v3, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 1321
    const-string v3, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v8, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1323
    .local v2, showDialpad:Z
    if-eqz v2, :cond_a5

    .line 1324
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3, v5}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    .line 1329
    .end local v2           #showDialpad:Z
    :cond_a1
    :goto_a1
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_10

    .line 1326
    .restart local v2       #showDialpad:Z
    :cond_a5
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3, v5}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_a1

    .line 1331
    .end local v2           #showDialpad:Z
    :cond_ab
    const-string v3, "InCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "internalResolveIntent: unexpected intent action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_10
.end method

.method private internalSwapCalls()V
    .registers 3

    .prologue
    .line 3576
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 3583
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 3586
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Phone;)V

    .line 3587
    return-void
.end method

.method private isTouchLocked()Z
    .registers 2

    .prologue
    .line 4535
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 4736
    const-string v0, "InCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4737
    return-void
.end method

.method private okToDialDTMFTones()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4048
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_23

    move v2, v6

    .line 4049
    .local v2, hasRingingCall:Z
    :goto_b
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 4060
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_19

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v3, :cond_25

    :cond_19
    if-nez v2, :cond_25

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v3, v4, :cond_25

    move v0, v6

    .line 4070
    .local v0, canDial:Z
    :goto_22
    return v0

    .end local v0           #canDial:Z
    .end local v1           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v2           #hasRingingCall:Z
    :cond_23
    move v2, v5

    .line 4048
    goto :goto_b

    .restart local v1       #fgCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v2       #hasRingingCall:Z
    :cond_25
    move v0, v5

    .line 4060
    goto :goto_22
.end method

.method private onBluetoothClick(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 3128
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3130
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 3131
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 3150
    :goto_f
    return-void

    .line 3139
    :cond_10
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3140
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;Z)V

    .line 3143
    :cond_1a
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->connectBluetoothAudio()V

    goto :goto_f

    .line 3148
    :cond_1e
    const-string v0, "InCallScreen"

    const-string v1, "Got onBluetoothClick, but bluetooth is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .registers 21
    .parameter "r"

    .prologue
    .line 1968
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/internal/telephony/Connection;

    .line 1969
    .local v5, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v8

    .line 1970
    .local v8, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-boolean v15, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v15, :cond_32

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onDisconnect: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", cause="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1975
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 1996
    sget-object v15, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v8, v15, :cond_4c

    .line 1997
    const v15, 0x7f090014

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    .line 2186
    :cond_4b
    :goto_4b
    return-void

    .line 1999
    :cond_4c
    sget-object v15, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v8, v15, :cond_5e

    .line 2000
    const v15, 0x7f090013

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_4b

    .line 2002
    :cond_5e
    sget-object v15, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v8, v15, :cond_70

    .line 2003
    const v15, 0x7f090015

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_4b

    .line 2005
    :cond_70
    sget-object v15, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v8, v15, :cond_82

    .line 2006
    const v15, 0x7f090016

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_4b

    .line 2008
    :cond_82
    sget-object v15, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v8, v15, :cond_94

    .line 2009
    const v15, 0x7f090017

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_4b

    .line 2011
    :cond_94
    sget-object v15, Lcom/android/internal/telephony/Connection$DisconnectCause;->IMSI_UNKNOWN_IN_VLR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v8, v15, :cond_a6

    .line 2012
    const v15, 0x7f090018

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_4b

    .line 2014
    :cond_a6
    sget-object v15, Lcom/android/internal/telephony/Connection$DisconnectCause;->IMEI_NOT_ACCEPTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v8, v15, :cond_b8

    .line 2015
    const v15, 0x7f090019

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_4b

    .line 2047
    :cond_b8
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    .line 2048
    .local v3, app:Lcom/android/phone/PhoneApp;
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v15

    if-nez v15, :cond_151

    const/4 v15, 0x1

    move v11, v15

    .line 2059
    .local v11, currentlyIdle:Z
    :goto_c4
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 2060
    .local v6, call:Lcom/android/internal/telephony/Call;
    if-eqz v6, :cond_101

    .line 2069
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    .line 2070
    .local v10, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v10, :cond_101

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_101

    .line 2071
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_df
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_101

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/Connection;

    .line 2072
    .local v9, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    sget-object v16, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object v0, v15

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_df

    .line 2082
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 2083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v15, v0

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 2092
    .end local v9           #conn:Lcom/android/internal/telephony/Connection;
    .end local v10           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_101
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-string v16, "emergency_call_retry_count"

    const/16 v17, -0x1

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 2102
    .local v12, emergencyCallRetryCount:I
    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v15

    if-nez v15, :cond_155

    const/4 v15, 0x1

    :goto_114
    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallScreen;->mShowCallLogAfterDisconnect:Z

    .line 2108
    sget-object v15, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v8, v15, :cond_127

    sget-object v15, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v8, v15, :cond_127

    sget-object v15, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v8, v15, :cond_157

    if-lez v12, :cond_157

    :cond_127
    if-eqz v11, :cond_157

    const/4 v15, 0x1

    move v4, v15

    .line 2115
    .local v4, bailOutImmediately:Z
    :goto_12b
    if-eqz v4, :cond_15a

    .line 2121
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V

    .line 2125
    sget-object v15, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v8, v15, :cond_4b

    if-lez v12, :cond_4b

    .line 2127
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-class v16, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4b

    .line 2048
    .end local v4           #bailOutImmediately:Z
    .end local v6           #call:Lcom/android/internal/telephony/Call;
    .end local v11           #currentlyIdle:Z
    .end local v12           #emergencyCallRetryCount:I
    :cond_151
    const/4 v15, 0x0

    move v11, v15

    goto/16 :goto_c4

    .line 2102
    .restart local v6       #call:Lcom/android/internal/telephony/Call;
    .restart local v11       #currentlyIdle:Z
    .restart local v12       #emergencyCallRetryCount:I
    :cond_155
    const/4 v15, 0x0

    goto :goto_114

    .line 2108
    :cond_157
    const/4 v15, 0x0

    move v4, v15

    goto :goto_12b

    .line 2139
    .restart local v4       #bailOutImmediately:Z
    :cond_15a
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 2143
    if-eqz v11, :cond_18e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    move v15, v0

    if-eqz v15, :cond_18e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    sget-object v16, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    move-object v0, v15

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_186

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v15

    sget-object v16, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    move-object v0, v15

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_18e

    .line 2150
    :cond_186
    sget-object v15, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 2155
    :cond_18e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v15

    if-nez v15, :cond_1e8

    const/4 v15, 0x1

    move v13, v15

    .line 2156
    .local v13, hasActiveCall:Z
    :goto_19b
    if-nez v13, :cond_1c7

    .line 2161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    move-object v15, v0

    if-eqz v15, :cond_1b2

    .line 2163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/app/AlertDialog;->dismiss()V

    .line 2164
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2166
    :cond_1b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    move-object v15, v0

    if-eqz v15, :cond_1c7

    .line 2168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/app/AlertDialog;->dismiss()V

    .line 2169
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 2179
    :cond_1c7
    sget-object v15, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v8, v15, :cond_1eb

    const/16 v15, 0xc8

    move v7, v15

    .line 2182
    .local v7, callEndedDisplayDelay:I
    :goto_1ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object v15, v0

    const/16 v16, 0x6c

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->removeMessages(I)V

    .line 2183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object v15, v0

    const/16 v16, 0x6c

    move v0, v7

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4b

    .line 2155
    .end local v7           #callEndedDisplayDelay:I
    .end local v13           #hasActiveCall:Z
    :cond_1e8
    const/4 v15, 0x0

    move v13, v15

    goto :goto_19b

    .line 2179
    .restart local v13       #hasActiveCall:Z
    :cond_1eb
    const/16 v15, 0x7d0

    move v7, v15

    goto :goto_1ce
.end method

.method private onHoldClick()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3097
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_20

    move v0, v6

    .line 3098
    .local v0, hasActiveCall:Z
    :goto_b
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_22

    move v1, v6

    .line 3103
    .local v1, hasHoldingCall:Z
    :goto_14
    if-eqz v0, :cond_24

    if-nez v1, :cond_24

    .line 3105
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Phone;)V

    .line 3106
    const/4 v3, 0x1

    .line 3107
    .local v3, newHoldState:Z
    const/4 v2, 0x1

    .line 3123
    .local v2, holdButtonEnabled:Z
    :goto_1f
    return-void

    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    .end local v2           #holdButtonEnabled:Z
    .end local v3           #newHoldState:Z
    :cond_20
    move v0, v5

    .line 3097
    goto :goto_b

    .restart local v0       #hasActiveCall:Z
    :cond_22
    move v1, v5

    .line 3098
    goto :goto_14

    .line 3108
    .restart local v1       #hasHoldingCall:Z
    :cond_24
    if-nez v0, :cond_30

    if-eqz v1, :cond_30

    .line 3110
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Phone;)V

    .line 3111
    const/4 v3, 0x0

    .line 3112
    .restart local v3       #newHoldState:Z
    const/4 v2, 0x1

    .restart local v2       #holdButtonEnabled:Z
    goto :goto_1f

    .line 3115
    .end local v2           #holdButtonEnabled:Z
    .end local v3           #newHoldState:Z
    :cond_30
    const/4 v3, 0x0

    .line 3116
    .restart local v3       #newHoldState:Z
    const/4 v2, 0x0

    .restart local v2       #holdButtonEnabled:Z
    goto :goto_1f
.end method

.method private onMMICancel()V
    .registers 2

    .prologue
    .line 2228
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 2239
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "onMMICancel: finishing..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2240
    :cond_e
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 2241
    return-void
.end method

.method private onMMIInitiate(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter "r"

    .prologue
    .line 2199
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v2, :cond_5

    .line 2216
    :goto_4
    return-void

    .line 2208
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 2210
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/MmiCode;

    .line 2213
    .local v1, mmiCode:Lcom/android/internal/telephony/MmiCode;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x35

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2214
    .local v0, message:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-static {p0, v1, v0, v2}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    goto :goto_4
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .registers 5
    .parameter "r"

    .prologue
    .line 1930
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1931
    .local v0, ec:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_15

    .line 1949
    :cond_14
    :goto_14
    return-void

    .line 1939
    :cond_15
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v1, :cond_14

    .line 1944
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 1948
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto :goto_14
.end method

.method private phoneIsInUse()Z
    .registers 3

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private placeCall(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .registers 13
    .parameter "intent"

    .prologue
    const-string v10, "\'."

    const-string v9, "InCallScreen"

    .line 2539
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->checkIfOkToInitiateOutgoingCall()Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v6

    .line 2542
    .local v6, okToCallStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 2544
    .local v5, number:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 2545
    const-string v7, "InCallScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "line 2207: getinitialNumber is empty :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    sget-object v7, Lcom/android/phone/InCallScreen$InCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :try_end_2c
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_8 .. :try_end_2c} :catch_2d

    .line 2673
    .end local v5           #number:Ljava/lang/String;
    :goto_2c
    return-object v7

    .line 2549
    :catch_2d
    move-exception v7

    move-object v1, v7

    .line 2554
    .local v1, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    sget-object v7, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v6, v7, :cond_3e

    .line 2555
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_3c

    const-string v7, "Voicemail number not reachable in current SIM card state."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_3c
    move-object v7, v6

    .line 2556
    goto :goto_2c

    .line 2558
    :cond_3e
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_47

    const-string v7, "VoiceMailNumberMissingException from getInitialNumber()"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2559
    :cond_47
    sget-object v7, Lcom/android/phone/InCallScreen$InCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_2c

    .line 2562
    .end local v1           #ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    .restart local v5       #number:Ljava/lang/String;
    :cond_4a
    if-nez v5, :cond_67

    .line 2563
    const-string v7, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "placeCall: couldn\'t get a phone number from Intent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    sget-object v7, Lcom/android/phone/InCallScreen$InCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_2c

    .line 2567
    :cond_67
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    .line 2568
    .local v3, isEmergencyNumber:Z
    const-string v7, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2570
    .local v2, isEmergencyIntent:Z
    if-eqz v3, :cond_a4

    if-nez v2, :cond_a4

    .line 2571
    const-string v7, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non-CALL_EMERGENCY Intent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " attempted to call emergency number "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    sget-object v7, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_2c

    .line 2575
    :cond_a4
    if-nez v3, :cond_d4

    if-eqz v2, :cond_d4

    .line 2576
    const-string v7, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received CALL_EMERGENCY Intent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with non-emergency number "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " -- failing call."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    sget-object v7, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_2c

    .line 2585
    :cond_d4
    if-eqz v3, :cond_f6

    sget-object v7, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-ne v6, v7, :cond_f6

    .line 2586
    sget-object v6, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 2587
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_f6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Emergency number detected, changing state to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2590
    :cond_f6
    sget-object v7, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v6, v7, :cond_12c

    .line 2596
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v4

    .line 2597
    .local v4, mOpCode:Ljava/lang/String;
    const-string v7, "TIM"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_129

    if-eqz v3, :cond_129

    sget-object v7, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-ne v6, v7, :cond_129

    .line 2598
    const-class v7, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, p0, v7}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 2599
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_122

    const-string v7, "placeCall: starting EmergencyCallHandler, finishing..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2600
    :cond_122
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 2601
    sget-object v7, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_2c

    :cond_129
    move-object v7, v6

    .line 2603
    goto/16 :goto_2c

    .line 2609
    .end local v4           #mOpCode:Ljava/lang/String;
    :cond_12c
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v5, v8}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    .line 2610
    .local v0, callStatus:I
    packed-switch v0, :pswitch_data_1fe

    .line 2671
    const-string v7, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "placeCall: unknown callStatus "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from PhoneUtils.placeCall() for number \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    sget-object v7, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_2c

    .line 2619
    :pswitch_165
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 2631
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v7}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 2634
    sget-object v7, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_2c

    .line 2636
    :pswitch_174
    sget-boolean v7, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v7, :cond_194

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "placeCall: specified number was an MMI code: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2647
    :cond_194
    sget-object v7, Lcom/android/phone/InCallScreen$InCallInitStatus;->DIALED_MMI:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_2c

    .line 2649
    :pswitch_198
    const-string v7, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "placeCall: PhoneUtils.placeCall() FAILED for number \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    sget-object v7, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_2c

    .line 2656
    :pswitch_1ba
    const-string v7, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "placeCall: PhoneUtils.placeCall() already emergency call is setup \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    sget-object v7, Lcom/android/phone/InCallScreen$InCallInitStatus;->ALREADY_EMERGENCY_SETUP:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_2c

    .line 2664
    :pswitch_1dc
    const-string v7, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "placeCall: PhoneUtils.placeCall() is blocked by FDN \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    sget-object v7, Lcom/android/phone/InCallScreen$InCallInitStatus;->FDN_BLOCKED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_2c

    .line 2610
    :pswitch_data_1fe
    .packed-switch 0x0
        :pswitch_165
        :pswitch_174
        :pswitch_198
        :pswitch_1ba
        :pswitch_1dc
    .end packed-switch
.end method

.method private registerForPhoneStates()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1209
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    if-nez v0, :cond_50

    .line 1210
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPhoneStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1211
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1212
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1214
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7a

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForConnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1222
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1224
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1225
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1228
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x73

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 1232
    :cond_50
    return-void
.end method

.method private resetTouchLockTimer()V
    .registers 6

    .prologue
    const/16 v4, 0x71

    .line 4610
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4611
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v1

    if-nez v1, :cond_27

    .line 4620
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "short_keylight_delay_ms"

    const/16 v3, 0x1770

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4624
    .local v0, touchLockDelay:I
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4626
    .end local v0           #touchLockDelay:I
    :cond_27
    return-void
.end method

.method private separateConferenceConnection(ILcom/android/internal/telephony/Connection;)V
    .registers 3
    .parameter "i"
    .parameter "connection"

    .prologue
    .line 3943
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->separateCall(Lcom/android/internal/telephony/Connection;)V

    .line 3953
    return-void
.end method

.method private setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V
    .registers 11
    .parameter "newMode"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    const-string v8, "InCallScreen"

    .line 3630
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 3631
    sget-object v3, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen$InCallScreenMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_ca

    .line 3700
    :cond_15
    :goto_15
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 3701
    :goto_18
    return-void

    .line 3633
    :pswitch_19
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 3634
    const-string v3, "InCallScreen"

    const-string v3, "MANAGE_CONFERENCE: no active conference call!"

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_18

    .line 3639
    :cond_2e
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 3642
    .local v2, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v2, :cond_3c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v7, :cond_5a

    .line 3643
    :cond_3c
    const-string v3, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MANAGE_CONFERENCE: Bogus TRUE from isConferenceCall(); connections = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3647
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_18

    .line 3651
    :cond_5a
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initManageConferencePanel()V

    .line 3652
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->updateManageConferencePanel(Ljava/util/List;)V

    .line 3656
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferencePanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3659
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v0

    .line 3660
    .local v0, callDuration:J
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/widget/Chronometer;->setBase(J)V

    .line 3661
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v3}, Landroid/widget/Chronometer;->start()V

    .line 3663
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3664
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3, v7}, Lcom/android/phone/DTMFTwelveKeyDialer;->hideDTMFDisplay(Z)V

    goto :goto_15

    .line 3672
    .end local v0           #callDuration:J
    .end local v2           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :pswitch_89
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz v3, :cond_97

    .line 3673
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferencePanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3675
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v3}, Landroid/widget/Chronometer;->stop()V

    .line 3677
    :cond_97
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateMenuButtonHint()V

    .line 3679
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateUserInterfaceButton()V

    .line 3681
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3682
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3, v5}, Lcom/android/phone/DTMFTwelveKeyDialer;->hideDTMFDisplay(Z)V

    goto/16 :goto_15

    .line 3687
    :pswitch_a9
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3688
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, v4}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/Phone;)V

    .line 3689
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3, v5}, Lcom/android/phone/DTMFTwelveKeyDialer;->hideDTMFDisplay(Z)V

    .line 3690
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz v3, :cond_15

    .line 3691
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mManageConferencePanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3693
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v3}, Landroid/widget/Chronometer;->stop()V

    goto/16 :goto_15

    .line 3631
    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_19
        :pswitch_89
        :pswitch_a9
    .end packed-switch
.end method

.method private showGenericErrorDialog(IZ)V
    .registers 13
    .parameter "resid"
    .parameter "isStartupError"

    .prologue
    const/4 v8, 0x1

    .line 3392
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 3393
    .local v4, msg:Ljava/lang/CharSequence;
    const v6, 0x7f090018

    if-eq p1, v6, :cond_13

    const v6, 0x7f090019

    if-ne p1, v6, :cond_99

    :cond_13
    move v6, v8

    :goto_14
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3394
    .local v5, vlrImeiCause:Ljava/lang/Boolean;
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_38

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showGenericErrorDialog(\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\')..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3399
    :cond_38
    if-eqz p2, :cond_9c

    .line 3400
    new-instance v2, Lcom/android/phone/InCallScreen$16;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$16;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 3404
    .local v2, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/phone/InCallScreen$17;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$17;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 3421
    .local v1, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    :goto_44
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3422
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3423
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 3424
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3425
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialogOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 3431
    :goto_5a
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 3435
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 3438
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 3439
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_98

    .line 3440
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/32 v8, 0x1d4c0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3443
    :try_start_83
    new-instance v6, Landroid/media/ToneGenerator;

    const/4 v7, 0x1

    const/16 v8, 0x64

    invoke-direct {v6, v7, v8}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v6, p0, Lcom/android/phone/InCallScreen;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_8d
    .catch Ljava/lang/RuntimeException; {:try_start_83 .. :try_end_8d} :catch_b1

    .line 3448
    :goto_8d
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v6, :cond_98

    .line 3449
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v7, 0x1c

    invoke-virtual {v6, v7}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 3452
    :cond_98
    return-void

    .line 3393
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v1           #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v2           #clickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v5           #vlrImeiCause:Ljava/lang/Boolean;
    :cond_99
    const/4 v6, 0x0

    goto/16 :goto_14

    .line 3409
    .restart local v5       #vlrImeiCause:Ljava/lang/Boolean;
    :cond_9c
    new-instance v2, Lcom/android/phone/InCallScreen$18;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$18;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 3413
    .restart local v2       #clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/phone/InCallScreen$19;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$19;-><init>(Lcom/android/phone/InCallScreen;)V

    .restart local v1       #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    goto :goto_44

    .line 3428
    .restart local v0       #b:Landroid/app/AlertDialog$Builder;
    :cond_a7
    const v6, 0x7f09003d

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3429
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_5a

    .line 3444
    :catch_b1
    move-exception v6

    move-object v3, v6

    .line 3445
    .local v3, e:Ljava/lang/RuntimeException;
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_cd

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showGenericErrorDialog: Exception caught while creating local tone generator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3446
    :cond_cd
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/phone/InCallScreen;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_8d
.end method

.method private showNotiDialog(I)V
    .registers 8
    .parameter "resid"

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 356
    .local v1, msg:Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 358
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 359
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 362
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->createDialog:Landroid/app/AlertDialog;

    .line 366
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 369
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 370
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mNotiDialogStopper:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mNotiDialogStopper:Landroid/os/Handler;

    const/16 v4, 0x78

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 372
    return-void
.end method

.method private showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .registers 8
    .parameter "c"
    .parameter "postDialStr"

    .prologue
    .line 2292
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2293
    .local v1, r:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2294
    .local v0, buf:Ljava/lang/StringBuilder;
    const v2, 0x7f090042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2295
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2297
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_22

    .line 2299
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 2300
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2303
    :cond_22
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090043

    new-instance v4, Lcom/android/phone/InCallScreen$8;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/InCallScreen$8;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/InCallScreen$7;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/InCallScreen$7;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2320
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 2322
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2323
    return-void
.end method

.method private showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V
    .registers 6
    .parameter "c"

    .prologue
    .line 2360
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->createWildPromptView()Landroid/view/View;

    move-result-object v0

    .line 2362
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_10

    .line 2364
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2365
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 2368
    :cond_10
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090043

    new-instance v3, Lcom/android/phone/InCallScreen$10;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/InCallScreen$10;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/InCallScreen$9;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$9;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 2393
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 2395
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2397
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2398
    return-void
.end method

.method private stopTimer()V
    .registers 2

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->stopTimer()V

    .line 1340
    :cond_9
    return-void
.end method

.method private switchScreen(F)V
    .registers 6
    .parameter "value"

    .prologue
    .line 601
    const-string v0, "nodebug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchScreen ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2d

    .line 603
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep_Virtual(J)V

    .line 609
    :cond_2c
    :goto_2c
    return-void

    .line 605
    :cond_2d
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2c

    .line 606
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity_Virtual(JZ)V

    goto :goto_2c
.end method

.method private syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;
    .registers 4

    .prologue
    .line 2470
    const/4 v0, 0x0

    .line 2471
    .local v0, updateSuccessful:Z
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_a

    const-string v1, "syncWithPhoneState()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2480
    :cond_a
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_42

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_48

    .line 2487
    :cond_42
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 2488
    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 2492
    :goto_47
    return-object v1

    .line 2491
    :cond_48
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_51

    const-string v1, "syncWithPhoneState: phone is idle; we shouldn\'t be here!"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2492
    :cond_51
    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_47
.end method

.method private touchLockTimerExpired()V
    .registers 2

    .prologue
    .line 4636
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 4637
    return-void
.end method

.method private unregisterForPhoneStates()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1235
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPhoneStateChanged(Landroid/os/Handler;)V

    .line 1236
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1237
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 1238
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0x68

    invoke-interface {v0, v2, v1, v2}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1240
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 1243
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForConnect(Landroid/os/Handler;)V

    .line 1245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 1246
    return-void
.end method

.method private updateDialpadVisibility()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3968
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_15

    .line 3969
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 3979
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 3988
    :cond_15
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v1, :cond_25

    .line 3989
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v1

    if-eqz v1, :cond_26

    move v0, v3

    .line 3990
    .local v0, visibility:I
    :goto_20
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1, v0}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 3992
    .end local v0           #visibility:I
    :cond_25
    return-void

    .line 3989
    :cond_26
    const/16 v1, 0x8

    move v0, v1

    goto :goto_20
.end method

.method private updateManageConferencePanel(Ljava/util/List;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3719
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/android/phone/InCallScreen;->mNumCallersInConference:I

    .line 3725
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_33

    move v2, v7

    .line 3726
    .local v2, hasActiveCall:Z
    :goto_11
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_35

    move v3, v7

    .line 3727
    .local v3, hasHoldingCall:Z
    :goto_1a
    if-eqz v2, :cond_1e

    if-nez v3, :cond_37

    :cond_1e
    move v0, v7

    .line 3729
    .local v0, canSeparate:Z
    :goto_1f
    const/4 v4, 0x0

    .local v4, i:I
    :goto_20
    const/4 v5, 0x5

    if-ge v4, v5, :cond_3e

    .line 3730
    iget v5, p0, Lcom/android/phone/InCallScreen;->mNumCallersInConference:I

    if-ge v4, v5, :cond_39

    .line 3732
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 3733
    .local v1, connection:Lcom/android/internal/telephony/Connection;
    invoke-direct {p0, v4, v1, v0}, Lcom/android/phone/InCallScreen;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V

    .line 3729
    .end local v1           #connection:Lcom/android/internal/telephony/Connection;
    :goto_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .end local v0           #canSeparate:Z
    .end local v2           #hasActiveCall:Z
    .end local v3           #hasHoldingCall:Z
    .end local v4           #i:I
    :cond_33
    move v2, v6

    .line 3725
    goto :goto_11

    .restart local v2       #hasActiveCall:Z
    :cond_35
    move v3, v6

    .line 3726
    goto :goto_1a

    .restart local v3       #hasHoldingCall:Z
    :cond_37
    move v0, v6

    .line 3727
    goto :goto_1f

    .line 3736
    .restart local v0       #canSeparate:Z
    .restart local v4       #i:I
    :cond_39
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v6}, Lcom/android/phone/InCallScreen;->updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V

    goto :goto_30

    .line 3739
    :cond_3e
    return-void
.end method

.method private updateManageConferencePanelIfNecessary()V
    .registers 9

    .prologue
    const-string v7, "updateManageConferencePanelIfNecessary: finishing..."

    const-string v6, "InCallScreen"

    const-string v5, "- syncWithPhoneState failed! status = "

    .line 3750
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 3751
    .local v0, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-nez v0, :cond_40

    .line 3754
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 3755
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v2

    .line 3756
    .local v2, status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v2, v3, :cond_3f

    .line 3757
    const-string v3, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- syncWithPhoneState failed! status = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3760
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_3c

    const-string v3, "updateManageConferencePanelIfNecessary: finishing..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3761
    :cond_3c
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 3788
    .end local v2           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_3f
    :goto_3f
    return-void

    .line 3767
    :cond_40
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3768
    .local v1, numConnections:I
    const/4 v3, 0x1

    if-gt v1, v3, :cond_79

    .line 3771
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 3772
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v2

    .line 3773
    .restart local v2       #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v2, v3, :cond_3f

    .line 3774
    const-string v3, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- syncWithPhoneState failed! status = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3777
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_75

    const-string v3, "updateManageConferencePanelIfNecessary: finishing..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3778
    :cond_75
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_3f

    .line 3783
    .end local v2           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_79
    iget v3, p0, Lcom/android/phone/InCallScreen;->mNumCallersInConference:I

    if-eq v1, v3, :cond_3f

    .line 3785
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->updateManageConferencePanel(Ljava/util/List;)V

    goto :goto_3f
.end method

.method private updateManageConferenceRow(ILcom/android/internal/telephony/Connection;Z)V
    .registers 15
    .parameter "i"
    .parameter "connection"
    .parameter "canSeparate"

    .prologue
    const/4 v10, 0x0

    .line 3806
    if-eqz p2, :cond_73

    .line 3808
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3811
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const v9, 0x7f06002b

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 3813
    .local v0, endButton:Landroid/widget/ImageButton;
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const v9, 0x7f06002f

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    .line 3815
    .local v6, separateButton:Landroid/widget/ImageButton;
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const v9, 0x7f06002c

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3817
    .local v3, nameTextView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const v9, 0x7f06002e

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 3819
    .local v4, numberTextView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const v9, 0x7f06002d

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3825
    .local v5, numberTypeTextView:Landroid/widget/TextView;
    new-instance v1, Lcom/android/phone/InCallScreen$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/phone/InCallScreen$20;-><init>(Lcom/android/phone/InCallScreen;ILcom/android/internal/telephony/Connection;)V

    .line 3831
    .local v1, endThisConnection:Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3833
    if-eqz p3, :cond_6e

    .line 3834
    new-instance v7, Lcom/android/phone/InCallScreen$21;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/phone/InCallScreen$21;-><init>(Lcom/android/phone/InCallScreen;ILcom/android/internal/telephony/Connection;)V

    .line 3840
    .local v7, separateThisConnection:Landroid/view/View$OnClickListener;
    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3841
    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3848
    .end local v7           #separateThisConnection:Landroid/view/View$OnClickListener;
    :goto_60
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    invoke-static {p0, p2, p0, v8}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v2

    .line 3852
    .local v2, info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v8, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {p0, v8, v3, v5, v4}, Lcom/android/phone/InCallScreen;->displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 3858
    .end local v0           #endButton:Landroid/widget/ImageButton;
    .end local v1           #endThisConnection:Landroid/view/View$OnClickListener;
    .end local v2           #info:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v3           #nameTextView:Landroid/widget/TextView;
    .end local v4           #numberTextView:Landroid/widget/TextView;
    .end local v5           #numberTypeTextView:Landroid/widget/TextView;
    .end local v6           #separateButton:Landroid/widget/ImageButton;
    :goto_6d
    return-void

    .line 3843
    .restart local v0       #endButton:Landroid/widget/ImageButton;
    .restart local v1       #endThisConnection:Landroid/view/View$OnClickListener;
    .restart local v3       #nameTextView:Landroid/widget/TextView;
    .restart local v4       #numberTextView:Landroid/widget/TextView;
    .restart local v5       #numberTypeTextView:Landroid/widget/TextView;
    .restart local v6       #separateButton:Landroid/widget/ImageButton;
    :cond_6e
    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_60

    .line 3856
    .end local v0           #endButton:Landroid/widget/ImageButton;
    .end local v1           #endThisConnection:Landroid/view/View$OnClickListener;
    .end local v3           #nameTextView:Landroid/widget/TextView;
    .end local v4           #numberTextView:Landroid/widget/TextView;
    .end local v5           #numberTypeTextView:Landroid/widget/TextView;
    .end local v6           #separateButton:Landroid/widget/ImageButton;
    :cond_73
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v8, v8, p1

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6d
.end method

.method private updateMenuButtonHint()V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3158
    const/4 v4, 0x1

    .line 3160
    .local v4, hintVisible:Z
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_3c

    move v2, v6

    .line 3161
    .local v2, hasRingingCall:Z
    :goto_c
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_3e

    move v0, v6

    .line 3162
    .local v0, hasActiveCall:Z
    :goto_15
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_40

    move v1, v6

    .line 3166
    .local v1, hasHoldingCall:Z
    :goto_1e
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v6, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v5, v6, :cond_42

    .line 3168
    const/4 v4, 0x0

    .line 3178
    :cond_25
    :goto_25
    if-eqz v4, :cond_52

    move v3, v7

    .line 3185
    .local v3, hintVisibility:I
    :goto_28
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 3187
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuButtonHint:Landroid/widget/TextView;

    const v6, 0x7f09003f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 3188
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuButtonHint:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3213
    :goto_3b
    return-void

    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    .end local v2           #hasRingingCall:Z
    .end local v3           #hintVisibility:I
    :cond_3c
    move v2, v7

    .line 3160
    goto :goto_c

    .restart local v2       #hasRingingCall:Z
    :cond_3e
    move v0, v7

    .line 3161
    goto :goto_15

    .restart local v0       #hasActiveCall:Z
    :cond_40
    move v1, v7

    .line 3162
    goto :goto_1e

    .line 3169
    .restart local v1       #hasHoldingCall:Z
    :cond_42
    if-eqz v2, :cond_4a

    if-eqz v0, :cond_48

    if-eqz v1, :cond_4a

    .line 3172
    :cond_48
    const/4 v4, 0x0

    goto :goto_25

    .line 3173
    :cond_4a
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v5

    if-nez v5, :cond_25

    .line 3176
    const/4 v4, 0x0

    goto :goto_25

    .line 3178
    :cond_52
    const/16 v5, 0x8

    move v3, v5

    goto :goto_28

    .line 3191
    .restart local v3       #hintVisibility:I
    :cond_56
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuButtonHint:Landroid/widget/TextView;

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 3192
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuButtonHint:Landroid/widget/TextView;

    const v6, 0x7f09003e

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 3193
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuButtonHint:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3b
.end method

.method private updateScreen()V
    .registers 4

    .prologue
    .line 2412
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v1, :cond_5

    .line 2456
    :cond_4
    :goto_4
    return-void

    .line 2418
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v1, :cond_17

    .line 2421
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenu;->updateItems(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    .line 2422
    .local v0, okToShowMenu:Z
    if-nez v0, :cond_17

    .line 2432
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 2437
    .end local v0           #okToShowMenu:Z
    :cond_17
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_31

    .line 2438
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v1, v2, :cond_2b

    .line 2440
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateManageConferencePanelIfNecessary()V

    goto :goto_4

    .line 2442
    :cond_2b
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_4

    .line 2449
    :cond_31
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/Phone;)V

    .line 2450
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 2453
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateMenuButtonHint()V

    .line 2454
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateUserInterfaceButton()V

    goto :goto_4
.end method

.method private updateUserInterfaceButton()V
    .registers 12

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3219
    const/4 v4, 0x0

    .line 3220
    .local v4, incallVisible:Z
    const/4 v6, 0x0

    .line 3223
    .local v6, incomingVisible:Z
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_3c

    move v2, v8

    .line 3224
    .local v2, hasRingingCall:Z
    :goto_f
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_3e

    move v0, v8

    .line 3225
    .local v0, hasActiveCall:Z
    :goto_18
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_40

    move v1, v8

    .line 3227
    .local v1, hasHoldingCall:Z
    :goto_21
    if-eqz v2, :cond_42

    .line 3231
    const/4 v4, 0x0

    .line 3232
    const/4 v6, 0x1

    .line 3242
    :cond_25
    :goto_25
    if-eqz v4, :cond_52

    move v3, v9

    .line 3243
    .local v3, incallVisibility:I
    :goto_28
    if-eqz v6, :cond_54

    move v5, v9

    .line 3246
    .local v5, incomingVisibility:I
    :goto_2b
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v7

    if-eqz v7, :cond_56

    .line 3247
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallMenuFrame:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3248
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mIncomingMenuFrame:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3255
    :goto_3b
    return-void

    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    .end local v2           #hasRingingCall:Z
    .end local v3           #incallVisibility:I
    .end local v5           #incomingVisibility:I
    :cond_3c
    move v2, v9

    .line 3223
    goto :goto_f

    .restart local v2       #hasRingingCall:Z
    :cond_3e
    move v0, v9

    .line 3224
    goto :goto_18

    .restart local v0       #hasActiveCall:Z
    :cond_40
    move v1, v9

    .line 3225
    goto :goto_21

    .line 3233
    .restart local v1       #hasHoldingCall:Z
    :cond_42
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v8, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v7, v8, :cond_4b

    .line 3235
    const/4 v4, 0x0

    .line 3236
    const/4 v6, 0x0

    goto :goto_25

    .line 3237
    :cond_4b
    if-nez v0, :cond_4f

    if-eqz v1, :cond_25

    .line 3238
    :cond_4f
    const/4 v4, 0x1

    .line 3239
    const/4 v6, 0x0

    goto :goto_25

    :cond_52
    move v3, v10

    .line 3242
    goto :goto_28

    .restart local v3       #incallVisibility:I
    :cond_54
    move v5, v10

    .line 3243
    goto :goto_2b

    .line 3251
    .restart local v5       #incomingVisibility:I
    :cond_56
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallMenuFrame:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3252
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mIncomingMenuFrame:Landroid/view/ViewGroup;

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3b
.end method


# virtual methods
.method AnswerAndEndHoldCallStep1()V
    .registers 5

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Phone;)Z

    .line 1517
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x79

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1519
    return-void
.end method

.method AnswerAndEndHoldCallStep2()V
    .registers 2

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Phone;)Z

    .line 1523
    return-void
.end method

.method public ReadIntFromFile()I
    .registers 7

    .prologue
    .line 612
    const/4 v3, 0x0

    .line 614
    .local v3, result:I
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/devices/platform/i2c-gpio.6/i2c-adapter/i2c-6/6-0044/show"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 615
    .local v2, inReader:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, in:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_16

    move-result v3

    .line 621
    .end local v1           #in:Ljava/lang/String;
    .end local v2           #inReader:Ljava/io/BufferedReader;
    :goto_15
    return v3

    .line 617
    :catch_16
    move-exception v4

    move-object v0, v4

    .line 619
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15
.end method

.method connectBluetoothAudio()V
    .registers 3

    .prologue
    .line 4468
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_9

    .line 4469
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 4479
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 4480
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    .line 4481
    return-void
.end method

.method disconnectBluetoothAudio()V
    .registers 2

    .prologue
    .line 4485
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_9

    .line 4486
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 4488
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 4489
    return-void
.end method

.method dismissMenu(Z)V
    .registers 6
    .parameter "dismissImmediate"

    .prologue
    const/16 v3, 0x6f

    .line 4283
    if-eqz p1, :cond_8

    .line 4284
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->closeOptionsMenu()V

    .line 4290
    :goto_7
    return-void

    .line 4286
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 4287
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 1676
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 1695
    :cond_7
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_b
    return v0

    .line 1685
    :pswitch_c
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1686
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_23

    const-string v0, "- ignoring DPAD event while touch-locked..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1687
    :cond_23
    const/4 v0, 0x1

    goto :goto_b

    .line 1676
    nop

    :pswitch_data_26
    .packed-switch 0x13
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public finish()V
    .registers 4

    .prologue
    .line 1189
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_9

    const-string v1, "finish()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1190
    :cond_9
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 1191
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v1, :cond_17

    .line 1192
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->setVirtualSleepState(I)V

    .line 1194
    :cond_17
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1195
    .local v0, app:Lcom/android/phone/PhoneApp;
    if-eqz v0, :cond_20

    .line 1196
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->reenableKeyguard()V

    .line 1197
    :cond_20
    return-void
.end method

.method getDialerDisplay()Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 4041
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDTMFDisplay:Landroid/widget/EditText;

    return-object v0
.end method

.method hangupAllCallStep1()V
    .registers 5

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1495
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Phone;)Z

    .line 1496
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x75

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1497
    return-void
.end method

.method hangupAllCallStep2()V
    .registers 5

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1502
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupActiveMenu(Lcom/android/internal/telephony/Phone;)Z

    .line 1503
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x76

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1504
    return-void
.end method

.method hangupAllCallStep3()V
    .registers 2

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1508
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Phone;)Z

    .line 1510
    :cond_11
    return-void
.end method

.method internalAnswerAndEnd()V
    .registers 2

    .prologue
    .line 3537
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "internalAnswerAndEnd()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3539
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/Phone;)Z

    .line 3540
    return-void
.end method

.method internalAnswerCall()V
    .registers 2

    .prologue
    .line 3519
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "internalAnswerCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3521
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Phone;)Z

    .line 3531
    return-void
.end method

.method internalAnswerCallBothLinesInUse()V
    .registers 2

    .prologue
    .line 3550
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "internalAnswerCallBothLinesInUse()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3553
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/Phone;)Z

    .line 3557
    return-void
.end method

.method internalHangupRingingCall()V
    .registers 2

    .prologue
    .line 3563
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "internalHangupRingingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3564
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Phone;)Z

    .line 3565
    return-void
.end method

.method isBluetoothAudioConnected()Z
    .registers 3

    .prologue
    .line 4380
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_6

    .line 4382
    const/4 v1, 0x0

    .line 4386
    :goto_5
    return v1

    .line 4384
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    .local v0, isAudioOn:Z
    move v1, v0

    .line 4386
    goto :goto_5
.end method

.method isBluetoothAudioConnectedOrPending()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4400
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v7

    .line 4425
    :goto_9
    return v2

    .line 4409
    :cond_a
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    if-eqz v2, :cond_22

    .line 4410
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    sub-long v0, v2, v4

    .line 4412
    .local v0, timeSinceRequest:J
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-gez v2, :cond_1e

    move v2, v7

    .line 4415
    goto :goto_9

    .line 4419
    :cond_1e
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    move v2, v6

    .line 4420
    goto :goto_9

    .end local v0           #timeSinceRequest:J
    :cond_22
    move v2, v6

    .line 4425
    goto :goto_9
.end method

.method isBluetoothAvailable()Z
    .registers 4

    .prologue
    .line 4339
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v2, :cond_6

    .line 4342
    const/4 v2, 0x0

    .line 4373
    :goto_5
    return v2

    .line 4361
    :cond_6
    const/4 v1, 0x0

    .line 4362
    .local v1, isConnected:Z
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_19

    .line 4364
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getHeadsetAddress()Ljava/lang/String;

    move-result-object v0

    .line 4366
    .local v0, headsetAddress:Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 4367
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->isConnected(Ljava/lang/String;)Z

    move-result v1

    .end local v0           #headsetAddress:Ljava/lang/String;
    :cond_19
    move v2, v1

    .line 4373
    goto :goto_5
.end method

.method isDialerOpened()Z
    .registers 2

    .prologue
    .line 3998
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isForegroundActivity()Z
    .registers 2

    .prologue
    .line 1200
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method isForegroundTask()Z
    .registers 2

    .prologue
    .line 1205
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundTask:Z

    return v0
.end method

.method isKeyEventAcceptableDTMF(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isKeyEventAcceptable(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isManageConferenceMode()Z
    .registers 3

    .prologue
    .line 3707
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isPhoneStateRestricted()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 4222
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v2, :cond_28

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    move v0, v2

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method okToShowDialpad()Z
    .registers 2

    .prologue
    .line 4084
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onClick(Landroid/view/View;)V
    .registers 14
    .parameter "view"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2861
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 2872
    .local v2, id:I
    const/4 v1, 0x1

    .line 2873
    .local v1, dismissMenuImmediate:Z
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2876
    .local v0, context:Landroid/content/Context;
    iget-boolean v6, p0, Lcom/android/phone/InCallScreen;->mMenuButtonBlocked:Z

    if-eqz v6, :cond_10

    .line 3092
    :goto_f
    return-void

    .line 2879
    :cond_10
    iput-boolean v10, p0, Lcom/android/phone/InCallScreen;->mMenuButtonBlocked:Z

    .line 2880
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x74

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2883
    sparse-switch v2, :sswitch_data_13c

    .line 3035
    const-string v6, "InCallScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got click from unexpected View ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (View = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3061
    :goto_4c
    if-nez v1, :cond_59

    .line 3067
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6, v7}, Lcom/android/phone/InCallMenu;->updateItems(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    .line 3068
    .local v5, okToShowMenu:Z
    if-nez v5, :cond_59

    .line 3077
    const/4 v1, 0x1

    .line 3082
    .end local v5           #okToShowMenu:Z
    :cond_59
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 3091
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    goto :goto_f

    .line 2887
    :sswitch_64
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_6d

    const-string v6, "onClick: AnswerAndEndActiveCall..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2888
    :cond_6d
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_4c

    .line 2892
    :sswitch_71
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_7a

    const-string v6, "onClick: AnswerAndEndHoldCall..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2893
    :cond_7a
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->AnswerAndEndHoldCallStep1()V

    goto :goto_4c

    .line 2897
    :sswitch_7e
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_87

    const-string v6, "onClick: Answer Button..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2898
    :cond_87
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_4c

    .line 2903
    :sswitch_8b
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangupRingingCall()V

    goto :goto_4c

    .line 2910
    :sswitch_8f
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangupActiveMenu(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_4c

    .line 2916
    :sswitch_95
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_4c

    .line 2921
    :sswitch_99
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerAndEnd()V

    goto :goto_4c

    .line 2939
    :sswitch_9d
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_4c

    .line 2944
    :sswitch_a1
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/Phone;)V

    goto :goto_4c

    .line 2948
    :sswitch_a7
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_b0

    const-string v6, "onClick: TransferCall..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2949
    :cond_b0
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->transferCall(Lcom/android/internal/telephony/Phone;)V

    goto :goto_4c

    .line 2956
    :sswitch_b6
    sget-object v6, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_4c

    .line 2961
    :sswitch_bc
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v6}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 2962
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v6, v10}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_4c

    .line 2964
    :cond_ca
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v6, v10}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    goto/16 :goto_4c

    .line 2971
    :sswitch_d1
    sget-object v6, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto/16 :goto_4c

    .line 2980
    :sswitch_d8
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_fb

    move v4, v10

    .line 2981
    .local v4, newSpeakerState:Z
    :goto_df
    if-eqz v4, :cond_f0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v6

    if-eqz v6, :cond_f0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v6

    if-eqz v6, :cond_f0

    .line 2982
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 2984
    :cond_f0
    invoke-static {v0, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;Z)V

    .line 2986
    if-eqz v4, :cond_fd

    .line 2988
    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 2999
    :cond_f8
    :goto_f8
    const/4 v1, 0x0

    .line 3000
    goto/16 :goto_4c

    .end local v4           #newSpeakerState:Z
    :cond_fb
    move v4, v11

    .line 2980
    goto :goto_df

    .line 2993
    .restart local v4       #newSpeakerState:Z
    :cond_fd
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v6}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_f8

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v6

    if-nez v6, :cond_f8

    .line 2994
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    goto :goto_f8

    .line 3004
    .end local v4           #newSpeakerState:Z
    :sswitch_10f
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->onBluetoothClick(Landroid/content/Context;)V

    .line 3006
    const/4 v1, 0x0

    .line 3007
    goto/16 :goto_4c

    .line 3011
    :sswitch_115
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->getMute(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-nez v6, :cond_126

    move v3, v10

    .line 3012
    .local v3, newMuteState:Z
    :goto_11e
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v6, v3}, Lcom/android/phone/PhoneUtils;->setMute(Lcom/android/internal/telephony/Phone;Z)V

    .line 3014
    const/4 v1, 0x0

    .line 3015
    goto/16 :goto_4c

    .end local v3           #newMuteState:Z
    :cond_126
    move v3, v11

    .line 3011
    goto :goto_11e

    .line 3019
    :sswitch_128
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onHoldClick()V

    .line 3021
    const/4 v1, 0x0

    .line 3022
    goto/16 :goto_4c

    .line 3026
    :sswitch_12e
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_4c

    .line 3031
    :sswitch_135
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_4c

    .line 2883
    :sswitch_data_13c
    .sparse-switch
        0x7f060002 -> :sswitch_b6
        0x7f060003 -> :sswitch_bc
        0x7f060004 -> :sswitch_135
        0x7f060005 -> :sswitch_12e
        0x7f060006 -> :sswitch_9d
        0x7f060007 -> :sswitch_a1
        0x7f060008 -> :sswitch_a7
        0x7f060009 -> :sswitch_10f
        0x7f06000a -> :sswitch_d8
        0x7f06000b -> :sswitch_115
        0x7f06000c -> :sswitch_128
        0x7f06000d -> :sswitch_95
        0x7f06000e -> :sswitch_99
        0x7f06000f -> :sswitch_64
        0x7f060010 -> :sswitch_71
        0x7f060021 -> :sswitch_8f
        0x7f060023 -> :sswitch_7e
        0x7f060024 -> :sswitch_8b
        0x7f060071 -> :sswitch_d1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    .line 627
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate()...  this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 629
    :cond_1a
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenOnCreate()V

    .line 631
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 633
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 634
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 636
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 638
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 641
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v1, :cond_3e

    .line 645
    new-instance v1, Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 649
    :cond_3e
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->requestWindowFeature(I)Z

    .line 652
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->setContentView(I)V

    .line 653
    const v1, 0x7f06004a

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SlidingDrawer;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    .line 655
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initInCallScreen()V

    .line 660
    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-direct {v1, p0}, Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 662
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForPhoneStates()V

    .line 672
    if-nez p1, :cond_aa

    .line 673
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_6b

    const-string v1, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 678
    :cond_6b
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 679
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v1, v2, :cond_9b

    .line 680
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from internalResolveIntent()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_9b
    :goto_9b
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 692
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->startDialerSession()V

    .line 696
    :cond_a6
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenCreated()V

    .line 697
    return-void

    .line 685
    :cond_aa
    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_9b
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 6
    .parameter "featureId"

    .prologue
    const/4 v3, 0x0

    .line 4251
    if-eqz p1, :cond_5

    move-object v1, v3

    .line 4268
    :goto_4
    return-object v1

    .line 4259
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4261
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-nez v1, :cond_1c

    .line 4263
    new-instance v1, Lcom/android/phone/InCallMenu;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallMenu;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    .line 4264
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    invoke-virtual {v1}, Lcom/android/phone/InCallMenu;->initMenu()V

    .line 4267
    :cond_1c
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenu;->updateItems(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    .line 4268
    .local v0, okToShowMenu:Z
    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    invoke-virtual {v1}, Lcom/android/phone/InCallMenu;->getView()Lcom/android/phone/InCallMenuView;

    move-result-object v1

    goto :goto_4

    :cond_2d
    move-object v1, v3

    goto :goto_4
.end method

.method protected onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1113
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "onDestroy()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1114
    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1118
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 1121
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 1122
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_27

    .line 1124
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager;->setVirtualSleepState(I)V

    .line 1126
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1127
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->reenableKeyguard()V

    .line 1130
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_27
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1131
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1135
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v2, :cond_37

    .line 1136
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    invoke-virtual {v2}, Lcom/android/phone/InCallMenu;->clearInCallScreenReference()V

    .line 1138
    :cond_37
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v2, :cond_40

    .line 1139
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v2, v3}, Lcom/android/phone/CallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1150
    :cond_40
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1151
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopDialerSession()V

    .line 1156
    :goto_4b
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearInCallScreenReference()V

    .line 1157
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 1159
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForPhoneStates()V

    .line 1163
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_60

    .line 1164
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->close()V

    .line 1165
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 1167
    :cond_60
    return-void

    .line 1154
    :cond_61
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2, v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_4b
.end method

.method onDialerClose()V
    .registers 4

    .prologue
    .line 4026
    const v0, 0x7f06004d

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mDialerTabBtn:Landroid/widget/Button;

    .line 4027
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialerTabBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020086

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4031
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 4034
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 4035
    return-void
.end method

.method onDialerOpen()V
    .registers 4

    .prologue
    .line 4009
    const v0, 0x7f06004d

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mDialerTabBtn:Landroid/widget/Button;

    .line 4010
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialerTabBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4013
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    .line 4016
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 4017
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v4, "InCallScreen should always handle KEYCODE_CALL in onKeyDown"

    const-string v7, "InCallScreen"

    .line 1716
    sparse-switch p1, :sswitch_data_a2

    .line 1841
    :cond_9
    :goto_9
    :sswitch_9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_9c

    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_9c

    move v3, v5

    .line 1845
    :goto_16
    return v3

    .line 1719
    :sswitch_17
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangupActiveMenu(Lcom/android/internal/telephony/Phone;)Z

    move v3, v5

    .line 1720
    goto :goto_16

    .line 1723
    :sswitch_1e
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleCallKey()Z

    move-result v0

    .line 1724
    .local v0, handled:Z
    if-nez v0, :cond_2b

    .line 1725
    const-string v3, "InCallScreen"

    const-string v3, "InCallScreen should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    move v3, v5

    .line 1728
    goto :goto_16

    .line 1738
    .end local v0           #handled:Z
    :sswitch_2d
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleBackKey()Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v5

    .line 1739
    goto :goto_16

    :sswitch_35
    move v3, v5

    .line 1746
    goto :goto_16

    .line 1750
    :sswitch_37
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_9

    .line 1761
    const-string v3, "InCallScreen"

    const-string v3, "VOLUME key: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v2, v3, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 1767
    .local v2, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 1769
    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->setAudioControlState(I)V

    .line 1770
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_60

    const-string v3, "VOLUME key: silence ringer"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1771
    :cond_60
    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    :cond_63
    move v3, v5

    .line 1776
    goto :goto_16

    .line 1791
    .end local v2           #notifier:Lcom/android/phone/CallNotifier;
    :sswitch_65
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 1795
    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 1796
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    move v3, v5

    .line 1797
    goto :goto_16

    .line 1801
    :cond_7b
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleCallKey_temp()Z

    move-result v1

    .line 1802
    .local v1, handled2:Z
    if-nez v1, :cond_9

    .line 1803
    const-string v3, "InCallScreen"

    const-string v3, "InCallScreen should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1811
    .end local v1           #handled2:Z
    :sswitch_89
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getMute(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-nez v4, :cond_9a

    move v4, v5

    :goto_94
    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->setMute(Lcom/android/internal/telephony/Phone;Z)V

    move v3, v5

    .line 1812
    goto/16 :goto_16

    :cond_9a
    move v4, v6

    .line 1811
    goto :goto_94

    .line 1845
    :cond_9c
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_16

    .line 1716
    :sswitch_data_a2
    .sparse-switch
        0x4 -> :sswitch_2d
        0x5 -> :sswitch_1e
        0x18 -> :sswitch_37
        0x19 -> :sswitch_37
        0x1b -> :sswitch_35
        0x46 -> :sswitch_9
        0x4c -> :sswitch_9
        0x52 -> :sswitch_65
        0x5b -> :sswitch_89
        0x72 -> :sswitch_17
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1703
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    .line 1709
    :goto_e
    return v0

    .line 1705
    :cond_f
    const/4 v0, 0x5

    if-ne p1, v0, :cond_14

    move v0, v1

    .line 1707
    goto :goto_e

    .line 1709
    :cond_14
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_e
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 1250
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1264
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 1273
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1274
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v0, v1, :cond_49

    .line 1275
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from internalResolveIntent()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_49
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 3
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 4303
    if-nez p1, :cond_2

    .line 4308
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 4309
    return-void
.end method

.method protected onPause()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 960
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_b

    const-string v1, "onPause()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 961
    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 963
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mIsForegroundTask:Z

    .line 967
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsIncallBackKey:Z

    if-ne v1, v3, :cond_19

    .line 968
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->backDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 972
    :cond_19
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->createDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_29

    .line 973
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mNotiDialogStopper:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 974
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->createDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 990
    :cond_29
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 992
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 996
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v1, :cond_38

    .line 997
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v1}, Landroid/widget/Chronometer;->stop()V

    .line 1002
    :cond_38
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 1044
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 1048
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1051
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 1056
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1063
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/InCallScreen$5;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/InCallScreen$5;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/PhoneApp;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1072
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->is_screenIsOn()Z

    move-result v1

    if-nez v1, :cond_72

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_7a

    .line 1075
    :cond_72
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, v5}, Landroid/os/PowerManager;->setVirtualSleepState(I)V

    .line 1078
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->reenableKeyguard()V

    .line 1084
    :cond_7a
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v1

    if-nez v1, :cond_94

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 1085
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_93

    const-string v1, "onPause(): DELAYED_CLEANUP_AFTER_DISCONNECT detected, finishing..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1091
    :cond_93
    :goto_93
    return-void

    .line 1087
    :cond_94
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_9d

    const-string v1, "onPause(): DELAYED_CLEANUP_AFTER_DISCONNECT not detected, updateWakeState..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1088
    :cond_9d
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto :goto_93
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .registers 9
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 3868
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 3869
    .local v1, vg:Landroid/view/ViewGroup;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3872
    const v2, 0x7f06002c

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f06002d

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f06002e

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {p0, p3, v2, v3, v4}, Lcom/android/phone/InCallScreen;->displayCallerInfoForConferenceRow(Lcom/android/internal/telephony/CallerInfo;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 3876
    return-void
.end method

.method protected onResume()V
    .registers 11

    .prologue
    const/16 v9, 0x70

    const/16 v8, 0x6c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 762
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_f

    const-string v3, "onResume()..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 763
    :cond_f
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 765
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, v7}, Landroid/os/PowerManager;->setVirtualSleepState(I)V

    .line 766
    iput-boolean v7, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 768
    iput-boolean v7, p0, Lcom/android/phone/InCallScreen;->mIsForegroundTask:Z

    .line 771
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mMenuButtonBlocked:Z

    .line 774
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 777
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->setTouchBlocking(Z)V

    .line 785
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->disableKeyguard()V

    .line 788
    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    .line 793
    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneApp;->setIgnoreTouchUserActivity(Z)V

    .line 797
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 800
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 803
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_60

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- onResume: initial status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 804
    :cond_60
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v3, v4, :cond_8b

    .line 805
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_82

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- onResume: failure during startup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 810
    :cond_82
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->handleStartupError(Lcom/android/phone/InCallScreen$InCallInitStatus;)V

    .line 816
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 820
    :cond_8b
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v3

    if-eqz v3, :cond_12a

    .line 821
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    .line 826
    :goto_95
    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->takeKeyEvents(Z)V

    .line 830
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_ac

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_12f

    .line 835
    :cond_ac
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 839
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v3

    if-nez v3, :cond_ba

    .line 841
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 850
    :cond_ba
    const/16 v1, 0x7d0

    .line 851
    .local v1, callEndedDisplayDelay:I
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 852
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    int-to-long v4, v1

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 865
    .end local v1           #callEndedDisplayDelay:I
    :goto_c7
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v2

    .line 866
    .local v2, status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v2, v3, :cond_e9

    .line 867
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- syncWithPhoneState failed! status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 887
    :cond_e9
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_13a

    .line 904
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 905
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 919
    :goto_fd
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 924
    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 927
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_10e

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    .line 931
    :cond_10e
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRestoreMuteOnInCallResume()Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 932
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->restoreMuteState(Lcom/android/internal/telephony/Phone;)Ljava/lang/Boolean;

    .line 933
    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 936
    :cond_11c
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-class v4, Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Profiler;->profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V

    .line 946
    return-void

    .line 823
    .end local v2           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_12a
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    goto/16 :goto_95

    .line 857
    :cond_12f
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 863
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    goto :goto_c7

    .line 917
    .restart local v2       #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_13a
    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto :goto_fd
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 951
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 956
    return-void
.end method

.method protected onStart()V
    .registers 4

    .prologue
    const/high16 v2, 0x3f80

    .line 717
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "onStart()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 718
    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 726
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1c

    .line 727
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mSensorManager:Landroid/hardware/SensorManager;

    .line 729
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_2a

    .line 730
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    .line 732
    :cond_2a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setVirtualSleepState(I)V

    .line 735
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->ReadIntFromFile()I

    move-result v0

    if-nez v0, :cond_53

    .line 738
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getRotationUpOnce()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 740
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 741
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->switchScreen(F)V

    .line 743
    :cond_47
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->setRotationUpOnce(Z)V

    .line 759
    :goto_4d
    return-void

    .line 750
    :cond_4e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->switchScreen(F)V

    goto :goto_4d

    .line 756
    :cond_53
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->switchScreen(F)V

    goto :goto_4d
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 1096
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1098
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->stopTimer()V

    .line 1100
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 1103
    .local v0, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1c

    .line 1106
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_19

    const-string v1, "- onStop: calling finish() to clear activity history..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1107
    :cond_19
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 1109
    :cond_1c
    return-void
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .registers 7
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    .line 1853
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Phone$SuppService;

    .line 1854
    .local v1, service:Lcom/android/internal/telephony/Phone$SuppService;
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuppServiceFailed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1857
    :cond_1f
    sget-object v2, Lcom/android/phone/InCallScreen$22;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_84

    .line 1898
    const v0, 0x7f0901c9

    .line 1906
    .local v0, errorMessageResId:I
    :goto_2d
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_41

    .line 1907
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_3a

    const-string v2, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1908
    :cond_3a
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1910
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 1913
    :cond_41
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09003d

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 1918
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1920
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1921
    return-void

    .line 1861
    .end local v0           #errorMessageResId:I
    :pswitch_6c
    const v0, 0x7f0901ca

    .line 1862
    .restart local v0       #errorMessageResId:I
    goto :goto_2d

    .line 1867
    .end local v0           #errorMessageResId:I
    :pswitch_70
    const v0, 0x7f0901cb

    .line 1868
    .restart local v0       #errorMessageResId:I
    goto :goto_2d

    .line 1874
    .end local v0           #errorMessageResId:I
    :pswitch_74
    const v0, 0x7f0901cc

    .line 1875
    .restart local v0       #errorMessageResId:I
    goto :goto_2d

    .line 1880
    .end local v0           #errorMessageResId:I
    :pswitch_78
    const v0, 0x7f0901cd

    .line 1881
    .restart local v0       #errorMessageResId:I
    goto :goto_2d

    .line 1886
    .end local v0           #errorMessageResId:I
    :pswitch_7c
    const v0, 0x7f0901ce

    .line 1887
    .restart local v0       #errorMessageResId:I
    goto :goto_2d

    .line 1891
    .end local v0           #errorMessageResId:I
    :pswitch_80
    const v0, 0x7f0901cf

    .line 1892
    .restart local v0       #errorMessageResId:I
    goto :goto_2d

    .line 1857
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_70
        :pswitch_74
        :pswitch_78
        :pswitch_7c
        :pswitch_80
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4651
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    if-eq p1, v2, :cond_a

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-ne p1, v2, :cond_12

    :cond_a
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v2

    if-nez v2, :cond_12

    move v2, v6

    .line 4721
    :goto_11
    return v2

    .line 4662
    :cond_12
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    if-ne p1, v2, :cond_48

    .line 4664
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3b

    .line 4665
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4669
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/phone/InCallScreen;->mTouchLockLastTouchTime:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_39

    .line 4674
    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 4675
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    .line 4677
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .end local v0           #now:J
    :cond_39
    :goto_39
    move v2, v7

    .line 4688
    goto :goto_11

    .line 4679
    :cond_3b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v7, :cond_39

    .line 4683
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/phone/InCallScreen;->mTouchLockLastTouchTime:J

    goto :goto_39

    .line 4690
    :cond_48
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-ne p1, v2, :cond_4e

    move v2, v7

    .line 4717
    goto :goto_11

    .line 4720
    :cond_4e
    const-string v2, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouch: event from unexpected View: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 4721
    goto :goto_11
.end method

.method public onUserInteraction()V
    .registers 2

    .prologue
    .line 4729
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v0

    if-nez v0, :cond_11

    .line 4730
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    .line 4732
    :cond_11
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasFocus"

    .prologue
    .line 1665
    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_c

    .line 1667
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 1669
    :cond_c
    return-void
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .registers 3
    .parameter "phone"

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 711
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 712
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 713
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 714
    return-void
.end method

.method updateBluetoothIndication()V
    .registers 3

    .prologue
    const/16 v1, 0x72

    .line 4437
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4438
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4439
    return-void
.end method
