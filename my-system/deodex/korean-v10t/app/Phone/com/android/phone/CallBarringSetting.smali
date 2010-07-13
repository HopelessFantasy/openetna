.class public Lcom/android/phone/CallBarringSetting;
.super Landroid/preference/PreferenceActivity;
.source "CallBarringSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallBarringSetting$7;,
        Lcom/android/phone/CallBarringSetting$AppState;
    }
.end annotation


# static fields
.field static final ACTION_ACTIVATE:Ljava/lang/String; = "*"

.field static final ACTION_DEACTIVATE:Ljava/lang/String; = "#"

.field static final ACTION_ERASURE:Ljava/lang/String; = "##"

.field static final ACTION_INTERROGATE:Ljava/lang/String; = "*#"

.field static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field private static final APP_STATE_KEY:Ljava/lang/String; = "app_state_key"

.field private static final BUSY_DIALOG:I = 0x44c

.field private static final BUTTON_BAIC_KEY:Ljava/lang/String; = "button_baic_key"

.field private static final BUTTON_BAOC_KEY:Ljava/lang/String; = "button_baoc_key"

.field private static final BUTTON_BICROAM_KEY:Ljava/lang/String; = "button_bicroam_key"

.field private static final BUTTON_BOICEXHC_KEY:Ljava/lang/String; = "button_boicexhc_key"

.field private static final BUTTON_BOIC_KEY:Ljava/lang/String; = "button_boic_key"

.field private static final BUTTON_CBPWD_KEY:Ljava/lang/String; = "button_cbpwd_key"

.field private static final BUTTON_CB_EXPAND_KEY:Ljava/lang/String; = "button_cb_expand_key"

.field private static final CB_PWD_LENGTH:I = 0x4

.field private static final DBG:Z = false

.field private static final DIALOG_MESSAGE_KEY:Ljava/lang/String; = "dialog_message_key"

.field private static final DIALOG_PWD_ENTRY_KEY:Ljava/lang/String; = "dialog_pwd_entry_key"

.field private static final DISPLAY_MODE_KEY:Ljava/lang/String; = "display_mode_key"

.field private static final DISP_MODE_CB:I = -0x1

.field private static final EVENT_CBPWD_CHANGE_COMPLETE:I = 0x514

.field private static final EVENT_CB_EXECUTED:I = 0x4b0

.field private static final EVENT_INITAL_QUERY_CANCELED:I = 0x578

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x44c

.field private static final EXCEPTION_ERROR:I = 0x4b0

.field private static final FDN_BLOCKED_ERROR:I = 0x2774

.field private static final INITIAL_BUSY_DIALOG:I = 0x5dc

.field private static final LOG_TAG:Ljava/lang/String; = "call barring settings"

.field private static final MSG_EXCEPTION:I = 0x4b0

.field private static final MSG_FDN_BLOCKED:I = 0x2774

.field private static final MSG_OK:I = 0x44c

.field private static final MSG_RADIO_OFF:I = 0x578

.field private static final MSG_UNEXPECTED_RESPONSE:I = 0x514

.field private static final NEW_PWD_KEY:Ljava/lang/String; = "new_pwd_key"

.field private static final OLD_PWD_KEY:Ljava/lang/String; = "old_pwd_key"

.field private static final PWD_CHANGE_NEW:I = 0x1

.field private static final PWD_CHANGE_OLD:I = 0x0

.field private static final PWD_CHANGE_REENTER:I = 0x2

.field private static final PWD_CHANGE_STATE_KEY:Ljava/lang/String; = "pwd_change_state_key"

.field private static final RADIO_OFF_ERROR:I = 0x578

.field private static final RESPONSE_ERROR:I = 0x514

.field static final SC_BAIC:Ljava/lang/String; = "35"

.field static final SC_BAICr:Ljava/lang/String; = "351"

.field static final SC_BAOC:Ljava/lang/String; = "33"

.field static final SC_BAOIC:Ljava/lang/String; = "331"

.field static final SC_BAOICxH:Ljava/lang/String; = "332"

.field static final SC_BA_ALL:Ljava/lang/String; = "330"

.field static final SC_BA_MO:Ljava/lang/String; = "333"

.field static final SC_BA_MT:Ljava/lang/String; = "353"

.field static final SC_CFB:Ljava/lang/String; = "67"

.field static final SC_CFNR:Ljava/lang/String; = "62"

.field static final SC_CFNRy:Ljava/lang/String; = "61"

.field static final SC_CFU:Ljava/lang/String; = "21"

.field static final SC_CF_All:Ljava/lang/String; = "002"

.field static final SC_CF_All_Conditional:Ljava/lang/String; = "004"

.field static final SC_CLIP:Ljava/lang/String; = "30"

.field static final SC_CLIR:Ljava/lang/String; = "31"

.field static final SC_CNAP:Ljava/lang/String; = "300"

.field static final SC_PIN:Ljava/lang/String; = "04"

.field static final SC_PIN2:Ljava/lang/String; = "042"

.field static final SC_PUK:Ljava/lang/String; = "05"

.field static final SC_PUK2:Ljava/lang/String; = "052"

.field static final SC_PWD:Ljava/lang/String; = "03"

.field static final SC_WAIT:Ljava/lang/String; = "43"

.field private static mCBDataStale:Z

.field private static mCBPwdHandler:Landroid/os/Handler;

.field private static mCBS:Lcom/android/phone/CallBarringSetting;

.field private static mGetOptionComplete:Landroid/os/Handler;

.field private static mIsActiveBAIC:Z

.field private static mIsActiveBAOC:Z

.field private static mIsActiveBICr:Z

.field private static mIsActiveBOIC:Z

.field private static mIsActiveBOICxH:Z

.field private static mNetworkServiceHandler:Landroid/os/Handler;

.field private static mSetOptionComplete:Landroid/os/Handler;


# instance fields
.field dialogCloseFilter:Landroid/content/IntentFilter;

.field private mAppState:Lcom/android/phone/CallBarringSetting$AppState;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonBAIC:Lcom/android/phone/EditPinPreference;

.field private mButtonBAOC:Lcom/android/phone/EditPinPreference;

.field private mButtonBICROAM:Lcom/android/phone/EditPinPreference;

.field private mButtonBOIC:Lcom/android/phone/EditPinPreference;

.field private mButtonBOICEXHC:Lcom/android/phone/EditPinPreference;

.field private mButtonCBPwd:Lcom/android/phone/EditPinPreference;

.field private mDisplayMode:I

.field private mErrorAlertDialog:Landroid/app/Dialog;

.field private mGetAllCBOptionsComplete:Landroid/os/Handler;

.field private mIsBusyDialogAvailable:Z

.field private mIsCBCreated:Z

.field private mLaunchAlertDialogAgain:Z

.field private mLaunchRadioOffErrorDialogAgain:Z

.field private mLaunchResponseErrorDialogAgain:Z

.field private mNewPwd:Ljava/lang/String;

.field private mOldPwd:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPwdChangeState:I

.field private mRadioOffErrorDialog:Landroid/app/Dialog;

.field private mResponseErrorDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 147
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/CallBarringSetting;->mCBDataStale:Z

    .line 170
    new-instance v0, Lcom/android/phone/CallBarringSetting$1;

    invoke-direct {v0}, Lcom/android/phone/CallBarringSetting$1;-><init>()V

    sput-object v0, Lcom/android/phone/CallBarringSetting;->mCBPwdHandler:Landroid/os/Handler;

    .line 202
    new-instance v0, Lcom/android/phone/CallBarringSetting$2;

    invoke-direct {v0}, Lcom/android/phone/CallBarringSetting$2;-><init>()V

    sput-object v0, Lcom/android/phone/CallBarringSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    .line 233
    new-instance v0, Lcom/android/phone/CallBarringSetting$3;

    invoke-direct {v0}, Lcom/android/phone/CallBarringSetting$3;-><init>()V

    sput-object v0, Lcom/android/phone/CallBarringSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 251
    new-instance v0, Lcom/android/phone/CallBarringSetting$4;

    invoke-direct {v0}, Lcom/android/phone/CallBarringSetting$4;-><init>()V

    sput-object v0, Lcom/android/phone/CallBarringSetting;->mGetOptionComplete:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 281
    iput-boolean v2, p0, Lcom/android/phone/CallBarringSetting;->mIsBusyDialogAvailable:Z

    .line 298
    iput-boolean v2, p0, Lcom/android/phone/CallBarringSetting;->mLaunchAlertDialogAgain:Z

    .line 299
    iput-boolean v2, p0, Lcom/android/phone/CallBarringSetting;->mLaunchRadioOffErrorDialogAgain:Z

    .line 300
    iput-boolean v2, p0, Lcom/android/phone/CallBarringSetting;->mLaunchResponseErrorDialogAgain:Z

    .line 301
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/CallBarringSetting;->dialogCloseFilter:Landroid/content/IntentFilter;

    .line 305
    iput-boolean v2, p0, Lcom/android/phone/CallBarringSetting;->mIsCBCreated:Z

    .line 308
    new-instance v0, Lcom/android/phone/CallBarringSetting$5;

    invoke-direct {v0, p0}, Lcom/android/phone/CallBarringSetting$5;-><init>(Lcom/android/phone/CallBarringSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallBarringSetting;->mGetAllCBOptionsComplete:Landroid/os/Handler;

    .line 392
    new-instance v0, Lcom/android/phone/CallBarringSetting$6;

    invoke-direct {v0, p0}, Lcom/android/phone/CallBarringSetting$6;-><init>(Lcom/android/phone/CallBarringSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallBarringSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1532
    return-void
.end method

.method static synthetic access$000()Lcom/android/phone/CallBarringSetting;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/phone/CallBarringSetting;->mCBS:Lcom/android/phone/CallBarringSetting;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallBarringSetting;Lcom/android/phone/CallBarringSetting$AppState;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallBarringSetting;->setAppState(Lcom/android/phone/CallBarringSetting$AppState;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallBarringSetting;ILandroid/os/AsyncResult;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallBarringSetting;->handleSetCBMessage(ILandroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/CallBarringSetting;Landroid/os/AsyncResult;I)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallBarringSetting;->handleGetCBMessage(Landroid/os/AsyncResult;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/CallBarringSetting;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mGetAllCBOptionsComplete:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1302(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    sput-boolean p0, Lcom/android/phone/CallBarringSetting;->mCBDataStale:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/phone/CallBarringSetting;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/phone/CallBarringSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/phone/CallBarringSetting;->mLaunchAlertDialogAgain:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/phone/CallBarringSetting;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mRadioOffErrorDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/phone/CallBarringSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/phone/CallBarringSetting;->mLaunchRadioOffErrorDialogAgain:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/phone/CallBarringSetting;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mResponseErrorDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/phone/CallBarringSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/phone/CallBarringSetting;->mLaunchResponseErrorDialogAgain:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/CallBarringSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/CallBarringSetting;->resetPwdChangeState()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/CallBarringSetting;Lcom/android/phone/CallBarringSetting$AppState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringSetting;->setAppState(Lcom/android/phone/CallBarringSetting$AppState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CallBarringSetting;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/phone/CallBarringSetting;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallBarringSetting;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/phone/CallBarringSetting;->mDisplayMode:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallBarringSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/CallBarringSetting;->queryAllCBOptions()V

    return-void
.end method

.method static synthetic access$700()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/phone/CallBarringSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallBarringSetting;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/CallBarringSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/phone/CallBarringSetting;->dismissExpandedDialog()V

    return-void
.end method

.method private adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V
    .registers 4
    .parameter "epn"
    .parameter "isActive"

    .prologue
    .line 715
    if-nez p1, :cond_3

    .line 726
    :goto_2
    return-void

    .line 719
    :cond_3
    if-eqz p2, :cond_12

    .line 720
    const v0, 0x7f09009f

    invoke-virtual {p1, v0}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 721
    const v0, 0x7f0900a1

    invoke-virtual {p1, v0}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    goto :goto_2

    .line 723
    :cond_12
    const v0, 0x7f0900a0

    invoke-virtual {p1, v0}, Lcom/android/phone/EditPinPreference;->setSummary(I)V

    .line 724
    const v0, 0x7f0900a2

    invoke-virtual {p1, v0}, Lcom/android/phone/EditPinPreference;->setDialogTitle(I)V

    goto :goto_2
.end method

.method private final dismissBusyDialog()V
    .registers 2

    .prologue
    .line 1302
    iget-boolean v0, p0, Lcom/android/phone/CallBarringSetting;->mIsBusyDialogAvailable:Z

    if-eqz v0, :cond_9

    .line 1303
    const/16 v0, 0x44c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSetting;->dismissDialog(I)V

    .line 1305
    :cond_9
    return-void
.end method

.method private dismissExpandedDialog()V
    .registers 3

    .prologue
    .line 1100
    invoke-virtual {p0}, Lcom/android/phone/CallBarringSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1102
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    iget v1, p0, Lcom/android/phone/CallBarringSetting;->mDisplayMode:I

    packed-switch v1, :pswitch_data_1e

    .line 1112
    :cond_9
    :goto_9
    invoke-virtual {p0}, Lcom/android/phone/CallBarringSetting;->finish()V

    .line 1113
    return-void

    .line 1105
    :pswitch_d
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1106
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_9

    .line 1102
    nop

    :pswitch_data_1e
    .packed-switch -0x1
        :pswitch_d
    .end packed-switch
.end method

.method private final displayMessage(I)V
    .registers 4
    .parameter "strId"

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lcom/android/phone/CallBarringSetting;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 481
    return-void
.end method

.method private final displayPwdChangeDialog()V
    .registers 3

    .prologue
    .line 425
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallBarringSetting;->displayPwdChangeDialog(IZ)V

    .line 426
    return-void
.end method

.method private final displayPwdChangeDialog(IZ)V
    .registers 7
    .parameter "strId"
    .parameter "shouldDisplay"

    .prologue
    .line 429
    const/4 v0, -0x1

    .line 431
    .local v0, msgId:I
    iget v1, p0, Lcom/android/phone/CallBarringSetting;->mPwdChangeState:I

    packed-switch v1, :pswitch_data_4a

    .line 451
    :goto_6
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    if-eqz v1, :cond_37

    .line 453
    if-eqz p1, :cond_44

    .line 454
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/phone/CallBarringSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 464
    :goto_30
    if-eqz p2, :cond_37

    .line 465
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    .line 471
    :cond_37
    return-void

    .line 433
    :pswitch_38
    const v0, 0x7f0900a6

    .line 435
    goto :goto_6

    .line 438
    :pswitch_3c
    const v0, 0x7f0900a7

    .line 440
    goto :goto_6

    .line 443
    :pswitch_40
    const v0, 0x7f0900a8

    goto :goto_6

    .line 457
    :cond_44
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/EditPinPreference;->setDialogMessage(I)V

    goto :goto_30

    .line 431
    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_38
        :pswitch_3c
        :pswitch_40
    .end packed-switch
.end method

.method private handleCBBtnClickRequest(IILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "action"
    .parameter "reason"
    .parameter "facility"
    .parameter "password"

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/phone/CallBarringSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v2, 0x4b0

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p3, p4, v1}, Lcom/android/internal/telephony/Phone;->setCallBarring(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 909
    return-void
.end method

.method private handleGetCBMessage(Landroid/os/AsyncResult;I)I
    .registers 7
    .parameter "ar"
    .parameter "reason"

    .prologue
    const/16 v3, 0x514

    .line 832
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_18

    .line 835
    iget-object p0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->FDN_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_15

    .line 840
    const/16 v2, 0x2774

    .line 864
    :goto_14
    return v2

    .line 844
    :cond_15
    const/16 v2, 0x4b0

    goto :goto_14

    .line 845
    .restart local p0
    :cond_18
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_20

    move v2, v3

    .line 849
    goto :goto_14

    .line 851
    :cond_20
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 853
    .local v1, InfoArray:[I
    array-length v2, v1

    if-nez v2, :cond_2d

    move v2, v3

    .line 854
    goto :goto_14

    .line 860
    :cond_2d
    invoke-direct {p0, p2, v1}, Lcom/android/phone/CallBarringSetting;->syncCBUIState(I[I)V

    .line 864
    const/16 v2, 0x44c

    goto :goto_14
.end method

.method private handleSetCBMessage(ILandroid/os/AsyncResult;)V
    .registers 9
    .parameter "reason"
    .parameter "r"

    .prologue
    .line 886
    const-string v0, ""

    .line 888
    .local v0, facility:Ljava/lang/String;
    if-nez p1, :cond_17

    .line 889
    const-string v0, "AO"

    .line 900
    :cond_6
    :goto_6
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/CallBarringSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v3, 0x4b0

    const/4 v4, 0x0

    iget-object v5, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, p1, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;)V

    .line 903
    return-void

    .line 890
    :cond_17
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1d

    .line 891
    const-string v0, "OI"

    goto :goto_6

    .line 892
    :cond_1d
    const/4 v1, 0x2

    if-ne p1, v1, :cond_23

    .line 893
    const-string v0, "OX"

    goto :goto_6

    .line 894
    :cond_23
    const/4 v1, 0x3

    if-ne p1, v1, :cond_29

    .line 895
    const-string v0, "AI"

    goto :goto_6

    .line 896
    :cond_29
    const/4 v1, 0x4

    if-ne p1, v1, :cond_6

    .line 897
    const-string v0, "IR"

    goto :goto_6
.end method

.method private initCBUIState()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 793
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAOC:Lcom/android/phone/EditPinPreference;

    if-eqz v0, :cond_12

    .line 794
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAOC:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 795
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAOC:Lcom/android/phone/EditPinPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallBarringSetting;->adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V

    .line 796
    sput-boolean v1, Lcom/android/phone/CallBarringSetting;->mIsActiveBAOC:Z

    .line 800
    :cond_12
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOIC:Lcom/android/phone/EditPinPreference;

    if-eqz v0, :cond_22

    .line 801
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOIC:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 802
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOIC:Lcom/android/phone/EditPinPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallBarringSetting;->adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V

    .line 803
    sput-boolean v1, Lcom/android/phone/CallBarringSetting;->mIsActiveBOIC:Z

    .line 807
    :cond_22
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOICEXHC:Lcom/android/phone/EditPinPreference;

    if-eqz v0, :cond_32

    .line 808
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOICEXHC:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 809
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOICEXHC:Lcom/android/phone/EditPinPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallBarringSetting;->adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V

    .line 810
    sput-boolean v1, Lcom/android/phone/CallBarringSetting;->mIsActiveBOICxH:Z

    .line 814
    :cond_32
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAIC:Lcom/android/phone/EditPinPreference;

    if-eqz v0, :cond_42

    .line 815
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAIC:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 816
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAIC:Lcom/android/phone/EditPinPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallBarringSetting;->adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V

    .line 817
    sput-boolean v1, Lcom/android/phone/CallBarringSetting;->mIsActiveBAIC:Z

    .line 821
    :cond_42
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBICROAM:Lcom/android/phone/EditPinPreference;

    if-eqz v0, :cond_52

    .line 822
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBICROAM:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 823
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBICROAM:Lcom/android/phone/EditPinPreference;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallBarringSetting;->adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V

    .line 824
    sput-boolean v1, Lcom/android/phone/CallBarringSetting;->mIsActiveBICr:Z

    .line 828
    :cond_52
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 1527
    const-string v0, "call barring settings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    return-void
.end method

.method private queryAllCBOptions()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 869
    invoke-direct {p0}, Lcom/android/phone/CallBarringSetting;->initCBUIState()V

    .line 880
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "AO"

    iget-object v2, p0, Lcom/android/phone/CallBarringSetting;->mGetAllCBOptionsComplete:Landroid/os/Handler;

    const/16 v3, 0x4b0

    invoke-static {v2, v3, v4, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;)V

    .line 883
    return-void
.end method

.method static resetCBDataStale()V
    .registers 1

    .prologue
    .line 421
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/CallBarringSetting;->mCBDataStale:Z

    .line 422
    return-void
.end method

.method private final resetPwdChangeState()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 474
    iput v0, p0, Lcom/android/phone/CallBarringSetting;->mPwdChangeState:I

    .line 475
    invoke-direct {p0, v0, v0}, Lcom/android/phone/CallBarringSetting;->displayPwdChangeDialog(IZ)V

    .line 476
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/CallBarringSetting;->mNewPwd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CallBarringSetting;->mOldPwd:Ljava/lang/String;

    .line 477
    return-void
.end method

.method private setAppState(Lcom/android/phone/CallBarringSetting$AppState;)V
    .registers 4
    .parameter "requestedState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1118
    sget-object v0, Lcom/android/phone/CallBarringSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CallBarringSetting$AppState;

    if-ne p1, v0, :cond_c

    .line 1119
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1123
    :cond_c
    const/16 v0, 0x44c

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallBarringSetting;->setAppState(Lcom/android/phone/CallBarringSetting$AppState;I)V

    .line 1124
    return-void
.end method

.method private setAppState(Lcom/android/phone/CallBarringSetting$AppState;I)V
    .registers 7
    .parameter "requestedState"
    .parameter "msgStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x44c

    const/16 v2, 0x5dc

    .line 1129
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mAppState:Lcom/android/phone/CallBarringSetting$AppState;

    if-ne p1, v0, :cond_9

    .line 1299
    :goto_8
    return-void

    .line 1135
    :cond_9
    sget-object v0, Lcom/android/phone/CallBarringSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CallBarringSetting$AppState;

    if-ne p1, v0, :cond_a3

    .line 1136
    sparse-switch p2, :sswitch_data_114

    .line 1224
    :cond_10
    :goto_10
    iput-object p1, p0, Lcom/android/phone/CallBarringSetting;->mAppState:Lcom/android/phone/CallBarringSetting$AppState;

    goto :goto_8

    .line 1139
    :sswitch_13
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mAppState:Lcom/android/phone/CallBarringSetting$AppState;

    sget-object v1, Lcom/android/phone/CallBarringSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CallBarringSetting$AppState;

    if-ne v0, v1, :cond_36

    .line 1140
    invoke-virtual {p0, v2}, Lcom/android/phone/CallBarringSetting;->dismissDialog(I)V

    .line 1145
    :goto_1c
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    if-nez v0, :cond_28

    .line 1146
    const/16 v0, 0x4b0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSetting;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    .line 1151
    :cond_28
    iget-boolean v0, p0, Lcom/android/phone/CallBarringSetting;->mIsCBCreated:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_10

    .line 1153
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_10

    .line 1142
    :cond_36
    invoke-direct {p0}, Lcom/android/phone/CallBarringSetting;->dismissBusyDialog()V

    goto :goto_1c

    .line 1160
    :sswitch_3a
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mRadioOffErrorDialog:Landroid/app/Dialog;

    if-nez v0, :cond_46

    .line 1161
    const/16 v0, 0x578

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSetting;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringSetting;->mRadioOffErrorDialog:Landroid/app/Dialog;

    .line 1166
    :cond_46
    iget-boolean v0, p0, Lcom/android/phone/CallBarringSetting;->mIsCBCreated:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mRadioOffErrorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_10

    .line 1168
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mRadioOffErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_10

    .line 1175
    :sswitch_54
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mAppState:Lcom/android/phone/CallBarringSetting$AppState;

    sget-object v1, Lcom/android/phone/CallBarringSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CallBarringSetting$AppState;

    if-ne v0, v1, :cond_77

    .line 1176
    invoke-virtual {p0, v2}, Lcom/android/phone/CallBarringSetting;->dismissDialog(I)V

    .line 1181
    :goto_5d
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mResponseErrorDialog:Landroid/app/Dialog;

    if-nez v0, :cond_69

    .line 1182
    const/16 v0, 0x514

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSetting;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringSetting;->mResponseErrorDialog:Landroid/app/Dialog;

    .line 1187
    :cond_69
    iget-boolean v0, p0, Lcom/android/phone/CallBarringSetting;->mIsCBCreated:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mResponseErrorDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_10

    .line 1189
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mResponseErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_10

    .line 1178
    :cond_77
    invoke-direct {p0}, Lcom/android/phone/CallBarringSetting;->dismissBusyDialog()V

    goto :goto_5d

    .line 1200
    :sswitch_7b
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mAppState:Lcom/android/phone/CallBarringSetting$AppState;

    sget-object v1, Lcom/android/phone/CallBarringSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CallBarringSetting$AppState;

    if-ne v0, v1, :cond_9f

    .line 1201
    invoke-virtual {p0, v2}, Lcom/android/phone/CallBarringSetting;->dismissDialog(I)V

    .line 1206
    :goto_84
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    if-nez v0, :cond_90

    .line 1207
    const/16 v0, 0x2774

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSetting;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    .line 1212
    :cond_90
    iget-boolean v0, p0, Lcom/android/phone/CallBarringSetting;->mIsCBCreated:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_10

    .line 1214
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_10

    .line 1203
    :cond_9f
    invoke-direct {p0}, Lcom/android/phone/CallBarringSetting;->dismissBusyDialog()V

    goto :goto_84

    .line 1229
    :cond_a3
    sget-object v0, Lcom/android/phone/CallBarringSetting$7;->$SwitchMap$com$android$phone$CallBarringSetting$AppState:[I

    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mAppState:Lcom/android/phone/CallBarringSetting$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CallBarringSetting$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_126

    .line 1298
    :cond_b0
    :goto_b0
    iput-object p1, p0, Lcom/android/phone/CallBarringSetting;->mAppState:Lcom/android/phone/CallBarringSetting$AppState;

    goto/16 :goto_8

    .line 1234
    :pswitch_b4
    sget-object v0, Lcom/android/phone/CallBarringSetting$AppState;->INPUT_READY:Lcom/android/phone/CallBarringSetting$AppState;

    if-eq p1, v0, :cond_b0

    .line 1235
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1243
    :pswitch_c0
    sget-object v0, Lcom/android/phone/CallBarringSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CallBarringSetting$AppState;

    if-ne p1, v0, :cond_c8

    .line 1244
    invoke-virtual {p0, v2}, Lcom/android/phone/CallBarringSetting;->showDialog(I)V

    goto :goto_b0

    .line 1245
    :cond_c8
    sget-object v0, Lcom/android/phone/CallBarringSetting$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CallBarringSetting$AppState;

    if-ne p1, v0, :cond_d0

    .line 1246
    invoke-virtual {p0, v3}, Lcom/android/phone/CallBarringSetting;->showDialog(I)V

    goto :goto_b0

    .line 1247
    :cond_d0
    sget-object v0, Lcom/android/phone/CallBarringSetting$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CallBarringSetting$AppState;

    if-ne p1, v0, :cond_b0

    .line 1248
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INPUT_READY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1256
    :pswitch_dc
    sget-object v0, Lcom/android/phone/CallBarringSetting$AppState;->INPUT_READY:Lcom/android/phone/CallBarringSetting$AppState;

    if-eq p1, v0, :cond_b0

    .line 1258
    invoke-virtual {p0, v3}, Lcom/android/phone/CallBarringSetting;->showDialog(I)V

    goto :goto_b0

    .line 1266
    :pswitch_e4
    sget-object v0, Lcom/android/phone/CallBarringSetting$AppState;->INPUT_READY:Lcom/android/phone/CallBarringSetting$AppState;

    if-eq p1, v0, :cond_f0

    .line 1267
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1271
    :cond_f0
    invoke-virtual {p0, v2}, Lcom/android/phone/CallBarringSetting;->dismissDialog(I)V

    goto :goto_b0

    .line 1277
    :pswitch_f4
    sget-object v0, Lcom/android/phone/CallBarringSetting$AppState;->INPUT_READY:Lcom/android/phone/CallBarringSetting$AppState;

    if-eq p1, v0, :cond_100

    .line 1278
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1282
    :cond_100
    invoke-direct {p0}, Lcom/android/phone/CallBarringSetting;->dismissBusyDialog()V

    goto :goto_b0

    .line 1288
    :pswitch_104
    sget-object v0, Lcom/android/phone/CallBarringSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CallBarringSetting$AppState;

    if-eq p1, v0, :cond_110

    .line 1289
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from WAITING_NUMBER_SELECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1293
    :cond_110
    invoke-direct {p0}, Lcom/android/phone/CallBarringSetting;->dismissBusyDialog()V

    goto :goto_b0

    .line 1136
    :sswitch_data_114
    .sparse-switch
        0x4b0 -> :sswitch_13
        0x514 -> :sswitch_54
        0x578 -> :sswitch_3a
        0x2774 -> :sswitch_7b
    .end sparse-switch

    .line 1229
    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_b4
        :pswitch_c0
        :pswitch_dc
        :pswitch_e4
        :pswitch_f4
        :pswitch_104
    .end packed-switch
.end method

.method public static setHandler(Lcom/android/phone/CallBarringSetting;)V
    .registers 1
    .parameter "target"

    .prologue
    .line 417
    sput-object p0, Lcom/android/phone/CallBarringSetting;->mCBS:Lcom/android/phone/CallBarringSetting;

    .line 418
    return-void
.end method

.method private syncCBUIState(I[I)V
    .registers 8
    .parameter "reason"
    .parameter "cbArray"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 740
    array-length v1, p2

    const/4 v2, 0x2

    if-ge v1, v2, :cond_18

    .line 744
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getCurrentVoiceClass()I

    move-result v1

    aget v2, p2, v3

    and-int/2addr v1, v2

    if-eqz v1, :cond_16

    move v0, v4

    .line 753
    .local v0, active:Z
    :goto_12
    packed-switch p1, :pswitch_data_78

    .line 787
    :goto_15
    return-void

    .end local v0           #active:Z
    :cond_16
    move v0, v3

    .line 744
    goto :goto_12

    .line 748
    :cond_18
    aget v1, p2, v3

    if-ne v1, v4, :cond_29

    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getCurrentVoiceClass()I

    move-result v1

    aget v2, p2, v4

    and-int/2addr v1, v2

    if-eqz v1, :cond_29

    move v0, v4

    .restart local v0       #active:Z
    :goto_28
    goto :goto_12

    .end local v0           #active:Z
    :cond_29
    move v0, v3

    goto :goto_28

    .line 755
    .restart local v0       #active:Z
    :pswitch_2b
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAOC:Lcom/android/phone/EditPinPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/CallBarringSetting;->adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V

    .line 756
    sput-boolean v0, Lcom/android/phone/CallBarringSetting;->mIsActiveBAOC:Z

    .line 757
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOIC:Lcom/android/phone/EditPinPreference;

    sget-boolean v2, Lcom/android/phone/CallBarringSetting;->mIsActiveBAOC:Z

    if-nez v2, :cond_47

    move v2, v4

    :goto_39
    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 758
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOICEXHC:Lcom/android/phone/EditPinPreference;

    sget-boolean v2, Lcom/android/phone/CallBarringSetting;->mIsActiveBAOC:Z

    if-nez v2, :cond_49

    move v2, v4

    :goto_43
    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    goto :goto_15

    :cond_47
    move v2, v3

    .line 757
    goto :goto_39

    :cond_49
    move v2, v3

    .line 758
    goto :goto_43

    .line 763
    :pswitch_4b
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOIC:Lcom/android/phone/EditPinPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/CallBarringSetting;->adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V

    .line 764
    sput-boolean v0, Lcom/android/phone/CallBarringSetting;->mIsActiveBOIC:Z

    goto :goto_15

    .line 769
    :pswitch_53
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOICEXHC:Lcom/android/phone/EditPinPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/CallBarringSetting;->adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V

    .line 770
    sput-boolean v0, Lcom/android/phone/CallBarringSetting;->mIsActiveBOICxH:Z

    goto :goto_15

    .line 775
    :pswitch_5b
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAIC:Lcom/android/phone/EditPinPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/CallBarringSetting;->adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V

    .line 776
    sput-boolean v0, Lcom/android/phone/CallBarringSetting;->mIsActiveBAIC:Z

    .line 777
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBICROAM:Lcom/android/phone/EditPinPreference;

    sget-boolean v2, Lcom/android/phone/CallBarringSetting;->mIsActiveBAIC:Z

    if-nez v2, :cond_6d

    move v2, v4

    :goto_69
    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    goto :goto_15

    :cond_6d
    move v2, v3

    goto :goto_69

    .line 782
    :pswitch_6f
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBICROAM:Lcom/android/phone/EditPinPreference;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/CallBarringSetting;->adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V

    .line 783
    sput-boolean v0, Lcom/android/phone/CallBarringSetting;->mIsActiveBICr:Z

    goto :goto_15

    .line 753
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_4b
        :pswitch_53
        :pswitch_5b
        :pswitch_6f
    .end packed-switch
.end method

.method private toggleCBEnable(Lcom/android/phone/EditPinPreference;Z)V
    .registers 12
    .parameter "epn"
    .parameter "positiveResult"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 633
    iget-object v5, p0, Lcom/android/phone/CallBarringSetting;->mAppState:Lcom/android/phone/CallBarringSetting$AppState;

    sget-object v6, Lcom/android/phone/CallBarringSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CallBarringSetting$AppState;

    if-eq v5, v6, :cond_9

    .line 709
    :goto_8
    return-void

    .line 635
    :cond_9
    if-nez p2, :cond_11

    .line 637
    sget-object v5, Lcom/android/phone/CallBarringSetting$AppState;->INPUT_READY:Lcom/android/phone/CallBarringSetting$AppState;

    invoke-direct {p0, v5}, Lcom/android/phone/CallBarringSetting;->setAppState(Lcom/android/phone/CallBarringSetting$AppState;)V

    goto :goto_8

    .line 642
    :cond_11
    sget-object v2, Lcom/android/phone/CallBarringSetting$AppState;->INPUT_READY:Lcom/android/phone/CallBarringSetting$AppState;

    .line 644
    .local v2, nextState:Lcom/android/phone/CallBarringSetting$AppState;
    const/4 v4, 0x0

    .line 645
    .local v4, reason:I
    const-string v1, ""

    .line 646
    .local v1, facility:Ljava/lang/String;
    const/4 v0, -0x1

    .line 648
    .local v0, action:I
    invoke-virtual {p1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v3

    .line 650
    .local v3, password:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/phone/CallBarringSetting;->validateCBPwd(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 651
    iget-object v5, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAOC:Lcom/android/phone/EditPinPreference;

    if-ne p1, v5, :cond_45

    .line 652
    sget-boolean v5, Lcom/android/phone/CallBarringSetting;->mIsActiveBAOC:Z

    if-nez v5, :cond_43

    move v0, v8

    .line 654
    :goto_2a
    sget-object v2, Lcom/android/phone/CallBarringSetting$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CallBarringSetting$AppState;

    .line 655
    const/4 v4, 0x0

    .line 656
    const-string v1, "AO"

    .line 684
    :cond_2f
    :goto_2f
    sget-object v5, Lcom/android/phone/CallBarringSetting$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CallBarringSetting$AppState;

    if-ne v2, v5, :cond_36

    .line 698
    invoke-direct {p0, v0, v4, v1, v3}, Lcom/android/phone/CallBarringSetting;->handleCBBtnClickRequest(IILjava/lang/String;Ljava/lang/String;)V

    .line 701
    :cond_36
    sget-object v5, Lcom/android/phone/CallBarringSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CallBarringSetting$AppState;

    if-eq v2, v5, :cond_3d

    .line 702
    invoke-direct {p0, v2}, Lcom/android/phone/CallBarringSetting;->setAppState(Lcom/android/phone/CallBarringSetting$AppState;)V

    .line 708
    :cond_3d
    :goto_3d
    const-string v5, ""

    invoke-virtual {p1, v5}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    goto :goto_8

    :cond_43
    move v0, v7

    .line 652
    goto :goto_2a

    .line 657
    :cond_45
    iget-object v5, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOIC:Lcom/android/phone/EditPinPreference;

    if-ne p1, v5, :cond_56

    .line 658
    sget-boolean v5, Lcom/android/phone/CallBarringSetting;->mIsActiveBOIC:Z

    if-nez v5, :cond_54

    move v0, v8

    .line 660
    :goto_4e
    sget-object v2, Lcom/android/phone/CallBarringSetting$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CallBarringSetting$AppState;

    .line 661
    const/4 v4, 0x1

    .line 662
    const-string v1, "OI"

    goto :goto_2f

    :cond_54
    move v0, v7

    .line 658
    goto :goto_4e

    .line 663
    :cond_56
    iget-object v5, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOICEXHC:Lcom/android/phone/EditPinPreference;

    if-ne p1, v5, :cond_67

    .line 664
    sget-boolean v5, Lcom/android/phone/CallBarringSetting;->mIsActiveBOICxH:Z

    if-nez v5, :cond_65

    move v0, v8

    .line 667
    :goto_5f
    sget-object v2, Lcom/android/phone/CallBarringSetting$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CallBarringSetting$AppState;

    .line 668
    const/4 v4, 0x2

    .line 669
    const-string v1, "OX"

    goto :goto_2f

    :cond_65
    move v0, v7

    .line 664
    goto :goto_5f

    .line 670
    :cond_67
    iget-object v5, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAIC:Lcom/android/phone/EditPinPreference;

    if-ne p1, v5, :cond_78

    .line 671
    sget-boolean v5, Lcom/android/phone/CallBarringSetting;->mIsActiveBAIC:Z

    if-nez v5, :cond_76

    move v0, v8

    .line 673
    :goto_70
    sget-object v2, Lcom/android/phone/CallBarringSetting$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CallBarringSetting$AppState;

    .line 674
    const/4 v4, 0x3

    .line 675
    const-string v1, "AI"

    goto :goto_2f

    :cond_76
    move v0, v7

    .line 671
    goto :goto_70

    .line 676
    :cond_78
    iget-object v5, p0, Lcom/android/phone/CallBarringSetting;->mButtonBICROAM:Lcom/android/phone/EditPinPreference;

    if-ne p1, v5, :cond_2f

    .line 677
    sget-boolean v5, Lcom/android/phone/CallBarringSetting;->mIsActiveBICr:Z

    if-nez v5, :cond_87

    move v0, v8

    .line 679
    :goto_81
    sget-object v2, Lcom/android/phone/CallBarringSetting$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CallBarringSetting$AppState;

    .line 680
    const/4 v4, 0x4

    .line 681
    const-string v1, "IR"

    goto :goto_2f

    :cond_87
    move v0, v7

    .line 677
    goto :goto_81

    .line 705
    :cond_89
    const v5, 0x7f0900a4

    invoke-direct {p0, v5}, Lcom/android/phone/CallBarringSetting;->displayMessage(I)V

    goto :goto_3d
.end method

.method private updatePWDChangeState(Z)V
    .registers 8
    .parameter "positiveResult"

    .prologue
    const v5, 0x7f0900a4

    const/4 v3, 0x1

    const-string v4, ""

    .line 553
    if-nez p1, :cond_c

    .line 554
    invoke-direct {p0}, Lcom/android/phone/CallBarringSetting;->resetPwdChangeState()V

    .line 630
    :goto_b
    return-void

    .line 568
    :cond_c
    iget v1, p0, Lcom/android/phone/CallBarringSetting;->mPwdChangeState:I

    packed-switch v1, :pswitch_data_92

    goto :goto_b

    .line 570
    :pswitch_12
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallBarringSetting;->mOldPwd:Ljava/lang/String;

    .line 571
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v4}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 574
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mOldPwd:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/CallBarringSetting;->validateCBPwd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 575
    iput v3, p0, Lcom/android/phone/CallBarringSetting;->mPwdChangeState:I

    .line 576
    invoke-direct {p0}, Lcom/android/phone/CallBarringSetting;->displayPwdChangeDialog()V

    goto :goto_b

    .line 578
    :cond_2f
    invoke-direct {p0, v5, v3}, Lcom/android/phone/CallBarringSetting;->displayPwdChangeDialog(IZ)V

    goto :goto_b

    .line 584
    :pswitch_33
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallBarringSetting;->mNewPwd:Ljava/lang/String;

    .line 585
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v4}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 587
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mNewPwd:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/CallBarringSetting;->validateCBPwd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 588
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/CallBarringSetting;->mPwdChangeState:I

    .line 589
    invoke-direct {p0}, Lcom/android/phone/CallBarringSetting;->displayPwdChangeDialog()V

    goto :goto_b

    .line 591
    :cond_51
    invoke-direct {p0, v5, v3}, Lcom/android/phone/CallBarringSetting;->displayPwdChangeDialog(IZ)V

    goto :goto_b

    .line 599
    :pswitch_55
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mNewPwd:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 600
    iput v3, p0, Lcom/android/phone/CallBarringSetting;->mPwdChangeState:I

    .line 601
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v4}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 602
    const v1, 0x7f0900a5

    invoke-direct {p0, v1, v3}, Lcom/android/phone/CallBarringSetting;->displayPwdChangeDialog(IZ)V

    goto :goto_b

    .line 606
    :cond_73
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v4}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 608
    sget-object v1, Lcom/android/phone/CallBarringSetting;->mCBPwdHandler:Landroid/os/Handler;

    const/16 v2, 0x514

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 623
    .local v0, onComplete:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallBarringSetting;->mOldPwd:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallBarringSetting;->mNewPwd:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/android/internal/telephony/Phone;->changeCallBarringPwd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 625
    sget-object v1, Lcom/android/phone/CallBarringSetting$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CallBarringSetting$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/CallBarringSetting;->setAppState(Lcom/android/phone/CallBarringSetting$AppState;)V

    goto/16 :goto_b

    .line 568
    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_12
        :pswitch_33
        :pswitch_55
    .end packed-switch
.end method

.method private validateCBPwd(Ljava/lang/String;)Z
    .registers 4
    .parameter "password"

    .prologue
    .line 485
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    .line 486
    :cond_9
    const/4 v0, 0x0

    .line 488
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method buildMmiSetCB(IILjava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "action"
    .parameter "reason"
    .parameter "password"

    .prologue
    const/4 v4, 0x3

    const-string v6, "*"

    const-string v5, "#"

    .line 510
    const/4 v2, 0x0

    .line 511
    .local v2, mmi:Ljava/lang/String;
    const-string v0, "#"

    .line 517
    .local v0, activate:Ljava/lang/String;
    const-string v1, "*11"

    .line 520
    .local v1, bs:Ljava/lang/String;
    if-ne p1, v4, :cond_e

    .line 521
    const-string v0, "**"

    .line 524
    :cond_e
    if-nez p2, :cond_50

    .line 525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "33"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 536
    :cond_37
    :goto_37
    const-string v3, "nodebug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CBS>buildMmiSetCB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-object v2

    .line 526
    :cond_50
    const/4 v3, 0x1

    if-ne p2, v3, :cond_7b

    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "331"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_37

    .line 528
    :cond_7b
    const/4 v3, 0x2

    if-ne p2, v3, :cond_a6

    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "332"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_37

    .line 530
    :cond_a6
    if-ne p2, v4, :cond_d1

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "35"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_37

    .line 532
    :cond_d1
    const/4 v3, 0x4

    if-ne p2, v3, :cond_37

    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "351"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_37
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .parameter "dialog"

    .prologue
    .line 712
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1075
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1077
    packed-switch p2, :pswitch_data_14

    .line 1093
    :pswitch_6
    sget-object v0, Lcom/android/phone/CallBarringSetting$AppState;->INPUT_READY:Lcom/android/phone/CallBarringSetting$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringSetting;->setAppState(Lcom/android/phone/CallBarringSetting$AppState;)V

    .line 1097
    :goto_b
    return-void

    .line 1080
    :pswitch_c
    invoke-direct {p0}, Lcom/android/phone/CallBarringSetting;->dismissExpandedDialog()V

    goto :goto_b

    .line 1086
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/phone/CallBarringSetting;->finish()V

    goto :goto_b

    .line 1077
    :pswitch_data_14
    .packed-switch -0x3
        :pswitch_c
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1348
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1349
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lcom/android/phone/CallBarringSetting;->addPreferencesFromResource(I)V

    .line 1350
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallBarringSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1353
    iput-boolean v3, p0, Lcom/android/phone/CallBarringSetting;->mIsCBCreated:Z

    .line 1357
    invoke-virtual {p0}, Lcom/android/phone/CallBarringSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1358
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "button_baoc_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAOC:Lcom/android/phone/EditPinPreference;

    .line 1359
    const-string v1, "button_boic_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOIC:Lcom/android/phone/EditPinPreference;

    .line 1360
    const-string v1, "button_boicexhc_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOICEXHC:Lcom/android/phone/EditPinPreference;

    .line 1361
    const-string v1, "button_baic_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAIC:Lcom/android/phone/EditPinPreference;

    .line 1362
    const-string v1, "button_bicroam_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBICROAM:Lcom/android/phone/EditPinPreference;

    .line 1363
    const-string v1, "button_cbpwd_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    .line 1366
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAOC:Lcom/android/phone/EditPinPreference;

    if-eqz v1, :cond_60

    .line 1367
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAOC:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 1368
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAOC:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 1371
    :cond_60
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOIC:Lcom/android/phone/EditPinPreference;

    if-eqz v1, :cond_73

    .line 1372
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOIC:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 1373
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOIC:Lcom/android/phone/EditPinPreference;

    sget-boolean v2, Lcom/android/phone/CallBarringSetting;->mIsActiveBAOC:Z

    if-nez v2, :cond_c6

    move v2, v3

    :goto_70
    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 1376
    :cond_73
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOICEXHC:Lcom/android/phone/EditPinPreference;

    if-eqz v1, :cond_86

    .line 1377
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOICEXHC:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 1378
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOICEXHC:Lcom/android/phone/EditPinPreference;

    sget-boolean v2, Lcom/android/phone/CallBarringSetting;->mIsActiveBAOC:Z

    if-nez v2, :cond_c8

    move v2, v3

    :goto_83
    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 1381
    :cond_86
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAIC:Lcom/android/phone/EditPinPreference;

    if-eqz v1, :cond_94

    .line 1382
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAIC:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 1383
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAIC:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 1386
    :cond_94
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBICROAM:Lcom/android/phone/EditPinPreference;

    if-eqz v1, :cond_a7

    .line 1387
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBICROAM:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 1388
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBICROAM:Lcom/android/phone/EditPinPreference;

    sget-boolean v2, Lcom/android/phone/CallBarringSetting;->mIsActiveBAIC:Z

    if-nez v2, :cond_ca

    move v2, v3

    :goto_a4
    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 1391
    :cond_a7
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    if-eqz v1, :cond_b5

    .line 1392
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 1393
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/EditPinPreference;->setEnabled(Z)V

    .line 1396
    :cond_b5
    sget-object v1, Lcom/android/phone/CallBarringSetting$AppState;->INPUT_READY:Lcom/android/phone/CallBarringSetting$AppState;

    iput-object v1, p0, Lcom/android/phone/CallBarringSetting;->mAppState:Lcom/android/phone/CallBarringSetting$AppState;

    .line 1397
    invoke-static {p0}, Lcom/android/phone/CallBarringSetting;->setHandler(Lcom/android/phone/CallBarringSetting;)V

    .line 1399
    if-nez p1, :cond_cc

    .line 1400
    invoke-direct {p0}, Lcom/android/phone/CallBarringSetting;->resetPwdChangeState()V

    .line 1401
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/CallBarringSetting;->setDisplayMode(I)V

    .line 1436
    :goto_c5
    return-void

    :cond_c6
    move v2, v4

    .line 1373
    goto :goto_70

    :cond_c8
    move v2, v4

    .line 1378
    goto :goto_83

    :cond_ca
    move v2, v4

    .line 1388
    goto :goto_a4

    .line 1403
    :cond_cc
    const-string v1, "pwd_change_state_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallBarringSetting;->mPwdChangeState:I

    .line 1404
    const-string v1, "old_pwd_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallBarringSetting;->mOldPwd:Ljava/lang/String;

    .line 1405
    const-string v1, "new_pwd_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallBarringSetting;->mNewPwd:Ljava/lang/String;

    .line 1407
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    if-eqz v1, :cond_fe

    .line 1408
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    const-string v2, "dialog_message_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 1410
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    const-string v2, "dialog_pwd_entry_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 1413
    :cond_fe
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAOC:Lcom/android/phone/EditPinPreference;

    if-eqz v1, :cond_109

    .line 1414
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAOC:Lcom/android/phone/EditPinPreference;

    sget-boolean v2, Lcom/android/phone/CallBarringSetting;->mIsActiveBAOC:Z

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallBarringSetting;->adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V

    .line 1417
    :cond_109
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOIC:Lcom/android/phone/EditPinPreference;

    if-eqz v1, :cond_114

    .line 1418
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOIC:Lcom/android/phone/EditPinPreference;

    sget-boolean v2, Lcom/android/phone/CallBarringSetting;->mIsActiveBOIC:Z

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallBarringSetting;->adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V

    .line 1421
    :cond_114
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOICEXHC:Lcom/android/phone/EditPinPreference;

    if-eqz v1, :cond_11f

    .line 1422
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOICEXHC:Lcom/android/phone/EditPinPreference;

    sget-boolean v2, Lcom/android/phone/CallBarringSetting;->mIsActiveBOICxH:Z

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallBarringSetting;->adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V

    .line 1425
    :cond_11f
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAIC:Lcom/android/phone/EditPinPreference;

    if-eqz v1, :cond_12a

    .line 1426
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAIC:Lcom/android/phone/EditPinPreference;

    sget-boolean v2, Lcom/android/phone/CallBarringSetting;->mIsActiveBAIC:Z

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallBarringSetting;->adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V

    .line 1429
    :cond_12a
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBICROAM:Lcom/android/phone/EditPinPreference;

    if-eqz v1, :cond_135

    .line 1430
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBICROAM:Lcom/android/phone/EditPinPreference;

    sget-boolean v2, Lcom/android/phone/CallBarringSetting;->mIsActiveBICr:Z

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallBarringSetting;->adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V

    .line 1433
    :cond_135
    const-string v1, "app_state_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallBarringSetting$AppState;

    iput-object v1, p0, Lcom/android/phone/CallBarringSetting;->mAppState:Lcom/android/phone/CallBarringSetting$AppState;

    .line 1434
    const-string v1, "display_mode_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallBarringSetting;->mDisplayMode:I

    goto/16 :goto_c5
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 12
    .parameter "id"

    .prologue
    const/16 v9, 0x578

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    const v5, 0x7f0900d9

    .line 972
    const/16 v4, 0x44c

    if-eq p1, v4, :cond_10

    const/16 v4, 0x5dc

    if-ne p1, v4, :cond_55

    .line 973
    :cond_10
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 974
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v4, 0x7f0900d1

    invoke-virtual {p0, v4}, Lcom/android/phone/CallBarringSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 975
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 977
    sparse-switch p1, :sswitch_data_aa

    .line 996
    :goto_25
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->addFlags(I)V

    move-object v4, v1

    .line 1067
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :goto_2d
    return-object v4

    .line 979
    .restart local v1       #dialog:Landroid/app/ProgressDialog;
    :sswitch_2e
    iput-boolean v6, p0, Lcom/android/phone/CallBarringSetting;->mIsBusyDialogAvailable:Z

    .line 980
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 981
    const v4, 0x7f0900d4

    invoke-virtual {p0, v4}, Lcom/android/phone/CallBarringSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_25

    .line 987
    :sswitch_3e
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 988
    sget-object v4, Lcom/android/phone/CallBarringSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    .line 990
    const v4, 0x7f0900d3

    invoke-virtual {p0, v4}, Lcom/android/phone/CallBarringSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_25

    .line 1005
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_55
    const/16 v4, 0x514

    if-eq p1, v4, :cond_63

    const/16 v4, 0x4b0

    if-eq p1, v4, :cond_63

    if-eq p1, v9, :cond_63

    const/16 v4, 0x2774

    if-ne p1, v4, :cond_a7

    .line 1008
    :cond_63
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1011
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0900d2

    .line 1013
    .local v3, titleId:I
    sparse-switch p1, :sswitch_data_b4

    .line 1046
    const v2, 0x7f0900d6

    .line 1049
    .local v2, msgId:I
    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1054
    :goto_74
    invoke-virtual {p0, v3}, Lcom/android/phone/CallBarringSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1055
    invoke-virtual {p0, v2}, Lcom/android/phone/CallBarringSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1056
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1058
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1061
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->addFlags(I)V

    move-object v4, v1

    .line 1064
    goto :goto_2d

    .line 1015
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #msgId:I
    :sswitch_92
    const v2, 0x7f0900d5

    .line 1018
    .restart local v2       #msgId:I
    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_74

    .line 1023
    .end local v2           #msgId:I
    :sswitch_99
    const v2, 0x7f0900d8

    .line 1025
    .restart local v2       #msgId:I
    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_74

    .line 1036
    .end local v2           #msgId:I
    :sswitch_a0
    const v2, 0x7f0900d7

    .line 1038
    .restart local v2       #msgId:I
    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_74

    .line 1067
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v2           #msgId:I
    .end local v3           #titleId:I
    :cond_a7
    const/4 v4, 0x0

    goto :goto_2d

    .line 977
    nop

    :sswitch_data_aa
    .sparse-switch
        0x44c -> :sswitch_2e
        0x5dc -> :sswitch_3e
    .end sparse-switch

    .line 1013
    :sswitch_data_b4
    .sparse-switch
        0x514 -> :sswitch_92
        0x578 -> :sswitch_99
        0x2774 -> :sswitch_a0
    .end sparse-switch
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .registers 4
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_8

    .line 544
    invoke-direct {p0, p2}, Lcom/android/phone/CallBarringSetting;->updatePWDChangeState(Z)V

    .line 550
    :cond_7
    :goto_7
    return-void

    .line 545
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAOC:Lcom/android/phone/EditPinPreference;

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOIC:Lcom/android/phone/EditPinPreference;

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOICEXHC:Lcom/android/phone/EditPinPreference;

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAIC:Lcom/android/phone/EditPinPreference;

    if-eq p1, v0, :cond_1c

    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBICROAM:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_7

    .line 548
    :cond_1c
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallBarringSetting;->toggleCBEnable(Lcom/android/phone/EditPinPreference;Z)V

    goto :goto_7
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 1309
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mAppState:Lcom/android/phone/CallBarringSetting$AppState;

    sget-object v2, Lcom/android/phone/CallBarringSetting$AppState;->INPUT_READY:Lcom/android/phone/CallBarringSetting$AppState;

    if-eq v1, v2, :cond_9

    move v1, v3

    .line 1331
    :goto_8
    return v1

    .line 1313
    :cond_9
    sget-object v0, Lcom/android/phone/CallBarringSetting$AppState;->INPUT_READY:Lcom/android/phone/CallBarringSetting$AppState;

    .line 1315
    .local v0, nextState:Lcom/android/phone/CallBarringSetting$AppState;
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    if-ne p2, v1, :cond_11

    move v1, v3

    .line 1317
    goto :goto_8

    .line 1318
    :cond_11
    instance-of v1, p2, Lcom/android/phone/EditPinPreference;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAOC:Lcom/android/phone/EditPinPreference;

    if-eq p2, v1, :cond_29

    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOIC:Lcom/android/phone/EditPinPreference;

    if-eq p2, v1, :cond_29

    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOICEXHC:Lcom/android/phone/EditPinPreference;

    if-eq p2, v1, :cond_29

    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAIC:Lcom/android/phone/EditPinPreference;

    if-eq p2, v1, :cond_29

    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonBICROAM:Lcom/android/phone/EditPinPreference;

    if-ne p2, v1, :cond_2b

    .line 1322
    :cond_29
    sget-object v0, Lcom/android/phone/CallBarringSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CallBarringSetting$AppState;

    .line 1325
    :cond_2b
    sget-object v1, Lcom/android/phone/CallBarringSetting$AppState;->INPUT_READY:Lcom/android/phone/CallBarringSetting$AppState;

    if-eq v0, v1, :cond_34

    .line 1326
    invoke-direct {p0, v0}, Lcom/android/phone/CallBarringSetting;->setAppState(Lcom/android/phone/CallBarringSetting$AppState;)V

    .line 1328
    const/4 v1, 0x1

    goto :goto_8

    :cond_34
    move v1, v3

    .line 1331
    goto :goto_8
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1462
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 1464
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAOC:Lcom/android/phone/EditPinPreference;

    if-eqz v0, :cond_f

    .line 1465
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAOC:Lcom/android/phone/EditPinPreference;

    sget-boolean v1, Lcom/android/phone/CallBarringSetting;->mIsActiveBAOC:Z

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallBarringSetting;->adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V

    .line 1468
    :cond_f
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOIC:Lcom/android/phone/EditPinPreference;

    if-eqz v0, :cond_1a

    .line 1469
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOIC:Lcom/android/phone/EditPinPreference;

    sget-boolean v1, Lcom/android/phone/CallBarringSetting;->mIsActiveBOIC:Z

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallBarringSetting;->adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V

    .line 1472
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOICEXHC:Lcom/android/phone/EditPinPreference;

    if-eqz v0, :cond_25

    .line 1473
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBOICEXHC:Lcom/android/phone/EditPinPreference;

    sget-boolean v1, Lcom/android/phone/CallBarringSetting;->mIsActiveBOICxH:Z

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallBarringSetting;->adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V

    .line 1476
    :cond_25
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAIC:Lcom/android/phone/EditPinPreference;

    if-eqz v0, :cond_30

    .line 1477
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBAIC:Lcom/android/phone/EditPinPreference;

    sget-boolean v1, Lcom/android/phone/CallBarringSetting;->mIsActiveBAIC:Z

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallBarringSetting;->adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V

    .line 1480
    :cond_30
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBICROAM:Lcom/android/phone/EditPinPreference;

    if-eqz v0, :cond_3b

    .line 1481
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonBICROAM:Lcom/android/phone/EditPinPreference;

    sget-boolean v1, Lcom/android/phone/CallBarringSetting;->mIsActiveBICr:Z

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallBarringSetting;->adjustCBbuttonState(Lcom/android/phone/EditPinPreference;Z)V

    .line 1484
    :cond_3b
    iget-boolean v0, p0, Lcom/android/phone/CallBarringSetting;->mLaunchAlertDialogAgain:Z

    if-eqz v0, :cond_53

    .line 1485
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    if-nez v0, :cond_4b

    .line 1486
    const/16 v0, 0x4b0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSetting;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    .line 1489
    :cond_4b
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1490
    iput-boolean v2, p0, Lcom/android/phone/CallBarringSetting;->mLaunchAlertDialogAgain:Z

    .line 1506
    :cond_52
    :goto_52
    return-void

    .line 1491
    :cond_53
    iget-boolean v0, p0, Lcom/android/phone/CallBarringSetting;->mLaunchRadioOffErrorDialogAgain:Z

    if-eqz v0, :cond_6b

    .line 1492
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mRadioOffErrorDialog:Landroid/app/Dialog;

    if-nez v0, :cond_63

    .line 1493
    const/16 v0, 0x578

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSetting;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringSetting;->mRadioOffErrorDialog:Landroid/app/Dialog;

    .line 1496
    :cond_63
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mRadioOffErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1497
    iput-boolean v2, p0, Lcom/android/phone/CallBarringSetting;->mLaunchRadioOffErrorDialogAgain:Z

    goto :goto_52

    .line 1498
    :cond_6b
    iget-boolean v0, p0, Lcom/android/phone/CallBarringSetting;->mLaunchResponseErrorDialogAgain:Z

    if-eqz v0, :cond_52

    .line 1499
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mResponseErrorDialog:Landroid/app/Dialog;

    if-nez v0, :cond_7b

    .line 1500
    const/16 v0, 0x514

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSetting;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallBarringSetting;->mResponseErrorDialog:Landroid/app/Dialog;

    .line 1503
    :cond_7b
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mResponseErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1504
    iput-boolean v2, p0, Lcom/android/phone/CallBarringSetting;->mLaunchResponseErrorDialogAgain:Z

    goto :goto_52
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 1510
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1512
    const-string v0, "pwd_change_state_key"

    iget v1, p0, Lcom/android/phone/CallBarringSetting;->mPwdChangeState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1513
    const-string v0, "old_pwd_key"

    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mOldPwd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    const-string v0, "new_pwd_key"

    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mNewPwd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    if-eqz v0, :cond_36

    .line 1517
    const-string v0, "dialog_message_key"

    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    const-string v0, "dialog_pwd_entry_key"

    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mButtonCBPwd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    :cond_36
    const-string v0, "app_state_key"

    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mAppState:Lcom/android/phone/CallBarringSetting$AppState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1523
    const-string v0, "display_mode_key"

    iget v1, p0, Lcom/android/phone/CallBarringSetting;->mDisplayMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1524
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 1340
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 1342
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->dialogCloseFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallBarringSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1343
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1444
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 1445
    iget-object v0, p0, Lcom/android/phone/CallBarringSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallBarringSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallBarringSetting;->mIsCBCreated:Z

    .line 1449
    iput-object v1, p0, Lcom/android/phone/CallBarringSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    .line 1450
    iput-object v1, p0, Lcom/android/phone/CallBarringSetting;->mRadioOffErrorDialog:Landroid/app/Dialog;

    .line 1451
    iput-object v1, p0, Lcom/android/phone/CallBarringSetting;->mResponseErrorDialog:Landroid/app/Dialog;

    .line 1454
    return-void
.end method

.method public setDisplayMode(I)V
    .registers 8
    .parameter "displayMode"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 912
    iput p1, p0, Lcom/android/phone/CallBarringSetting;->mDisplayMode:I

    .line 918
    if-ne p1, v4, :cond_41

    .line 921
    invoke-virtual {p0}, Lcom/android/phone/CallBarringSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_67

    .line 929
    sget-boolean v1, Lcom/android/phone/CallBarringSetting;->mCBDataStale:Z

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 930
    iput-boolean v5, p0, Lcom/android/phone/CallBarringSetting;->mIsCBCreated:Z

    .line 931
    sget-object v1, Lcom/android/phone/CallBarringSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CallBarringSetting$AppState;

    const/16 v2, 0x2774

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallBarringSetting;->setAppState(Lcom/android/phone/CallBarringSetting$AppState;I)V

    .line 946
    :goto_2c
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 948
    .local v0, radioState:I
    if-nez v0, :cond_51

    .line 953
    sget-boolean v1, Lcom/android/phone/CallBarringSetting;->mCBDataStale:Z

    if-eqz v1, :cond_41

    if-ne p1, v4, :cond_41

    .line 955
    invoke-direct {p0}, Lcom/android/phone/CallBarringSetting;->queryAllCBOptions()V

    .line 967
    .end local v0           #radioState:I
    :cond_41
    :goto_41
    return-void

    .line 933
    :cond_42
    sget-boolean v1, Lcom/android/phone/CallBarringSetting;->mCBDataStale:Z

    if-nez v1, :cond_4b

    if-ne p1, v4, :cond_4b

    .line 936
    iput-boolean v5, p0, Lcom/android/phone/CallBarringSetting;->mIsCBCreated:Z

    goto :goto_41

    .line 941
    :cond_4b
    sget-object v1, Lcom/android/phone/CallBarringSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CallBarringSetting$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/CallBarringSetting;->setAppState(Lcom/android/phone/CallBarringSetting$AppState;)V

    goto :goto_2c

    .line 957
    .restart local v0       #radioState:I
    :cond_51
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5f

    .line 958
    iget-object v1, p0, Lcom/android/phone/CallBarringSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/CallBarringSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x44c

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_41

    .line 961
    :cond_5f
    sget-object v1, Lcom/android/phone/CallBarringSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CallBarringSetting$AppState;

    const/16 v2, 0x4b0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallBarringSetting;->setAppState(Lcom/android/phone/CallBarringSetting$AppState;I)V

    goto :goto_41

    .line 964
    .end local v0           #radioState:I
    :cond_67
    sget-object v1, Lcom/android/phone/CallBarringSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CallBarringSetting$AppState;

    const/16 v2, 0x578

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallBarringSetting;->setAppState(Lcom/android/phone/CallBarringSetting$AppState;I)V

    goto :goto_41
.end method
