.class public Lcom/android/phone/CallFeaturesSetting;
.super Landroid/preference/PreferenceActivity;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallFeaturesSetting$7;,
        Lcom/android/phone/CallFeaturesSetting$AppState;
    }
.end annotation


# static fields
.field static final ACTION_ACTIVATE:Ljava/lang/String; = "*"

.field public static final ACTION_ADD_VOICEMAIL:Ljava/lang/String; = "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

.field static final ACTION_DEACTIVATE:Ljava/lang/String; = "#"

.field static final ACTION_ERASURE:Ljava/lang/String; = "##"

.field static final ACTION_INTERROGATE:Ljava/lang/String; = "*#"

.field static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field private static final ALS_LINE_1:I = 0x0

.field private static final ALS_LINE_2:I = 0x1

.field private static final ALS_LINE_NOT_ALLOWED:I = 0x2

.field private static final APP_STATE_KEY:Ljava/lang/String; = "app_state_key"

.field private static final BUSY_DIALOG:I = 0x64

.field private static final BUTTON_ALS_KEY:Ljava/lang/String; = "button_als_key"

.field private static final BUTTON_CB_EXPAND_KEY:Ljava/lang/String; = "button_cb_expand_key"

.field private static final BUTTON_CC_EXPAND_KEY:Ljava/lang/String; = "button_cc_expand_key"

.field private static final BUTTON_CD_EXPAND_KEY:Ljava/lang/String; = "button_cd_expand_key"

.field private static final BUTTON_CFB_KEY:Ljava/lang/String; = "button_cfb_key"

.field private static final BUTTON_CFNRC_KEY:Ljava/lang/String; = "button_cfnrc_key"

.field private static final BUTTON_CFNRY_KEY:Ljava/lang/String; = "button_cfnry_key"

.field private static final BUTTON_CFU_KEY:Ljava/lang/String; = "button_cfu_key"

.field private static final BUTTON_CF_EXPAND_KEY:Ljava/lang/String; = "button_cf_expand_key"

.field private static final BUTTON_CLARITY_KEY:Ljava/lang/String; = "button_clarity_key"

.field private static final BUTTON_CLIR_KEY:Ljava/lang/String; = "button_clir_key"

.field private static final BUTTON_CW_KEY:Ljava/lang/String; = "button_cw_key"

.field private static final BUTTON_FDN_KEY:Ljava/lang/String; = "button_fdn_key"

.field private static final BUTTON_MORE_EXPAND_KEY:Ljava/lang/String; = "button_more_expand_key"

.field private static final BUTTON_VOICEMAIL_KEY:Ljava/lang/String; = "button_voicemail_key"

.field private static final CSP_TAG:Ljava/lang/String; = "CSP Call FS"

.field private static final DBG:Z = true

.field private static final DISPLAY_MODE_KEY:Ljava/lang/String; = "display_mode_key"

.field private static final DISP_MODE_CF:I = -0x2

.field private static final DISP_MODE_MAIN:I = -0x1

.field private static final DISP_MODE_MORE:I = -0x3

.field private static final EVENT_ALS_EXECUTED:I = 0x2bc

.field private static final EVENT_CF_EXECUTED:I = 0x190

.field private static final EVENT_CLIR_EXECUTED:I = 0xc8

.field private static final EVENT_CW_EXECUTED:I = 0x12c

.field private static final EVENT_INITAL_QUERY_CANCELED:I = 0x258

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x64

.field private static final EVENT_VOICEMAIL_CHANGED:I = 0x1f4

.field private static final EXCEPTION_ERROR:I = 0xc8

.field private static final FDN_BLOCK_ERROR:I = 0x2774

.field private static final INITIAL_BUSY_DIALOG:I = 0x384

.field private static final LOG_TAG:Ljava/lang/String; = "call features settings"

.field private static final MSG_EXCEPTION:I = 0xc8

.field private static final MSG_FDN_BLOCK:I = 0x2774

.field private static final MSG_OK:I = 0x64

.field private static final MSG_RADIO_OFF:I = 0x320

.field private static final MSG_UNEXPECTED_RESPONSE:I = 0x12c

.field private static final MSG_VM_BUSY:I = 0x1f4

.field private static final MSG_VM_EXCEPTION:I = 0x190

.field private static final MSG_VM_NOCHANGE:I = 0x2bc

.field private static final MSG_VM_OK:I = 0x258

.field private static final NUM_PROJECTION:[Ljava/lang/String; = null

.field private static final RADIO_OFF_ERROR:I = 0x320

.field private static final RESPONSE_ERROR:I = 0x12c

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

.field private static final SRC_TAGS:[Ljava/lang/String; = null

.field private static final SUMMARY_CFB_KEY:Ljava/lang/String; = "summary_cfb_key"

.field private static final SUMMARY_CFNRC_KEY:Ljava/lang/String; = "summary_cfnrc_key"

.field private static final SUMMARY_CFNRY_KEY:Ljava/lang/String; = "summary_cfnry_key"

.field private static final SUMMARY_CFU_KEY:Ljava/lang/String; = "summary_cfu_key"

.field private static final VM_NOCHANGE_ERROR:I = 0x190

.field private static final VM_RESPONSE_ERROR:I = 0x1f4

.field private static final VOICEMAIL_DIALOG_CONFIRM:I = 0x258

.field private static final VOICEMAIL_DIALOG_PROGRESS:I = 0x2bc

.field private static final VOICEMAIL_PREF_ID:I = 0x4

.field static alert_action:I

.field static alert_number:Ljava/lang/String;

.field static final choiceTimes:[I

.field private static mCFS:Lcom/android/phone/CallFeaturesSetting;

.field private static mGetAllCFOptionsComplete:Landroid/os/Handler;

.field private static mGetMoreOptionsComplete:Landroid/os/Handler;

.field private static mGetOptionComplete:Landroid/os/Handler;

.field private static mNetworkServiceHandler:Landroid/os/Handler;

.field private static mSetOptionComplete:Landroid/os/Handler;


# instance fields
.field private choiceAlert:Landroid/app/AlertDialog;

.field dialogCloseFilter:Landroid/content/IntentFilter;

.field private mAppState:Lcom/android/phone/CallFeaturesSetting$AppState;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonALS:Landroid/preference/ListPreference;

.field private mButtonCBExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCCExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCDExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCLIR:Landroid/preference/ListPreference;

.field private mButtonCW:Landroid/preference/CheckBoxPreference;

.field private mButtonMoreExpand:Landroid/preference/PreferenceScreen;

.field private mButtonVC:Landroid/preference/CheckBoxPreference;

.field private mCBSettingIntent:Landroid/content/Intent;

.field private mCCSettingIntent:Landroid/content/Intent;

.field private mCDSettingIntent:Landroid/content/Intent;

.field private mCFDataStale:Z

.field private mContactListIntent:Landroid/content/Intent;

.field private mDialingNumCFB:Ljava/lang/String;

.field private mDialingNumCFNRc:Ljava/lang/String;

.field private mDialingNumCFNRy:Ljava/lang/String;

.field private mDialingNumCFU:Ljava/lang/String;

.field private mDisplayMode:I

.field private mErrorAlertDialog:Landroid/app/Dialog;

.field private mFDNSettingIntent:Landroid/content/Intent;

.field mFlexOperatorCode:Ljava/lang/String;

.field private mIsBusyDialogAvailable:Z

.field private mLaunchAlertDialogAgain:Z

.field private mLaunchRadioOffErrorDialogAgain:Z

.field private mLaunchResponseErrorDialogAgain:Z

.field private mLaunchVmExceptionErrorDialogAgain:Z

.field private mMoreDataStale:Z

.field private mOldVmNumber:Ljava/lang/String;

.field private mOperatorCode:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRadioOffErrorDialog:Landroid/app/Dialog;

.field private mResponseErrorDialog:Landroid/app/Dialog;

.field private mSubMenuFDNSettings:Landroid/preference/PreferenceScreen;

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field private mVmExceptionErrorDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 108
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "{0}"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->SRC_TAGS:[Ljava/lang/String;

    .line 260
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->choiceTimes:[I

    .line 276
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$1;

    invoke-direct {v0}, Lcom/android/phone/CallFeaturesSetting$1;-><init>()V

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 335
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$2;

    invoke-direct {v0}, Lcom/android/phone/CallFeaturesSetting$2;-><init>()V

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 404
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$3;

    invoke-direct {v0}, Lcom/android/phone/CallFeaturesSetting$3;-><init>()V

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    .line 469
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$4;

    invoke-direct {v0}, Lcom/android/phone/CallFeaturesSetting$4;-><init>()V

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->mGetAllCFOptionsComplete:Landroid/os/Handler;

    .line 596
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$5;

    invoke-direct {v0}, Lcom/android/phone/CallFeaturesSetting$5;-><init>()V

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->mGetMoreOptionsComplete:Landroid/os/Handler;

    return-void

    .line 260
    :array_3e
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 680
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFlexOperatorCode:Ljava/lang/String;

    .line 697
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mCFDataStale:Z

    .line 698
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mMoreDataStale:Z

    .line 699
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mIsBusyDialogAvailable:Z

    .line 758
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mLaunchAlertDialogAgain:Z

    .line 759
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mLaunchRadioOffErrorDialogAgain:Z

    .line 760
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mLaunchVmExceptionErrorDialogAgain:Z

    .line 761
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mLaunchResponseErrorDialogAgain:Z

    .line 762
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->dialogCloseFilter:Landroid/content/IntentFilter;

    .line 763
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$6;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$6;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2878
    return-void
.end method

.method static synthetic access$000()Lcom/android/phone/CallFeaturesSetting;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mCFS:Lcom/android/phone/CallFeaturesSetting;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->handleSetCLIRMessage()V

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/CallFeaturesSetting;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mDisplayMode:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->queryAllCFOptions()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->queryMoreOptions()V

    return-void
.end method

.method static synthetic access$1400()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/CallFeaturesSetting;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->dismissExpandedDialog()V

    return-void
.end method

.method static synthetic access$1700()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mGetAllCFOptionsComplete:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/phone/CallFeaturesSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/phone/CallFeaturesSetting;->mCFDataStale:Z

    return p1
.end method

.method static synthetic access$1900()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->mGetMoreOptionsComplete:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->handleSetCWMessage()V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/phone/CallFeaturesSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/phone/CallFeaturesSetting;->mMoreDataStale:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/phone/CallFeaturesSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/phone/CallFeaturesSetting;->mLaunchAlertDialogAgain:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRadioOffErrorDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/phone/CallFeaturesSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/phone/CallFeaturesSetting;->mLaunchRadioOffErrorDialogAgain:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVmExceptionErrorDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/phone/CallFeaturesSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/phone/CallFeaturesSetting;->mLaunchVmExceptionErrorDialogAgain:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/phone/CallFeaturesSetting;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mResponseErrorDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/phone/CallFeaturesSetting;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/phone/CallFeaturesSetting;->mLaunchResponseErrorDialogAgain:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/CallFeaturesSetting;ILandroid/os/AsyncResult;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->handleSetCFMessage(ILandroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->handleSetVMMessage(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->handleGetCLIRMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->handleGetCWMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;I)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->handleGetCFMessage(Landroid/os/AsyncResult;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallFeaturesSetting;Lcom/android/phone/CallFeaturesSetting$AppState;I)V
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
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/CallFeaturesSetting;Lcom/android/phone/CallFeaturesSetting$AppState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;)V

    return-void
.end method

.method private adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V
    .registers 9
    .parameter "epn"
    .parameter "isActive"
    .parameter "template"
    .parameter "number"

    .prologue
    .line 1780
    if-nez p1, :cond_3

    .line 1798
    :goto_2
    return-void

    .line 1784
    :cond_3
    const-string v0, ""

    .line 1786
    .local v0, summaryOn:Ljava/lang/CharSequence;
    if-eqz p2, :cond_1c

    .line 1787
    if-eqz p4, :cond_19

    .line 1788
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    .line 1789
    .local v1, values:[Ljava/lang/String;
    invoke-virtual {p0, p3}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1793
    .end local v1           #values:[Ljava/lang/String;
    :cond_19
    invoke-virtual {p1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1796
    :cond_1c
    invoke-virtual {p1, p2}, Lcom/android/phone/EditPhoneNumberPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1797
    invoke-virtual {p1, p4}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_2
.end method

.method private final dismissBusyDialog()V
    .registers 2

    .prologue
    .line 2375
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mIsBusyDialogAvailable:Z

    if-eqz v0, :cond_9

    .line 2376
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->dismissDialog(I)V

    .line 2378
    :cond_9
    return-void
.end method

.method private dismissExpandedDialog()V
    .registers 2

    .prologue
    .line 2105
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mDisplayMode:I

    packed-switch v0, :pswitch_data_3a

    .line 2125
    :cond_5
    :goto_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/CallFeaturesSetting;->mDisplayMode:I

    .line 2126
    sget-object v0, Lcom/android/phone/CallFeaturesSetting$AppState;->INPUT_READY:Lcom/android/phone/CallFeaturesSetting$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;)V

    .line 2127
    return-void

    .line 2108
    :pswitch_e
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFExpand:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2110
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_5

    .line 2117
    :pswitch_24
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonMoreExpand:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonMoreExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2119
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonMoreExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_5

    .line 2105
    :pswitch_data_3a
    .packed-switch -0x3
        :pswitch_24
        :pswitch_e
    .end packed-switch
.end method

.method private handleALSClickRequest(I)V
    .registers 6
    .parameter "i"

    .prologue
    const/4 v3, 0x1

    .line 1341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleALSClickRequest: requesting set Select line (ALS) to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_3d

    const-string v1, "Line 1"

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1345
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getALSSettingValue()I

    move-result v0

    if-eq v0, p1, :cond_3c

    .line 1346
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->storeALSSettingValue(I)V

    .line 1347
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->syncALSUIState(I)V

    .line 1349
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v2, 0x2bc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/Phone;->setLineSelectInfo(ILandroid/os/Message;)V

    .line 1352
    iput-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->mCFDataStale:Z

    .line 1353
    iput-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->mMoreDataStale:Z

    .line 1355
    :cond_3c
    return-void

    .line 1341
    :cond_3d
    const-string v1, "Line2"

    goto :goto_10
.end method

.method private handleCFBtnClickRequest(IIILjava/lang/String;)V
    .registers 11
    .parameter "action"
    .parameter "reason"
    .parameter "time"
    .parameter "number"

    .prologue
    .line 1363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCFBtnClickRequest: requesting set call forwarding (CF) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1368
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v2, 0x190

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v5

    move v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1370
    return-void
.end method

.method private handleCLIRClickRequest(I)V
    .registers 5
    .parameter "i"

    .prologue
    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCLIRClickRequest: requesting set Call Line Id Restriction (CLIR) to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2e

    const-string v1, "ENABLE"

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1319
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->storeCLIRSettingValue(I)V

    .line 1321
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 1323
    return-void

    .line 1310
    :cond_2e
    const/4 v1, 0x2

    if-ne p1, v1, :cond_34

    const-string v1, "DISABLE"

    goto :goto_10

    :cond_34
    const-string v1, "NETWORK DEFAULT"

    goto :goto_10
.end method

.method private handleCWClickRequest(Z)V
    .registers 5
    .parameter "b"

    .prologue
    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCWClickRequest: requesting set call waiting enable (CW) to"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1333
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 1335
    return-void
.end method

.method private handleGetCFMessage(Landroid/os/AsyncResult;I)I
    .registers 12
    .parameter "ar"
    .parameter "reason"

    .prologue
    const/16 v8, 0x12c

    .line 1520
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_e

    .line 1522
    const-string v4, "handleGetCFMessage: Error getting CF enable state."

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1525
    const/16 v4, 0xc8

    .line 1578
    :goto_d
    return v4

    .line 1526
    :cond_e
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_4c

    .line 1531
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCFMessage: Error during set call, reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1538
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v5, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v6, 0x190

    const/4 v7, 0x0

    invoke-static {v5, v6, p2, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, p2, v5}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    move v4, v8

    .line 1541
    goto :goto_d

    .line 1543
    :cond_4c
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v4

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v1, v0

    .line 1545
    .local v1, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v4, v1

    if-nez v4, :cond_5e

    .line 1547
    const-string v4, "handleGetCFMessage: Error getting CF state, unexpected value."

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    move v4, v8

    .line 1551
    goto :goto_d

    .line 1557
    :cond_5e
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, v1

    .local v3, length:I
    :goto_60
    if-ge v2, v3, :cond_8e

    .line 1561
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getCurrentVoiceClass()I

    move-result v4

    aget-object v5, v1, v2

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_92

    .line 1565
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCFMessage: CF state successfully queried for reason "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1570
    aget-object v4, v1, v2

    invoke-direct {p0, p2, v4}, Lcom/android/phone/CallFeaturesSetting;->syncCFUIState(ILcom/android/internal/telephony/CallForwardInfo;)V

    .line 1578
    :cond_8e
    const/16 v4, 0x64

    goto/16 :goto_d

    .line 1557
    :cond_92
    add-int/lit8 v2, v2, 0x1

    goto :goto_60
.end method

.method private handleGetCLIRMessage(Landroid/os/AsyncResult;)I
    .registers 6
    .parameter "ar"

    .prologue
    .line 1469
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_c

    .line 1471
    const-string v2, "handleGetCLIRMessage: Error getting CLIR enable state."

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1474
    const/16 v2, 0xc8

    .line 1495
    :goto_b
    return v2

    .line 1476
    :cond_c
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 1478
    .local v1, clirArray:[I
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_20

    .line 1480
    const-string v2, "handleGetCLIRMessage: Error getting CLIR state, unexpected value."

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1484
    const/16 v2, 0x12c

    goto :goto_b

    .line 1487
    :cond_20
    const-string v2, "handleGetCLIRMessage: CLIR enable state successfully queried."

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1491
    invoke-direct {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->syncCLIRUIState([I)V

    .line 1495
    const/16 v2, 0x64

    goto :goto_b
.end method

.method private handleGetCWMessage(Landroid/os/AsyncResult;)I
    .registers 3
    .parameter "ar"

    .prologue
    .line 1500
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_c

    .line 1502
    const-string v0, "handleGetCWMessage: Error getting CW enable state."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1505
    const/16 v0, 0xc8

    .line 1514
    :goto_b
    return v0

    .line 1508
    :cond_c
    const-string v0, "handleGetCWMessage: CW enable state successfully queried."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1511
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->syncCWState([I)V

    .line 1514
    const/16 v0, 0x64

    goto :goto_b
.end method

.method private handleSetCFMessage(ILandroid/os/AsyncResult;)V
    .registers 8
    .parameter "reason"
    .parameter "r"

    .prologue
    .line 1429
    const-string v0, "handleSetCFMessage: set CF request complete, reading value back from network."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1437
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v2, 0x190

    const/4 v3, 0x0

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, p1, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1440
    return-void
.end method

.method private handleSetCLIRMessage()V
    .registers 4

    .prologue
    .line 1407
    const-string v0, "handleSetCLIRMessage: set CLIR request complete, reading value from network."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1411
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 1413
    return-void
.end method

.method private handleSetCWMessage()V
    .registers 4

    .prologue
    .line 1418
    const-string v0, "handleSetCWMessage: set CW request complete, reading value back from network."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 1424
    return-void
.end method

.method private handleSetVMMessage(Landroid/os/AsyncResult;)V
    .registers 4
    .parameter "ar"

    .prologue
    .line 1445
    const-string v0, "handleSetVMMessage: set VM request complete"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1448
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_19

    .line 1450
    const-string v0, "change VM success!"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1453
    sget-object v0, Lcom/android/phone/CallFeaturesSetting$AppState;->INPUT_READY:Lcom/android/phone/CallFeaturesSetting$AppState;

    const/16 v1, 0x258

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;I)V

    .line 1463
    :goto_15
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 1464
    return-void

    .line 1457
    :cond_19
    const-string v0, "change VM failed!"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1460
    sget-object v0, Lcom/android/phone/CallFeaturesSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CallFeaturesSetting$AppState;

    const/16 v1, 0x190

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;I)V

    goto :goto_15
.end method

.method private handleVMBtnClickRequest()V
    .registers 6

    .prologue
    const/16 v4, 0x1f4

    .line 1378
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 1381
    .local v0, newVMNumber:Ljava/lang/String;
    if-nez v0, :cond_c

    .line 1382
    const-string v0, ""

    .line 1386
    :cond_c
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1387
    sget-object v1, Lcom/android/phone/CallFeaturesSetting$AppState;->INPUT_READY:Lcom/android/phone/CallFeaturesSetting$AppState;

    const/16 v2, 0x2bc

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;I)V

    .line 1402
    :goto_1b
    return-void

    .line 1393
    :cond_1c
    sget-object v1, Lcom/android/phone/CallFeaturesSetting$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CallFeaturesSetting$AppState;

    invoke-direct {p0, v1, v4}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;I)V

    .line 1396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save voicemail #: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1399
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1b
.end method

.method private initCFUIState()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1852
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f090089

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 1853
    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mDialingNumCFU:Ljava/lang/String;

    .line 1854
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOperatorCode:Ljava/lang/String;

    const-string v1, "RGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1857
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f09008d

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 1858
    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mDialingNumCFB:Ljava/lang/String;

    .line 1860
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f090091

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 1861
    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mDialingNumCFNRy:Ljava/lang/String;

    .line 1863
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f090095

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 1864
    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mDialingNumCFNRc:Ljava/lang/String;

    .line 1867
    :cond_34
    return-void
.end method

.method private initCWState()V
    .registers 3

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCW:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1639
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 2871
    const-string v0, "call features settings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    return-void
.end method

.method private queryAllCFOptions()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1894
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->initCFUIState()V

    .line 1899
    const-string v0, "*#21#"

    .line 1901
    .local v0, mmi:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->checkFdn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1913
    :goto_c
    return-void

    .line 1907
    :cond_d
    const-string v1, "queryAllCFOptions: begin querying call features."

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1910
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->mGetAllCFOptionsComplete:Landroid/os/Handler;

    const/16 v3, 0x190

    invoke-static {v2, v3, v4, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_c
.end method

.method private queryMoreOptions()V
    .registers 5

    .prologue
    .line 1918
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->initCWState()V

    .line 1923
    const-string v0, "*#31#"

    .line 1925
    .local v0, mmi:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->checkFdn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1936
    :goto_b
    return-void

    .line 1931
    :cond_c
    const-string v1, "queryMoreOptions: begin querying call features."

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1934
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->mGetMoreOptionsComplete:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    goto :goto_b
.end method

.method private setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;)V
    .registers 4
    .parameter "requestedState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2132
    sget-object v0, Lcom/android/phone/CallFeaturesSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-ne p1, v0, :cond_11

    .line 2134
    const-string v0, "setAppState: illegal error state without reason."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2137
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2141
    :cond_11
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;I)V

    .line 2142
    return-void
.end method

.method private setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;I)V
    .registers 10
    .parameter "requestedState"
    .parameter "msgStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x258

    const/16 v5, 0x1f4

    const/16 v4, 0x64

    const/16 v3, 0x2bc

    const/16 v2, 0x384

    .line 2147
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAppState:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-ne p1, v0, :cond_14

    .line 2149
    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2366
    :goto_13
    return-void

    .line 2158
    :cond_14
    sget-object v0, Lcom/android/phone/CallFeaturesSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-ne p1, v0, :cond_c0

    .line 2160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2163
    sparse-switch p2, :sswitch_data_17a

    .line 2252
    :goto_3b
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting;->mAppState:Lcom/android/phone/CallFeaturesSetting$AppState;

    goto :goto_13

    .line 2166
    :sswitch_3e
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAppState:Lcom/android/phone/CallFeaturesSetting$AppState;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-ne v0, v1, :cond_59

    .line 2167
    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->dismissDialog(I)V

    .line 2174
    :goto_47
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    if-nez v0, :cond_53

    .line 2175
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    .line 2178
    :cond_53
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_3b

    .line 2169
    :cond_59
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->dismissBusyDialog()V

    goto :goto_47

    .line 2187
    :sswitch_5d
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRadioOffErrorDialog:Landroid/app/Dialog;

    if-nez v0, :cond_69

    .line 2188
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRadioOffErrorDialog:Landroid/app/Dialog;

    .line 2191
    :cond_69
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRadioOffErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_3b

    .line 2198
    :sswitch_6f
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAppState:Lcom/android/phone/CallFeaturesSetting$AppState;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-ne v0, v1, :cond_8a

    .line 2199
    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->dismissDialog(I)V

    .line 2206
    :goto_78
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mResponseErrorDialog:Landroid/app/Dialog;

    if-nez v0, :cond_84

    .line 2207
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mResponseErrorDialog:Landroid/app/Dialog;

    .line 2210
    :cond_84
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mResponseErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_3b

    .line 2201
    :cond_8a
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->dismissBusyDialog()V

    goto :goto_78

    .line 2216
    :sswitch_8e
    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->dismissDialog(I)V

    .line 2220
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVmExceptionErrorDialog:Landroid/app/Dialog;

    if-nez v0, :cond_9b

    .line 2221
    invoke-virtual {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVmExceptionErrorDialog:Landroid/app/Dialog;

    .line 2224
    :cond_9b
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVmExceptionErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_3b

    .line 2232
    :sswitch_a1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAppState:Lcom/android/phone/CallFeaturesSetting$AppState;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-ne v0, v1, :cond_bc

    .line 2233
    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->dismissDialog(I)V

    .line 2238
    :goto_aa
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    if-nez v0, :cond_b6

    .line 2239
    const/16 v0, 0x2774

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    .line 2242
    :cond_b6
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_3b

    .line 2235
    :cond_bc
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->dismissBusyDialog()V

    goto :goto_aa

    .line 2257
    :cond_c0
    sget-object v0, Lcom/android/phone/CallFeaturesSetting$7;->$SwitchMap$com$android$phone$CallFeaturesSetting$AppState:[I

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mAppState:Lcom/android/phone/CallFeaturesSetting$AppState;

    invoke-virtual {v1}, Lcom/android/phone/CallFeaturesSetting$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_190

    .line 2365
    :cond_cd
    :goto_cd
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting;->mAppState:Lcom/android/phone/CallFeaturesSetting$AppState;

    goto/16 :goto_13

    .line 2262
    :pswitch_d1
    sget-object v0, Lcom/android/phone/CallFeaturesSetting$AppState;->INPUT_READY:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-eq p1, v0, :cond_cd

    .line 2264
    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2267
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2276
    :pswitch_e2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: displaying busy dialog, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2280
    sget-object v0, Lcom/android/phone/CallFeaturesSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-ne p1, v0, :cond_100

    .line 2281
    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    goto :goto_cd

    .line 2282
    :cond_100
    sget-object v0, Lcom/android/phone/CallFeaturesSetting$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-ne p1, v0, :cond_108

    .line 2283
    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    goto :goto_cd

    .line 2284
    :cond_108
    sget-object v0, Lcom/android/phone/CallFeaturesSetting$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-ne p1, v0, :cond_cd

    .line 2286
    const-string v0, "setAppState: illegal transition from INPUT_READY"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2289
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INPUT_READY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2297
    :pswitch_119
    sget-object v0, Lcom/android/phone/CallFeaturesSetting$AppState;->INPUT_READY:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-ne p1, v0, :cond_125

    .line 2298
    if-ne p2, v3, :cond_cd

    .line 2299
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    goto :goto_cd

    .line 2302
    :cond_125
    if-ne p2, v5, :cond_12b

    .line 2303
    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    goto :goto_cd

    .line 2305
    :cond_12b
    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    goto :goto_cd

    .line 2314
    :pswitch_12f
    sget-object v0, Lcom/android/phone/CallFeaturesSetting$AppState;->INPUT_READY:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-eq p1, v0, :cond_140

    .line 2316
    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2319
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2323
    :cond_140
    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->dismissDialog(I)V

    goto :goto_cd

    .line 2329
    :pswitch_144
    sget-object v0, Lcom/android/phone/CallFeaturesSetting$AppState;->INPUT_READY:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-eq p1, v0, :cond_155

    .line 2331
    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2335
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2339
    :cond_155
    if-ne p2, v6, :cond_15f

    .line 2340
    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->dismissDialog(I)V

    .line 2341
    invoke-virtual {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->showDialog(I)V

    goto/16 :goto_cd

    .line 2343
    :cond_15f
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->dismissBusyDialog()V

    goto/16 :goto_cd

    .line 2350
    :pswitch_164
    sget-object v0, Lcom/android/phone/CallFeaturesSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-eq p1, v0, :cond_175

    .line 2352
    const-string v0, "setAppState: illegal transition from WAITING_NUMBER_SELECT"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2356
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from WAITING_NUMBER_SELECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2360
    :cond_175
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->dismissBusyDialog()V

    goto/16 :goto_cd

    .line 2163
    :sswitch_data_17a
    .sparse-switch
        0xc8 -> :sswitch_3e
        0x12c -> :sswitch_6f
        0x190 -> :sswitch_8e
        0x320 -> :sswitch_5d
        0x2774 -> :sswitch_a1
    .end sparse-switch

    .line 2257
    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_e2
        :pswitch_119
        :pswitch_12f
        :pswitch_144
        :pswitch_164
    .end packed-switch
.end method

.method private setButtonALSValue(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 1750
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonALS:Landroid/preference/ListPreference;

    if-nez v1, :cond_5

    .line 1773
    :goto_4
    return-void

    .line 1755
    :cond_5
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonALS:Landroid/preference/ListPreference;

    invoke-virtual {v1, p1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1758
    const v0, 0x7f0900de

    .line 1760
    .local v0, summary:I
    packed-switch p1, :pswitch_data_1e

    .line 1772
    :goto_10
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonALS:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_4

    .line 1762
    :pswitch_16
    const v0, 0x7f0900de

    .line 1764
    goto :goto_10

    .line 1767
    :pswitch_1a
    const v0, 0x7f0900df

    goto :goto_10

    .line 1760
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1a
    .end packed-switch
.end method

.method private setButtonCLIRValue(I)V
    .registers 6
    .parameter "value"

    .prologue
    .line 1718
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCLIR:Landroid/preference/ListPreference;

    if-nez v1, :cond_5

    .line 1746
    :goto_4
    return-void

    .line 1721
    :cond_5
    const-string v1, "call features settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCLIR:Landroid/preference/ListPreference;

    invoke-virtual {v1, p1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1726
    const v0, 0x7f09007f

    .line 1728
    .local v0, summary:I
    packed-switch p1, :pswitch_data_3a

    .line 1745
    :goto_28
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCLIR:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(I)V

    goto :goto_4

    .line 1730
    :pswitch_2e
    const v0, 0x7f09007e

    .line 1732
    goto :goto_28

    .line 1735
    :pswitch_32
    const v0, 0x7f09007d

    .line 1737
    goto :goto_28

    .line 1740
    :pswitch_36
    const v0, 0x7f09007f

    goto :goto_28

    .line 1728
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_36
        :pswitch_32
        :pswitch_2e
    .end packed-switch
.end method

.method public static setHandler(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 1
    .parameter "target"

    .prologue
    .line 793
    sput-object p0, Lcom/android/phone/CallFeaturesSetting;->mCFS:Lcom/android/phone/CallFeaturesSetting;

    .line 794
    return-void
.end method

.method private syncALSUIState(I)V
    .registers 5
    .parameter "line"

    .prologue
    .line 1588
    const-string v1, "syncALSUIState: Setting UI state consistent with ALS."

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1591
    const/4 v1, 0x2

    if-ne p1, v1, :cond_f

    .line 1592
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonALS:Landroid/preference/ListPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1613
    :goto_e
    return-void

    .line 1594
    :cond_f
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonALS:Landroid/preference/ListPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1597
    const/4 v0, 0x0

    .line 1599
    .local v0, value:I
    packed-switch p1, :pswitch_data_22

    .line 1611
    :goto_19
    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->setButtonALSValue(I)V

    goto :goto_e

    .line 1601
    :pswitch_1d
    const/4 v0, 0x0

    .line 1603
    goto :goto_19

    .line 1606
    :pswitch_1f
    const/4 v0, 0x1

    goto :goto_19

    .line 1599
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1f
    .end packed-switch
.end method

.method private syncCFUIState(ILcom/android/internal/telephony/CallForwardInfo;)V
    .registers 7
    .parameter "reason"
    .parameter "info"

    .prologue
    const/4 v2, 0x1

    .line 1802
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v1, v2, :cond_a

    move v0, v2

    .line 1804
    .local v0, active:Z
    :goto_6
    packed-switch p1, :pswitch_data_34

    .line 1848
    :goto_9
    return-void

    .line 1802
    .end local v0           #active:Z
    :cond_a
    const/4 v1, 0x0

    move v0, v1

    goto :goto_6

    .line 1809
    .restart local v0       #active:Z
    :pswitch_d
    const-string v1, "syncCFUIState: Setting UI state consistent with CFU."

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1812
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    const v2, 0x7f090089

    iget-object v3, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/phone/CallFeaturesSetting;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 1814
    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mDialingNumCFU:Ljava/lang/String;

    goto :goto_9

    .line 1821
    :pswitch_21
    const-string v1, "syncCFUIState: Setting UI state consistent with CFB."

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 1831
    :pswitch_27
    const-string v1, "syncCFUIState: Setting UI state consistent with CFNRy."

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 1841
    :pswitch_2d
    const-string v1, "syncCFUIState: Setting UI state consistent with CFNRc."

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 1804
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_d
        :pswitch_21
        :pswitch_27
        :pswitch_2d
    .end packed-switch
.end method

.method private syncCLIRUIState([I)V
    .registers 9
    .parameter "clirArgs"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1651
    const-string v3, "syncCLIRUIState: Setting UI state consistent with CLIR."

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1655
    aget v3, p1, v5

    if-eq v3, v5, :cond_15

    aget v3, p1, v5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_15

    aget v3, p1, v5

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3b

    :cond_15
    move v1, v5

    .line 1657
    .local v1, enabled:Z
    :goto_16
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCLIR:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1661
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCLIRSettingValue()I

    move-result v0

    .line 1666
    .local v0, clir_setting_value:I
    const/4 v2, 0x0

    .line 1668
    .local v2, value:I
    aget v3, p1, v5

    packed-switch v3, :pswitch_data_46

    .line 1700
    :pswitch_27
    const/4 v2, 0x0

    .line 1704
    aget v3, p1, v6

    if-eq v3, v5, :cond_31

    aget v3, p1, v6

    const/4 v4, 0x2

    if-ne v3, v4, :cond_37

    .line 1705
    :cond_31
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 1711
    :cond_37
    :goto_37
    invoke-direct {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->setButtonCLIRValue(I)V

    .line 1712
    return-void

    .end local v0           #clir_setting_value:I
    .end local v1           #enabled:Z
    .end local v2           #value:I
    :cond_3b
    move v1, v6

    .line 1655
    goto :goto_16

    .line 1676
    .restart local v0       #clir_setting_value:I
    .restart local v1       #enabled:Z
    .restart local v2       #value:I
    :pswitch_3d
    packed-switch v0, :pswitch_data_52

    .line 1690
    const/4 v2, 0x0

    .line 1692
    goto :goto_37

    .line 1679
    :pswitch_42
    const/4 v2, 0x1

    .line 1681
    goto :goto_37

    .line 1684
    :pswitch_44
    const/4 v2, 0x2

    .line 1686
    goto :goto_37

    .line 1668
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_27
        :pswitch_3d
        :pswitch_3d
    .end packed-switch

    .line 1676
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_42
        :pswitch_44
    .end packed-switch
.end method

.method private syncCWState([I)V
    .registers 8
    .parameter "cwArray"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncCWState: Setting UI state consistent with CW enable state of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p1, v5

    if-ne v2, v4, :cond_5a

    const-string v2, "ENABLED"

    :goto_13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1627
    const-string v1, "nodebug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CFS>syncCWState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    aget v1, p1, v5

    if-ne v1, v4, :cond_5d

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getCurrentVoiceClass()I

    move-result v1

    aget v2, p1, v4

    and-int/2addr v1, v2

    if-eqz v1, :cond_5d

    move v0, v4

    .line 1631
    .local v0, active:Z
    :goto_54
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1634
    return-void

    .line 1620
    .end local v0           #active:Z
    :cond_5a
    const-string v2, "DISABLED"

    goto :goto_13

    :cond_5d
    move v0, v5

    .line 1629
    goto :goto_54
.end method

.method private updateVoiceNumberField()V
    .registers 3

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-nez v0, :cond_5

    .line 1889
    :goto_4
    return-void

    .line 1877
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1879
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 1880
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1885
    :cond_15
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1886
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method


# virtual methods
.method buildMmiSetCF(IIILjava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "action"
    .parameter "reason"
    .parameter "time"
    .parameter "number"

    .prologue
    const/4 v7, 0x3

    const-string v8, "*"

    const-string v6, "#"

    .line 1136
    const/4 v3, 0x0

    .line 1137
    .local v3, mmi:Ljava/lang/String;
    const-string v0, "#"

    .line 1138
    .local v0, activate:Ljava/lang/String;
    const-string v2, ""

    .line 1142
    .local v2, dialNumber:Ljava/lang/String;
    const-string v1, ""

    .line 1145
    .local v1, bs:Ljava/lang/String;
    if-ne p1, v7, :cond_27

    .line 1146
    const-string v0, "**"

    .line 1147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1150
    :cond_27
    if-nez p2, :cond_63

    .line 1151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "21"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1160
    :cond_4a
    :goto_4a
    const-string v4, "nodebug"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CFS>buildMmiSetCF: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    return-object v3

    .line 1152
    :cond_63
    const/4 v4, 0x1

    if-ne p2, v4, :cond_88

    .line 1153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "67"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4a

    .line 1154
    :cond_88
    const/4 v4, 0x2

    if-ne p2, v4, :cond_b7

    .line 1155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "61"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4a

    .line 1156
    :cond_b7
    if-ne p2, v7, :cond_4a

    .line 1157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "62"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4a
.end method

.method checkFdn(Ljava/lang/String;)Z
    .registers 4
    .parameter "mmi"

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->checkFdn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 954
    const/4 v0, 0x1

    .line 961
    :goto_9
    return v0

    .line 957
    :cond_a
    sget-object v0, Lcom/android/phone/CallFeaturesSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CallFeaturesSetting$AppState;

    const/16 v1, 0x2774

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;I)V

    .line 959
    const-string v0, "nodebug"

    const-string v1, "CFS>FDNblocked"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 1242
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAppState:Lcom/android/phone/CallFeaturesSetting$AppState;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-eq v0, v1, :cond_d

    .line 1244
    const-string v0, "onActivityResult: wrong state, ignoring message from contact picker."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1305
    :goto_c
    :pswitch_c
    return-void

    .line 1250
    :cond_d
    sget-object v0, Lcom/android/phone/CallFeaturesSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CallFeaturesSetting$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;)V

    .line 1253
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1b

    .line 1255
    const-string v0, "onActivityResult: contact picker result not OK."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_c

    .line 1261
    :cond_1b
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1265
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_33

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_39

    .line 1267
    :cond_33
    const-string v0, "onActivityResult: bad contact data, no results found."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_c

    .line 1273
    :cond_39
    packed-switch p1, :pswitch_data_48

    goto :goto_c

    .line 1276
    :pswitch_3d
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_c

    .line 1273
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2072
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2074
    packed-switch p2, :pswitch_data_14

    .line 2090
    :pswitch_6
    sget-object v0, Lcom/android/phone/CallFeaturesSetting$AppState;->INPUT_READY:Lcom/android/phone/CallFeaturesSetting$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;)V

    .line 2094
    :goto_b
    return-void

    .line 2077
    :pswitch_c
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->dismissExpandedDialog()V

    goto :goto_b

    .line 2083
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->finish()V

    goto :goto_b

    .line 2074
    :pswitch_data_14
    .packed-switch -0x3
        :pswitch_c
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    const-string v9, "button_cfu_key"

    const-string v6, "CSP Call FS"

    const-string v7, "call features settings"

    .line 2399
    const-string v3, "onCreate()..."

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2402
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2403
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mOperatorCode:Ljava/lang/String;

    .line 2406
    const-string v3, "call features settings"

    const-string v3, "1"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2410
    sget-object v3, Lcom/android/phone/CallFeaturesSetting$AppState;->INPUT_READY:Lcom/android/phone/CallFeaturesSetting$AppState;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mAppState:Lcom/android/phone/CallFeaturesSetting$AppState;

    .line 2412
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mOperatorCode:Ljava/lang/String;

    const-string v4, "KTF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_429

    .line 2414
    const v3, 0x7f05000b

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    .line 2422
    :goto_37
    const-string v3, "call features settings"

    const-string v3, "2"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 2424
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const-string v3, "button_clir_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCLIR:Landroid/preference/ListPreference;

    .line 2425
    const-string v3, "button_cw_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCW:Landroid/preference/CheckBoxPreference;

    .line 2426
    const-string v3, "button_cfu_key"

    invoke-virtual {v2, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    .line 2427
    const-string v3, "call features settings"

    const-string v3, "3"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    const-string v3, "button_cfb_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    .line 2430
    const-string v3, "button_cfnry_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    .line 2431
    const-string v3, "button_cfnrc_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    .line 2436
    const-string v3, "button_voicemail_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    .line 2438
    const-string v3, "call features settings"

    const-string v3, "4"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    const-string v3, "button_fdn_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuFDNSettings:Landroid/preference/PreferenceScreen;

    .line 2442
    const-string v3, "call features settings"

    const-string v3, "5"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    const-string v3, "button_cf_expand_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFExpand:Landroid/preference/PreferenceScreen;

    .line 2448
    const-string v3, "call features settings"

    const-string v3, "6"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    const-string v3, "button_more_expand_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonMoreExpand:Landroid/preference/PreferenceScreen;

    .line 2450
    const-string v3, "call features settings"

    const-string v3, "7"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    const-string v3, "button_cb_expand_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCBExpand:Landroid/preference/PreferenceScreen;

    .line 2453
    const-string v3, "call features settings"

    const-string v3, "8"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    const-string v3, "button_cc_expand_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCCExpand:Landroid/preference/PreferenceScreen;

    .line 2455
    const-string v3, "call features settings"

    const-string v3, "9"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    const-string v3, "button_cd_expand_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCDExpand:Landroid/preference/PreferenceScreen;

    .line 2460
    const-string v3, "call features settings"

    const-string v3, "10"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2463
    const-string v3, "button_als_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonALS:Landroid/preference/ListPreference;

    .line 2464
    const-string v3, "call features settings"

    const-string v3, "11"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    const-string v3, "button_clarity_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonVC:Landroid/preference/CheckBoxPreference;

    .line 2468
    const-string v3, "call features settings"

    const-string v3, "12"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v3, :cond_13c

    .line 2479
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3, p0, v8, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 2481
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 2482
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    const v4, 0x7f090084

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 2483
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    const v4, 0x7f090087

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 2485
    :cond_13c
    const-string v3, "call features settings"

    const-string v3, "13"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mOperatorCode:Ljava/lang/String;

    const-string v4, "RGS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1be

    .line 2488
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v3, :cond_172

    .line 2489
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3, p0, v5, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 2490
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 2491
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    const-string v4, "button_cfu_key"

    invoke-virtual {v3, v9}, Lcom/android/phone/EditPhoneNumberPreference;->setDependency(Ljava/lang/String;)V

    .line 2492
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    const v4, 0x7f090084

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 2493
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    const v4, 0x7f09008c

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 2496
    :cond_172
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v3, :cond_198

    .line 2497
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v4, 0x2

    invoke-virtual {v3, p0, v4, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 2498
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 2499
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    const-string v4, "button_cfu_key"

    invoke-virtual {v3, v9}, Lcom/android/phone/EditPhoneNumberPreference;->setDependency(Ljava/lang/String;)V

    .line 2500
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    const v4, 0x7f090084

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 2501
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    const v4, 0x7f090090

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 2504
    :cond_198
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v3, :cond_1be

    .line 2505
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v4, 0x3

    invoke-virtual {v3, p0, v4, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 2506
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 2507
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    const-string v4, "button_cfu_key"

    invoke-virtual {v3, v9}, Lcom/android/phone/EditPhoneNumberPreference;->setDependency(Ljava/lang/String;)V

    .line 2508
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    const v4, 0x7f090084

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 2509
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    const v4, 0x7f090094

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogMessage(I)V

    .line 2513
    :cond_1be
    const-string v3, "call features settings"

    const-string v3, "14"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v3, :cond_1f5

    .line 2517
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v4, 0x4

    invoke-virtual {v3, p0, v4, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 2519
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 2520
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v4, 0x7f0901a6

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogTitle(I)V

    .line 2522
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3, v8}, Lcom/android/phone/EditPhoneNumberPreference;->setEnabled(Z)V

    .line 2523
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3, v8}, Lcom/android/phone/EditPhoneNumberPreference;->setShouldDisableView(Z)V

    .line 2524
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2525
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v4, 0x7f0901a6

    invoke-virtual {v3, v4}, Lcom/android/phone/EditPhoneNumberPreference;->setTitle(I)V

    .line 2530
    :cond_1f5
    const-string v3, "call features settings"

    const-string v3, "15"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCLIR:Landroid/preference/ListPreference;

    if-eqz v3, :cond_205

    .line 2534
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCLIR:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2537
    :cond_205
    const-string v3, "call features settings"

    const-string v3, "16"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonALS:Landroid/preference/ListPreference;

    if-eqz v3, :cond_21e

    .line 2541
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonALS:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2543
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getALSSettingValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->syncALSUIState(I)V

    .line 2548
    :cond_21e
    const-string v3, "call features settings"

    const-string v3, "17"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonVC:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_234

    .line 2553
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonVC:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getVoiceClarityInfo()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2556
    :cond_234
    const-string v3, "call features settings"

    const-string v3, "18"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mContactListIntent:Landroid/content/Intent;

    .line 2562
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mContactListIntent:Landroid/content/Intent;

    const-string v4, "vnd.android.cursor.item/phone"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2563
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mOperatorCode:Ljava/lang/String;

    const-string v4, "RGS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a6

    .line 2566
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mFDNSettingIntent:Landroid/content/Intent;

    .line 2567
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mFDNSettingIntent:Landroid/content/Intent;

    const-class v4, Lcom/android/phone/FdnSetting;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2568
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuFDNSettings:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mFDNSettingIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 2574
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mCCSettingIntent:Landroid/content/Intent;

    .line 2575
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mCCSettingIntent:Landroid/content/Intent;

    const-class v4, Lcom/android/phone/CallCostsSetting;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2576
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCCExpand:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mCCSettingIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 2578
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mCBSettingIntent:Landroid/content/Intent;

    .line 2579
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mCBSettingIntent:Landroid/content/Intent;

    const-class v4, Lcom/android/phone/CallBarringSetting;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2580
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCBExpand:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mCBSettingIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 2584
    :cond_2a6
    const-string v3, "call features settings"

    const-string v3, "19"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mCDSettingIntent:Landroid/content/Intent;

    .line 2588
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mCDSettingIntent:Landroid/content/Intent;

    const-class v4, Lcom/android/phone/CallDurationSetting;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2589
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCDExpand:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mCDSettingIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 2591
    const-string v3, "call features settings"

    const-string v3, "20"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    :try_start_2cf
    const-string v3, "persist.cust.tel.adapt"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2e1

    const-string v3, "persist.cust.tel.efcsp.plmn"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_307

    .line 2607
    :cond_2e1
    const-string v3, "CSP Call FS"

    const-string v4, "use_csp_plmn is 1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_307

    .line 2610
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCspPlmnStatus()I

    move-result v1

    .line 2612
    .local v1, plmnStatus:I
    if-ne v1, v5, :cond_431

    .line 2617
    const-string v3, "CSP Call FS"

    const-string v4, "CSP PLMN bit is set,Enabling Network Operators menu"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    const-string v3, "button_carrier_sel_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_307
    .catch Ljava/lang/Exception; {:try_start_2cf .. :try_end_307} :catch_446

    .line 2634
    .end local v1           #plmnStatus:I
    :cond_307
    :goto_307
    const-string v3, "call features settings"

    const-string v3, "21"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->setHandler(Lcom/android/phone/CallFeaturesSetting;)V

    .line 2640
    if-eqz p1, :cond_481

    .line 2642
    const-string v3, "onCreate() with bundle..."

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2647
    const-string v3, "summary_cfu_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mDialingNumCFU:Ljava/lang/String;

    .line 2648
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mOperatorCode:Ljava/lang/String;

    const-string v4, "RGS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_342

    .line 2650
    const-string v3, "summary_cfb_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mDialingNumCFB:Ljava/lang/String;

    .line 2651
    const-string v3, "summary_cfnry_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mDialingNumCFNRy:Ljava/lang/String;

    .line 2652
    const-string v3, "summary_cfnrc_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mDialingNumCFNRc:Ljava/lang/String;

    .line 2656
    :cond_342
    const-string v3, "call features settings"

    const-string v3, "22"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v3, :cond_35d

    .line 2660
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    const-string v4, "button_cfu_key"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const v5, 0x7f090089

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mDialingNumCFU:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/phone/CallFeaturesSetting;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 2664
    :cond_35d
    const-string v3, "call features settings"

    const-string v3, "23"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mOperatorCode:Ljava/lang/String;

    const-string v4, "RGS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3aa

    .line 2667
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v3, :cond_382

    .line 2668
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    const-string v4, "button_cfb_key"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const v5, 0x7f09008d

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mDialingNumCFB:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/phone/CallFeaturesSetting;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 2670
    :cond_382
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v3, :cond_396

    .line 2671
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    const-string v4, "button_cfnry_key"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const v5, 0x7f090091

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mDialingNumCFNRy:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/phone/CallFeaturesSetting;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 2673
    :cond_396
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v3, :cond_3aa

    .line 2674
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    const-string v4, "button_cfnrc_key"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const v5, 0x7f090095

    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mDialingNumCFNRc:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/phone/CallFeaturesSetting;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 2678
    :cond_3aa
    const-string v3, "call features settings"

    const-string v3, "24"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCLIR:Landroid/preference/ListPreference;

    if-eqz v3, :cond_3c1

    .line 2684
    const-string v3, "button_clir_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_46b

    .line 2685
    invoke-direct {p0, v8}, Lcom/android/phone/CallFeaturesSetting;->setButtonCLIRValue(I)V

    .line 2692
    :cond_3c1
    :goto_3c1
    const-string v3, "call features settings"

    const-string v3, "25"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCW:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3d7

    .line 2695
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCW:Landroid/preference/CheckBoxPreference;

    const-string v4, "button_cw_key"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2698
    :cond_3d7
    const-string v3, "call features settings"

    const-string v3, "26"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonALS:Landroid/preference/ListPreference;

    if-eqz v3, :cond_3ee

    .line 2702
    const-string v3, "button_als_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_476

    .line 2703
    invoke-direct {p0, v8}, Lcom/android/phone/CallFeaturesSetting;->setButtonALSValue(I)V

    .line 2710
    :cond_3ee
    :goto_3ee
    const-string v3, "call features settings"

    const-string v3, "27"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    const-string v3, "app_state_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallFeaturesSetting$AppState;

    iput-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mAppState:Lcom/android/phone/CallFeaturesSetting$AppState;

    .line 2716
    const-string v3, "button_cf_expand_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->mCFDataStale:Z

    .line 2717
    const-string v3, "button_more_expand_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->mMoreDataStale:Z

    .line 2718
    const-string v3, "display_mode_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/phone/CallFeaturesSetting;->mDisplayMode:I

    .line 2719
    const-string v3, "call features settings"

    const-string v3, "28"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    :goto_41e
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 2737
    const-string v3, "call features settings"

    const-string v3, "30"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    return-void

    .line 2418
    .end local v2           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_429
    const v3, 0x7f050003

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->addPreferencesFromResource(I)V

    goto/16 :goto_37

    .line 2620
    .restart local v1       #plmnStatus:I
    .restart local v2       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_431
    if-nez v1, :cond_462

    .line 2621
    :try_start_433
    const-string v3, "CSP Call FS"

    const-string v4, "CSP PLMN bit is not set,Disabling Network Operators menu"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    const-string v3, "button_carrier_sel_key"

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_444
    .catch Ljava/lang/Exception; {:try_start_433 .. :try_end_444} :catch_446

    goto/16 :goto_307

    .line 2630
    .end local v1           #plmnStatus:I
    :catch_446
    move-exception v3

    move-object v0, v3

    .line 2631
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "CSP Call FS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in reading use_csp_plmn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_307

    .line 2626
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #plmnStatus:I
    :cond_462
    :try_start_462
    const-string v3, "CSP Call FS"

    const-string v4, "Undefined Csp PLMN Status"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_469
    .catch Ljava/lang/Exception; {:try_start_462 .. :try_end_469} :catch_446

    goto/16 :goto_307

    .line 2687
    .end local v1           #plmnStatus:I
    :cond_46b
    const-string v3, "button_clir_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->setButtonCLIRValue(I)V

    goto/16 :goto_3c1

    .line 2705
    :cond_476
    const-string v3, "button_als_key"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->setButtonALSValue(I)V

    goto/16 :goto_3ee

    .line 2723
    :cond_481
    iput-boolean v5, p0, Lcom/android/phone/CallFeaturesSetting;->mCFDataStale:Z

    .line 2724
    iput-boolean v5, p0, Lcom/android/phone/CallFeaturesSetting;->mMoreDataStale:Z

    .line 2728
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49f

    .line 2729
    sget-object v3, Lcom/android/phone/CallFeaturesSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CallFeaturesSetting$AppState;

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;)V

    .line 2730
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v3}, Lcom/android/phone/EditPhoneNumberPreference;->showPhoneNumberDialog()V

    .line 2732
    :cond_49f
    const-string v3, "call features settings"

    const-string v3, "29"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41e
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 12
    .parameter "id"

    .prologue
    const/16 v9, 0x258

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f0900d9

    .line 1941
    const/16 v4, 0x64

    if-eq p1, v4, :cond_14

    const/16 v4, 0x2bc

    if-eq p1, v4, :cond_14

    const/16 v4, 0x384

    if-ne p1, v4, :cond_67

    .line 1943
    :cond_14
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1944
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v4, 0x7f0900d1

    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1945
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1947
    sparse-switch p1, :sswitch_data_e4

    .line 1972
    :goto_29
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->addFlags(I)V

    move-object v4, v1

    .line 2064
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :goto_31
    return-object v4

    .line 1949
    .restart local v1       #dialog:Landroid/app/ProgressDialog;
    :sswitch_32
    iput-boolean v7, p0, Lcom/android/phone/CallFeaturesSetting;->mIsBusyDialogAvailable:Z

    .line 1950
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1951
    const v4, 0x7f0900d4

    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_29

    .line 1956
    :sswitch_42
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1957
    const v4, 0x7f0900e0

    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_29

    .line 1963
    :sswitch_50
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1964
    sget-object v4, Lcom/android/phone/CallFeaturesSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    .line 1966
    const v4, 0x7f0900d3

    invoke-virtual {p0, v4}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_29

    .line 1982
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_67
    const/16 v4, 0x12c

    if-eq p1, v4, :cond_81

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_81

    const/16 v4, 0x1f4

    if-eq p1, v4, :cond_81

    const/16 v4, 0x190

    if-eq p1, v4, :cond_81

    if-eq p1, v9, :cond_81

    const/16 v4, 0x320

    if-eq p1, v4, :cond_81

    const/16 v4, 0x2774

    if-ne p1, v4, :cond_e0

    .line 1987
    :cond_81
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1990
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0900d2

    .line 1992
    .local v3, titleId:I
    sparse-switch p1, :sswitch_data_f2

    .line 2043
    const v2, 0x7f0900d6

    .line 2046
    .local v2, msgId:I
    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2051
    :goto_92
    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2052
    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2053
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2055
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2058
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/Window;->addFlags(I)V

    move-object v4, v1

    .line 2061
    goto :goto_31

    .line 1994
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #msgId:I
    :sswitch_b0
    const v2, 0x7f0900e1

    .line 1995
    .restart local v2       #msgId:I
    const v3, 0x7f090073

    .line 1997
    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_92

    .line 2004
    .end local v2           #msgId:I
    :sswitch_ba
    const v2, 0x7f0900e3

    .line 2005
    .restart local v2       #msgId:I
    const v3, 0x7f090073

    .line 2007
    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_92

    .line 2012
    .end local v2           #msgId:I
    :sswitch_c4
    const v2, 0x7f0900e2

    .line 2014
    .restart local v2       #msgId:I
    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_92

    .line 2019
    .end local v2           #msgId:I
    :sswitch_cb
    const v2, 0x7f0900d5

    .line 2022
    .restart local v2       #msgId:I
    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_92

    .line 2027
    .end local v2           #msgId:I
    :sswitch_d2
    const v2, 0x7f0900d8

    .line 2029
    .restart local v2       #msgId:I
    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_92

    .line 2035
    .end local v2           #msgId:I
    :sswitch_d9
    const v2, 0x7f0901ed

    .line 2037
    .restart local v2       #msgId:I
    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_92

    .line 2064
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v2           #msgId:I
    .end local v3           #titleId:I
    :cond_e0
    const/4 v4, 0x0

    goto/16 :goto_31

    .line 1947
    nop

    :sswitch_data_e4
    .sparse-switch
        0x64 -> :sswitch_32
        0x2bc -> :sswitch_42
        0x384 -> :sswitch_50
    .end sparse-switch

    .line 1992
    :sswitch_data_f2
    .sparse-switch
        0x12c -> :sswitch_cb
        0x190 -> :sswitch_ba
        0x1f4 -> :sswitch_c4
        0x258 -> :sswitch_b0
        0x320 -> :sswitch_d2
        0x2774 -> :sswitch_d9
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 2864
    const-string v0, "onDestroy()..."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2867
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 2868
    return-void
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .registers 12
    .parameter "preference"
    .parameter "buttonClicked"

    .prologue
    .line 1019
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mAppState:Lcom/android/phone/CallFeaturesSetting$AppState;

    sget-object v8, Lcom/android/phone/CallFeaturesSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-eq v7, v8, :cond_c

    .line 1021
    const-string v7, "onPreferenceClick: preference request denied, currently busy."

    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1132
    :cond_b
    :goto_b
    return-void

    .line 1026
    :cond_c
    const/4 v7, -0x2

    if-ne p2, v7, :cond_15

    .line 1028
    sget-object v7, Lcom/android/phone/CallFeaturesSetting$AppState;->INPUT_READY:Lcom/android/phone/CallFeaturesSetting$AppState;

    invoke-direct {p0, v7}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;)V

    goto :goto_b

    .line 1034
    :cond_15
    const-string v7, "onPreferenceClick: request preference click on dialog close."

    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1037
    sget-object v3, Lcom/android/phone/CallFeaturesSetting$AppState;->INPUT_READY:Lcom/android/phone/CallFeaturesSetting$AppState;

    .line 1039
    .local v3, nextState:Lcom/android/phone/CallFeaturesSetting$AppState;
    instance-of v7, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v7, :cond_b

    .line 1040
    move-object v1, p1

    .line 1042
    .local v1, epn:Lcom/android/phone/EditPhoneNumberPreference;
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v1, v7, :cond_29

    .line 1043
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->handleVMBtnClickRequest()V

    goto :goto_b

    .line 1045
    :cond_29
    const/4 v5, 0x0

    .line 1046
    .local v5, reason:I
    const/4 v6, 0x0

    .line 1047
    .local v6, time:I
    const-string v4, ""

    .line 1051
    .local v4, number:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v7

    if-nez v7, :cond_36

    const/4 v7, -0x1

    if-ne p2, v7, :cond_5b

    :cond_36
    const/4 v7, 0x3

    move v0, v7

    .line 1058
    .local v0, action:I
    :goto_38
    invoke-virtual {v1}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1061
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne v1, v7, :cond_49

    .line 1062
    sget-object v3, Lcom/android/phone/CallFeaturesSetting$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CallFeaturesSetting$AppState;

    .line 1063
    const/4 v5, 0x0

    .line 1064
    iput-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mDialingNumCFU:Ljava/lang/String;

    .line 1113
    :cond_49
    sget-object v7, Lcom/android/phone/CallFeaturesSetting$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-ne v3, v7, :cond_61

    .line 1115
    invoke-virtual {p0, v0, v5, v6, v4}, Lcom/android/phone/CallFeaturesSetting;->buildMmiSetCF(IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1117
    .local v2, mmi:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->checkFdn(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5e

    .line 1118
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/phone/CallFeaturesSetting;->mCFDataStale:Z

    goto :goto_b

    .line 1051
    .end local v0           #action:I
    .end local v2           #mmi:Ljava/lang/String;
    :cond_5b
    const/4 v7, 0x0

    move v0, v7

    goto :goto_38

    .line 1124
    .restart local v0       #action:I
    .restart local v2       #mmi:Ljava/lang/String;
    :cond_5e
    invoke-direct {p0, v0, v5, v6, v4}, Lcom/android/phone/CallFeaturesSetting;->handleCFBtnClickRequest(IIILjava/lang/String;)V

    .line 1127
    .end local v2           #mmi:Ljava/lang/String;
    :cond_61
    sget-object v7, Lcom/android/phone/CallFeaturesSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-eq v3, v7, :cond_b

    .line 1128
    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;)V

    goto :goto_b
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .registers 6
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 1173
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v2, :cond_f

    .line 1177
    const-string v2, "updating default for voicemail dialog"

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1180
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    move-object v2, v3

    .line 1206
    :goto_e
    return-object v2

    .line 1186
    :cond_f
    invoke-virtual {p1}, Lcom/android/phone/EditPhoneNumberPreference;->getRealPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 1188
    .local v0, oldNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    move-object v2, v0

    .line 1189
    goto :goto_e

    .line 1193
    :cond_1b
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 1195
    .local v1, vmDisplay:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2b

    move-object v2, v3

    .line 1198
    goto :goto_e

    .line 1203
    :cond_2b
    const-string v2, "updating default for call forwarding dialogs"

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    move-object v2, v1

    .line 1206
    goto :goto_e
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 2856
    const-string v0, "onPause()..."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2859
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 2860
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x1

    .line 924
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCLIR:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2e

    .line 926
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 927
    sget-object v0, Lcom/android/phone/CallFeaturesSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CallFeaturesSetting$AppState;

    const/16 v1, 0x2774

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;I)V

    .line 928
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mMoreDataStale:Z

    move v0, v2

    .line 948
    .end local p2
    :goto_1b
    return v0

    .line 936
    .restart local p2
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCLIR:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->handleCLIRClickRequest(I)V

    .line 938
    sget-object v0, Lcom/android/phone/CallFeaturesSetting$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CallFeaturesSetting$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;)V

    :cond_2c
    :goto_2c
    move v0, v2

    .line 948
    goto :goto_1b

    .line 941
    .restart local p2
    :cond_2e
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonALS:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2c

    .line 942
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonALS:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->handleALSClickRequest(I)V

    goto :goto_2c
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "#"

    .line 806
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mAppState:Lcom/android/phone/CallFeaturesSetting$AppState;

    sget-object v4, Lcom/android/phone/CallFeaturesSetting$AppState;->INPUT_READY:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-eq v3, v4, :cond_11

    .line 808
    const-string v3, "onPreferencesHierarchyClick: preference request denied, currently busy."

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    move v3, v5

    .line 912
    :goto_10
    return v3

    .line 816
    :cond_11
    const-string v3, "onPreferencesHierarchyClick: request preference click."

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 819
    sget-object v2, Lcom/android/phone/CallFeaturesSetting$AppState;->INPUT_READY:Lcom/android/phone/CallFeaturesSetting$AppState;

    .line 821
    .local v2, nextState:Lcom/android/phone/CallFeaturesSetting$AppState;
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCW:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_94

    .line 823
    const-string v0, ""

    .line 825
    .local v0, bs:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mFlexOperatorCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_46

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mFlexOperatorCode:Ljava/lang/String;

    const-string v4, "RGS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mFlexOperatorCode:Ljava/lang/String;

    const-string v4, "KTF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_46

    .line 827
    :cond_3a
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCurrentVoiceClass()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_77

    const-string v3, "*89"

    move-object v0, v3

    .line 831
    :cond_46
    :goto_46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7b

    const-string v4, "*"

    :goto_55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "43"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 835
    .local v1, mmi:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->checkFdn(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7f

    .line 836
    iput-boolean v6, p0, Lcom/android/phone/CallFeaturesSetting;->mMoreDataStale:Z

    move v3, v6

    .line 838
    goto :goto_10

    .line 827
    .end local v1           #mmi:Ljava/lang/String;
    :cond_77
    const-string v3, "*11"

    move-object v0, v3

    goto :goto_46

    .line 831
    :cond_7b
    const-string v4, "#"

    move-object v4, v7

    goto :goto_55

    .line 842
    .restart local v1       #mmi:Ljava/lang/String;
    :cond_7f
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->handleCWClickRequest(Z)V

    .line 843
    sget-object v2, Lcom/android/phone/CallFeaturesSetting$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CallFeaturesSetting$AppState;

    .line 906
    .end local v0           #bs:Ljava/lang/String;
    .end local v1           #mmi:Ljava/lang/String;
    :cond_8a
    :goto_8a
    sget-object v3, Lcom/android/phone/CallFeaturesSetting$AppState;->INPUT_READY:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-eq v2, v3, :cond_de

    .line 907
    invoke-direct {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;)V

    move v3, v6

    .line 909
    goto/16 :goto_10

    .line 844
    :cond_94
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCLIR:Landroid/preference/ListPreference;

    if-ne p2, v3, :cond_9b

    move v3, v5

    .line 846
    goto/16 :goto_10

    .line 849
    :cond_9b
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonALS:Landroid/preference/ListPreference;

    if-ne p2, v3, :cond_a2

    move v3, v5

    .line 850
    goto/16 :goto_10

    .line 854
    :cond_a2
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonVC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_b4

    .line 855
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonVC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->setVoiceClarityInfo(Z)V

    move v3, v5

    .line 857
    goto/16 :goto_10

    .line 865
    :cond_b4
    instance-of v3, p2, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v3, :cond_c3

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v3, :cond_c0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v3, :cond_c3

    .line 868
    :cond_c0
    sget-object v2, Lcom/android/phone/CallFeaturesSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CallFeaturesSetting$AppState;

    goto :goto_8a

    .line 880
    :cond_c3
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_ce

    .line 881
    const/4 v3, -0x2

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->setDisplayMode(I)V

    move v3, v6

    .line 883
    goto/16 :goto_10

    .line 884
    :cond_ce
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonMoreExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_d7

    .line 885
    const/4 v3, -0x3

    invoke-virtual {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->setDisplayMode(I)V

    goto :goto_8a

    .line 899
    :cond_d7
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCDExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_8a

    move v3, v5

    .line 902
    goto/16 :goto_10

    :cond_de
    move v3, v5

    .line 912
    goto/16 :goto_10
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/16 v2, 0xc8

    const/4 v1, 0x0

    .line 2817
    const-string v0, "onResume()..."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2820
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 2822
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mLaunchAlertDialogAgain:Z

    if-eqz v0, :cond_21

    .line 2823
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    if-nez v0, :cond_19

    .line 2824
    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    .line 2827
    :cond_19
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mErrorAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2828
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mLaunchAlertDialogAgain:Z

    .line 2851
    :cond_20
    :goto_20
    return-void

    .line 2829
    :cond_21
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mLaunchRadioOffErrorDialogAgain:Z

    if-eqz v0, :cond_39

    .line 2830
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRadioOffErrorDialog:Landroid/app/Dialog;

    if-nez v0, :cond_31

    .line 2831
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRadioOffErrorDialog:Landroid/app/Dialog;

    .line 2834
    :cond_31
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRadioOffErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2835
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mLaunchRadioOffErrorDialogAgain:Z

    goto :goto_20

    .line 2836
    :cond_39
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mLaunchVmExceptionErrorDialogAgain:Z

    if-eqz v0, :cond_4f

    .line 2837
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVmExceptionErrorDialog:Landroid/app/Dialog;

    if-nez v0, :cond_47

    .line 2838
    invoke-virtual {p0, v2}, Lcom/android/phone/CallFeaturesSetting;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVmExceptionErrorDialog:Landroid/app/Dialog;

    .line 2841
    :cond_47
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVmExceptionErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2842
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mLaunchVmExceptionErrorDialogAgain:Z

    goto :goto_20

    .line 2843
    :cond_4f
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mLaunchResponseErrorDialogAgain:Z

    if-eqz v0, :cond_20

    .line 2844
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mResponseErrorDialog:Landroid/app/Dialog;

    if-nez v0, :cond_5f

    .line 2845
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mResponseErrorDialog:Landroid/app/Dialog;

    .line 2848
    :cond_5f
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mResponseErrorDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2849
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mLaunchResponseErrorDialogAgain:Z

    goto :goto_20
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "outState"

    .prologue
    const-string v3, "RGS"

    .line 2742
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2745
    const-string v0, "onSaveInstanceState: saving relevant UI state."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2749
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCLIR:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1f

    .line 2750
    const-string v0, "button_clir_key"

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCLIR:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCLIR:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2754
    :cond_1f
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCW:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2e

    .line 2755
    const-string v0, "button_cw_key"

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2759
    :cond_2e
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonALS:Landroid/preference/ListPreference;

    if-eqz v0, :cond_43

    .line 2760
    const-string v0, "button_als_key"

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonALS:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonALS:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2767
    :cond_43
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_52

    .line 2768
    const-string v0, "button_cfu_key"

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2770
    :cond_52
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOperatorCode:Ljava/lang/String;

    const-string v1, "RGS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 2772
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_6b

    .line 2773
    const-string v0, "button_cfb_key"

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2775
    :cond_6b
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_7a

    .line 2776
    const-string v0, "button_cfnry_key"

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2778
    :cond_7a
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_89

    .line 2779
    const-string v0, "button_cfnrc_key"

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPhoneNumberPreference;->isToggled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2785
    :cond_89
    const-string v0, "summary_cfu_key"

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mDialingNumCFU:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2786
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOperatorCode:Ljava/lang/String;

    const-string v1, "RGS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 2788
    const-string v0, "summary_cfb_key"

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mDialingNumCFB:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2789
    const-string v0, "summary_cfnry_key"

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mDialingNumCFNRy:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2790
    const-string v0, "summary_cfnrc_key"

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mDialingNumCFNRc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    :cond_af
    const-string v0, "app_state_key"

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mAppState:Lcom/android/phone/CallFeaturesSetting$AppState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2798
    const-string v0, "button_cf_expand_key"

    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mCFDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2799
    const-string v0, "button_more_expand_key"

    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mMoreDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2800
    const-string v0, "display_mode_key"

    iget v1, p0, Lcom/android/phone/CallFeaturesSetting;->mDisplayMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2801
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 2387
    const-string v0, "onStart()..."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2390
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 2392
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->dialogCloseFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2393
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 2807
    const-string v0, "onStop()..."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2810
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 2811
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2812
    return-void
.end method

.method public setDisplayMode(I)V
    .registers 7
    .parameter "displayMode"

    .prologue
    const/4 v4, -0x2

    .line 970
    iput p1, p0, Lcom/android/phone/CallFeaturesSetting;->mDisplayMode:I

    .line 973
    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mCFDataStale:Z

    if-eqz v1, :cond_9

    if-eq p1, v4, :cond_10

    :cond_9
    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mMoreDataStale:Z

    if-eqz v1, :cond_38

    const/4 v1, -0x3

    if-ne p1, v1, :cond_38

    .line 976
    :cond_10
    const-string v1, "setDisplayMode: performing requested expansion."

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p0}, Lcom/android/phone/CallFeaturesSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_58

    .line 985
    sget-object v1, Lcom/android/phone/CallFeaturesSetting$AppState;->INITIAL_QUERY:Lcom/android/phone/CallFeaturesSetting$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;)V

    .line 987
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 989
    .local v0, radioState:I
    if-nez v0, :cond_3d

    .line 991
    if-ne p1, v4, :cond_39

    .line 992
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->queryAllCFOptions()V

    .line 1014
    .end local v0           #radioState:I
    :cond_38
    :goto_38
    return-void

    .line 994
    .restart local v0       #radioState:I
    :cond_39
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->queryMoreOptions()V

    goto :goto_38

    .line 996
    :cond_3d
    const/4 v1, 0x3

    if-ne v0, v1, :cond_50

    .line 998
    const-string v1, "onCreate: radio not ready, waiting for signal."

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1001
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_38

    .line 1004
    :cond_50
    sget-object v1, Lcom/android/phone/CallFeaturesSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CallFeaturesSetting$AppState;

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;I)V

    goto :goto_38

    .line 1008
    .end local v0           #radioState:I
    :cond_58
    const-string v1, "setDisplayMode: radio is off!"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1011
    sget-object v1, Lcom/android/phone/CallFeaturesSetting$AppState;->NETWORK_ERROR:Lcom/android/phone/CallFeaturesSetting$AppState;

    const/16 v2, 0x320

    invoke-direct {p0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;I)V

    goto :goto_38
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 5
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 1212
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    .line 1214
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1235
    :goto_6
    return-void

    .line 1219
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAppState:Lcom/android/phone/CallFeaturesSetting$AppState;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting$AppState;->DIALOG_OPEN:Lcom/android/phone/CallFeaturesSetting$AppState;

    if-eq v0, v1, :cond_13

    .line 1221
    const-string v0, "startSubActivity: dialog start activity request denied, currently busy."

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_6

    .line 1229
    :cond_13
    const-string v0, "startSubActivity: starting requested subactivity"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1232
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1234
    sget-object v0, Lcom/android/phone/CallFeaturesSetting$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CallFeaturesSetting$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->setAppState(Lcom/android/phone/CallFeaturesSetting$AppState;)V

    goto :goto_6
.end method
