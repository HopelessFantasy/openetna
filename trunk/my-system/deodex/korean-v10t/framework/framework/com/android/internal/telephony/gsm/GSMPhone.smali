.class public Lcom/android/internal/telephony/gsm/GSMPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GSMPhone$2;,
        Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;,
        Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    }
.end annotation


# static fields
.field public static final ALS_LINE_1:I = 0x0

.field public static final ALS_LINE_2:I = 0x1

.field public static final ALS_LINE_NOT_ALLOWED:I = 0x2

.field public static final ALS_SETTING_VALUE:Ljava/lang/String; = "als_setting_key"

.field public static final ALS_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.ALS_STATE_CHANGED"

.field public static final CIPHERING_KEY:Ljava/lang/String; = "ciphering_key"

.field public static final CLIR_SETTING_VALUE:Ljava/lang/String; = "clir_setting_key"

.field static final EVENT_ALS_EXECUTED:I = 0x25

.field static final EVENT_CALL_PROGRESS:I = 0x26

.field static final EVENT_CANCEL_MANUAL_SEARCHING:I = 0x23

.field static final EVENT_FACTORY_RESET_DONE:I = 0x17

.field static final EVENT_GET_ALS_DONE:I = 0x20

.field static final EVENT_GET_ENGINEERING_MODE_INFO_DONE:I = 0x1f

.field static final EVENT_GET_FACTORY_VERSION_DONE:I = 0x16

.field static final EVENT_GET_HW_VERSION_DONE:I = 0x15

.field static final EVENT_GET_MODEM_VERSION_DONE:I = 0x14

.field static final EVENT_GO_FAST_DORMANCY_DONE:I = 0x28

.field static final EVENT_ORIG_MOD_TO_SS:I = 0x27

.field static final EVENT_RETRY_ALS_QUERY:I = 0x21

.field static final EVENT_SET_HIDDENRESET_DONE:I = 0x1a

.field static final EVENT_SET_NETWORK_MANUAL_PREVIOUS:I = 0x22

.field static final EVENT_SET_NV_A5_ALGO_DONE:I = 0x1c

.field static final EVENT_SET_NV_DL_FREQ_DONE:I = 0x2c

.field static final EVENT_SET_NV_DL_FREQ_EN_DONE:I = 0x2b

.field static final EVENT_SET_NV_GCFFlag_DONE:I = 0x1e

.field static final EVENT_SET_NV_HSDPACat_DONE:I = 0x1d

.field static final EVENT_SET_NV_RRCVER_DONE:I = 0x1b

.field static final EVENT_SET_OTA_MODE_DONE:I = 0x2a

.field static final EVENT_SET_STABILITY_TEST_DONE:I = 0x19

.field static final EVENT_SIM_ICCID_LOADED:I = 0x24

.field public static final FDN_QUERY_ACTION:Ljava/lang/String; = "android.intent.action.FDN_QUERY"

.field public static final INTERNAL_PIN_VALUE:Ljava/lang/String; = "internal_pin_value_key"

.field private static final LOCAL_DEBUG:Z = true

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final SIMCBMI_READ_COMPLETE_ACTION:Ljava/lang/String; = "android.intent.action.SIMCBMI_READ_COMPLETE"

.field public static final SIM_CHANGED_INFO_ACTION:Ljava/lang/String; = "android.intent.action.SIM_CHANGED_INFO"

.field public static final SIM_ICCID_VALUE:Ljava/lang/String; = "sim_iccid_value_key"

.field public static final SIM_IMPORTED_INFO_ACTION:Ljava/lang/String; = "android.intent.action.SIM_IMPORTED_INFO"

.field public static final SIM_NOT_CHANGED_INFO_ACTION:Ljava/lang/String; = "android.intent.action.SIM_NOT_CHANGED_INFO"

.field public static final VC_SETTING_VALUE:Ljava/lang/String; = "vc_setting_key"

.field public static final VM_NUMBER:Ljava/lang/String; = "vm_number_key"

.field public static final VM_SIM_IMSI:Ljava/lang/String; = "vm_sim_imsi_key"

.field private static mActiveCff:I

.field private static mLine:I


# instance fields
.field debugPortThread:Ljava/lang/Thread;

.field debugSocket:Ljava/net/ServerSocket;

.field h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

.field isSimChanged:Z

.field mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field mContext:Landroid/content/Context;

.field mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

.field private mEmodeInfoforAndroid:[Ljava/lang/String;

.field private mEmodeModemInfo:Ljava/lang/String;

.field private mFactoryVersion:Ljava/lang/String;

.field mFlexCountryCode:Ljava/lang/String;

.field mFlexOperatorCode:Ljava/lang/String;

.field private mGoDormancyDoneInfo:Ljava/lang/String;

.field private mHWVersion:Ljava/lang/String;

.field private mImei:Ljava/lang/String;

.field private mImeiSv:Ljava/lang/String;

.field private mModemVersion:Ljava/lang/String;

.field private mOTAmode:I

.field mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field mPostDialHandler:Landroid/os/Registrant;

.field mRD:Lcom/android/internal/telephony/gsm/RILEventDispatcher;

.field private mReportedAttemptedConnects:I

.field private mReportedRadioResets:I

.field private mReportedSuccessfulConnects:I

.field mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

.field mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

.field mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

.field mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

.field mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

.field mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

.field mSsnRegistrants:Landroid/os/RegistrantList;

.field mStkService:Lcom/android/internal/telephony/gsm/stk/StkService;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field private mVmNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 305
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mLine:I

    .line 306
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mActiveCff:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .registers 5
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 378
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .registers 13
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "unitTestMode"

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, " "

    .line 382
    invoke-direct {p0, p3, p1, p4}, Lcom/android/internal/telephony/PhoneBase;-><init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Z)V

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 260
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    .line 280
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, " "

    aput-object v3, v0, v4

    const-string v1, " "

    aput-object v3, v0, v6

    const-string v1, " "

    aput-object v3, v0, v7

    const/4 v1, 0x3

    const-string v2, " "

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v2, " "

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v2, " "

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v2, " "

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v2, " "

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v2, " "

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v2, " "

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v2, " "

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEmodeInfoforAndroid:[Ljava/lang/String;

    .line 287
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->isSimChanged:Z

    .line 295
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mFlexOperatorCode:Ljava/lang/String;

    .line 298
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mFlexCountryCode:Ljava/lang/String;

    .line 310
    iput v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mOTAmode:I

    .line 386
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    .line 390
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    .line 391
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 393
    instance-of v0, p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    if-eqz v0, :cond_77

    .line 394
    check-cast p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .end local p2
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 397
    :cond_77
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 398
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 399
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 400
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    .line 403
    new-instance v0, Lcom/android/internal/telephony/gsm/RILEventDispatcher;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/RILEventDispatcher;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mRD:Lcom/android/internal/telephony/gsm/RILEventDispatcher;

    .line 406
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SIMFileHandler;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 407
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 408
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    .line 409
    new-instance v0, Lcom/android/internal/telephony/gsm/SimCard;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimCard;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    .line 410
    if-nez p4, :cond_cb

    .line 411
    new-instance v0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 412
    new-instance v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    .line 413
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 415
    :cond_cb
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/internal/telephony/gsm/stk/StkService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/gsm/SIMRecords;Landroid/content/Context;Lcom/android/internal/telephony/gsm/SIMFileHandler;Lcom/android/internal/telephony/gsm/SimCard;)Lcom/android/internal/telephony/gsm/stk/StkService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mStkService:Lcom/android/internal/telephony/gsm/stk/StkService;

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    invoke-interface {v0, v1, v6, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForIccidLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    invoke-interface {v0, v1, v7, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForNetworkAttach(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v2, 0x26

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnCallProgress(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v2, 0x27

    invoke-interface {v0, v1, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnOrigModToSS(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getModemVersion(Landroid/os/Message;)V

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getHWVersion(Landroid/os/Message;)V

    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getFactoryVersion(Landroid/os/Message;)V

    .line 444
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getVoiceClarityInfo()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceClarityInfo(Z)V

    .line 483
    const-string v0, "gsm.current.phone-type"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GSMPhone;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSimIccid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHWVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/gsm/GSMPhone;ILjava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->onIncomingUSSD(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200()I
    .registers 1

    .prologue
    .line 126
    sget v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mLine:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/gsm/GSMPhone;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/gsm/GSMPhone;[Lcom/android/internal/telephony/CallForwardInfo;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/gsm/GSMPhone;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEmodeModemInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/gsm/GSMPhone;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mGoDormancyDoneInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mGoDormancyDoneInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/gsm/CallProgressIndication;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyProgressingP(Lcom/android/internal/telephony/gsm/CallProgressIndication;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSimIccid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/GSMPhone;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getVmSimImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mModemVersion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mFactoryVersion:Ljava/lang/String;

    return-object p1
.end method

.method private getSimIccid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1319
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "sim_iccid_value_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getVmSimImsi()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1305
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1306
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "vm_sim_imsi_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 7
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-string v3, "GSM"

    .line 876
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_b

    .line 877
    const/4 v1, 0x0

    .line 895
    :goto_a
    return v1

    .line 880
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_34

    .line 881
    const-string v1, "GSM"

    const-string v1, "MmiCode 0: rejectCall"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :try_start_1e
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V
    :try_end_23
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1e .. :try_end_23} :catch_25

    :cond_23
    :goto_23
    move v1, v4

    .line 895
    goto :goto_a

    .line 884
    :catch_25
    move-exception v1

    move-object v0, v1

    .line 885
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GSM"

    const-string v1, "reject failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 887
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_23

    .line 889
    .end local v0           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_34
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_23

    .line 890
    const-string v1, "GSM"

    const-string v1, "MmiCode 0: hangupWaitingOrBackground"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    goto :goto_23
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 13
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const-string v9, "GSM"

    .line 942
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 944
    .local v5, len:I
    const/4 v6, 0x2

    if-le v5, v6, :cond_c

    .line 945
    const/4 v6, 0x0

    .line 989
    :goto_b
    return v6

    .line 948
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    .line 950
    .local v0, call:Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v5, v10, :cond_74

    .line 952
    const/4 v6, 0x1

    :try_start_13
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 953
    .local v2, ch:C
    const/16 v6, 0x30

    sub-int v1, v2, v6

    .line 954
    .local v1, callIndex:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Lcom/android/internal/telephony/gsm/GsmConnection;

    move-result-object v3

    .line 957
    .local v3, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v3, :cond_47

    if-lt v1, v10, :cond_47

    const/4 v6, 0x7

    if-gt v1, v6, :cond_47

    .line 958
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MmiCode 2: separate call "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .end local v1           #callIndex:I
    .end local v2           #ch:C
    .end local v3           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :goto_45
    move v6, v10

    .line 989
    goto :goto_b

    .line 962
    .restart local v1       #callIndex:I
    .restart local v2       #ch:C
    .restart local v3       #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_47
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "separate: invalid call index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    sget-object v6, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    :try_end_64
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_13 .. :try_end_64} :catch_65

    goto :goto_45

    .line 966
    .end local v1           #callIndex:I
    .end local v2           #ch:C
    .end local v3           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :catch_65
    move-exception v6

    move-object v4, v6

    .line 967
    .local v4, e:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "GSM"

    const-string v6, "separate failed"

    invoke-static {v9, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 969
    sget-object v6, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_45

    .line 973
    .end local v4           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_74
    :try_start_74
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_9c

    .line 974
    const-string v6, "GSM"

    const-string v7, "MmiCode 2: accept ringing call"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V
    :try_end_8c
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_74 .. :try_end_8c} :catch_8d

    goto :goto_45

    .line 982
    :catch_8d
    move-exception v6

    move-object v4, v6

    .line 983
    .restart local v4       #e:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "GSM"

    const-string v6, "switch failed"

    invoke-static {v9, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 985
    sget-object v6, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_45

    .line 978
    .end local v4           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_9c
    :try_start_9c
    const-string v6, "GSM"

    const-string v7, "MmiCode 2: switchWaitingOrHoldingAndActive"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_a8
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_9c .. :try_end_a8} :catch_8d

    goto :goto_45
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 12
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const-string v9, "GSM"

    .line 900
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 902
    .local v4, len:I
    const/4 v5, 0x2

    if-le v4, v5, :cond_c

    .line 903
    const/4 v5, 0x0

    .line 937
    :goto_b
    return v5

    .line 906
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    .line 909
    .local v0, call:Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v4, v8, :cond_3f

    .line 910
    const/4 v5, 0x1

    :try_start_13
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 911
    .local v2, ch:C
    const/16 v5, 0x30

    sub-int v1, v2, v5

    .line 913
    .local v1, callIndex:I
    if-lt v1, v8, :cond_3d

    const/4 v5, 0x7

    if-gt v1, v5, :cond_3d

    .line 914
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MmiCode 1: hangupConnectionByIndex "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v5, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)V

    .end local v1           #callIndex:I
    .end local v2           #ch:C
    :cond_3d
    :goto_3d
    move v5, v8

    .line 937
    goto :goto_b

    .line 920
    :cond_3f
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_63

    .line 921
    const-string v5, "GSM"

    const-string v6, "MmiCode 1: hangup foreground"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupForegroundResumeBackground()V
    :try_end_53
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_13 .. :try_end_53} :catch_54

    goto :goto_3d

    .line 931
    :catch_54
    move-exception v5

    move-object v3, v5

    .line 932
    .local v3, e:Lcom/android/internal/telephony/CallStateException;
    const-string v5, "GSM"

    const-string v5, "hangup failed"

    invoke-static {v9, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    sget-object v5, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_3d

    .line 926
    .end local v3           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_63
    :try_start_63
    const-string v5, "GSM"

    const-string v6, "MmiCode 1: switchWaitingOrHoldingAndActive"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_6f
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_63 .. :try_end_6f} :catch_54

    goto :goto_3d
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 5
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1031
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_9

    .line 1032
    const/4 v0, 0x0

    .line 1038
    :goto_8
    return v0

    .line 1035
    :cond_9
    const-string v0, "GSM"

    const-string v1, "MmiCode 5: CCBS not supported!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    move v0, v2

    .line 1038
    goto :goto_8
.end method

.method private handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V
    .registers 12
    .parameter "infos"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, ":"

    .line 2915
    sget v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mLine:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    .line 2916
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCfuQueryResultOriginal([Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 2947
    :cond_c
    :goto_c
    return-void

    .line 2920
    :cond_d
    const/4 v3, 0x0

    .line 2921
    .local v3, line:I
    const/4 v0, 0x0

    .line 2922
    .local v0, enable1:Z
    const/4 v1, 0x0

    .line 2924
    .local v1, enable2:Z
    if-eqz p1, :cond_15

    array-length v5, p1

    if-nez v5, :cond_4a

    .line 2927
    :cond_15
    const/4 v3, 0x3

    .line 2942
    :cond_16
    const-string v5, "nodebug"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GSMPhone>handleCfuQueryResult:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    if-eqz v3, :cond_c

    .line 2945
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5, v3, v0, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZZ)V

    goto :goto_c

    .line 2929
    :cond_4a
    const/4 v2, 0x0

    .local v2, i:I
    array-length v4, p1

    .local v4, s:I
    :goto_4c
    if-ge v2, v4, :cond_16

    .line 2930
    aget-object v5, p1, v2

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5f

    .line 2931
    or-int/lit8 v3, v3, 0x1

    .line 2932
    aget-object v5, p1, v2

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v7, :cond_73

    move v0, v7

    .line 2935
    :cond_5f
    :goto_5f
    aget-object v5, p1, v2

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_70

    .line 2936
    or-int/lit8 v3, v3, 0x2

    .line 2937
    aget-object v5, p1, v2

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v7, :cond_75

    move v1, v7

    .line 2929
    :cond_70
    :goto_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_73
    move v0, v8

    .line 2932
    goto :goto_5f

    :cond_75
    move v1, v8

    .line 2937
    goto :goto_70
.end method

.method private handleCfuQueryResultOriginal([Lcom/android/internal/telephony/CallForwardInfo;)V
    .registers 8
    .parameter "infos"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2884
    if-eqz p1, :cond_7

    array-length v2, p1

    if-nez v2, :cond_d

    .line 2887
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZ)V

    .line 2897
    :cond_c
    :goto_c
    return-void

    .line 2889
    :cond_d
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p1

    .local v1, s:I
    :goto_f
    if-ge v0, v1, :cond_c

    .line 2890
    aget-object v2, p1, v0

    iget v2, v2, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_28

    .line 2891
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    aget-object v3, p1, v0

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v3, v4, :cond_26

    move v3, v4

    :goto_22
    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceCallForwardingFlag(IZ)V

    goto :goto_c

    :cond_26
    move v3, v5

    goto :goto_22

    .line 2889
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 7
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const-string v4, "GSM"

    .line 1012
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1014
    .local v1, len:I
    if-eq v1, v3, :cond_b

    .line 1015
    const/4 v2, 0x0

    .line 1026
    :goto_a
    return v2

    .line 1018
    :cond_b
    const-string v2, "GSM"

    const-string v2, "MmiCode 4: explicit call transfer"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :try_start_12
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->explicitCallTransfer()V
    :try_end_15
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_12 .. :try_end_15} :catch_17

    :goto_15
    move v2, v3

    .line 1026
    goto :goto_a

    .line 1021
    :catch_17
    move-exception v0

    .line 1022
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "GSM"

    const-string v2, "transfer failed"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1024
    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_15
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .registers 6
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const-string v3, "GSM"

    .line 994
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_b

    .line 995
    const/4 v1, 0x0

    .line 1006
    :goto_a
    return v1

    .line 998
    :cond_b
    const-string v1, "GSM"

    const-string v1, "MmiCode 3: merge calls"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :try_start_12
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->conference()V
    :try_end_15
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_12 .. :try_end_15} :catch_17

    :goto_15
    move v1, v2

    .line 1006
    goto :goto_a

    .line 1001
    :catch_17
    move-exception v0

    .line 1002
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    const-string v1, "GSM"

    const-string v1, "conference failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1004
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_15
.end method

.method private handleSetSelectNetwork(Landroid/os/AsyncResult;)V
    .registers 9
    .parameter "ar"

    .prologue
    const-string v6, "GSM"

    .line 2836
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    if-nez v3, :cond_10

    .line 2837
    const-string v3, "GSM"

    const-string v3, "unexpected result from user object."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    :cond_f
    :goto_f
    return-void

    .line 2841
    :cond_10
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    .line 2845
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    if-eqz v3, :cond_2d

    .line 2846
    const-string v3, "GSM"

    const-string v3, "sending original message to recipient"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2848
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2853
    :cond_2d
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2854
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2855
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "network_selection_key"

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2858
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_f

    .line 2859
    const-string v3, "GSM"

    const-string v3, "failed to commit network selection preference"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method private isCbEnable(I)Z
    .registers 3
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 1869
    if-ne p1, v0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .registers 3
    .parameter "commandInterfaceCFAction"

    .prologue
    .line 1688
    packed-switch p1, :pswitch_data_8

    .line 1695
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1693
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1688
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .registers 3
    .parameter "commandInterfaceCFReason"

    .prologue
    .line 1674
    packed-switch p1, :pswitch_data_8

    .line 1683
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1681
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1674
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private onIncomingUSSD(ILjava/lang/String;)V
    .registers 11
    .parameter "ussdMode"
    .parameter "ussdMessage"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2138
    if-ne p1, v6, :cond_32

    move v3, v6

    .line 2141
    .local v3, isUssdRequest:Z
    :goto_5
    if-eqz p1, :cond_34

    if-eq p1, v6, :cond_34

    move v2, v6

    .line 2148
    .local v2, isUssdError:Z
    :goto_a
    const/4 v0, 0x0

    .line 2149
    .local v0, found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, s:I
    :goto_12
    if-ge v1, v5, :cond_2a

    .line 2150
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 2151
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 2156
    .restart local v0       #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_2a
    if-eqz v0, :cond_3d

    .line 2159
    if-eqz v2, :cond_39

    .line 2160
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    .line 2177
    :cond_31
    :goto_31
    return-void

    .end local v0           #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v1           #i:I
    .end local v2           #isUssdError:Z
    .end local v3           #isUssdRequest:Z
    .end local v5           #s:I
    :cond_32
    move v3, v7

    .line 2138
    goto :goto_5

    .restart local v3       #isUssdRequest:Z
    :cond_34
    move v2, v7

    .line 2141
    goto :goto_a

    .line 2149
    .restart local v0       #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .restart local v1       #i:I
    .restart local v2       #isUssdError:Z
    .restart local v5       #s:I
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 2162
    :cond_39
    invoke-virtual {v0, p2, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    goto :goto_31

    .line 2169
    :cond_3d
    if-nez v2, :cond_31

    if-eqz p2, :cond_31

    .line 2171
    invoke-static {p2, v3, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v4

    .line 2174
    .local v4, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_31
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .registers 5
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    .line 2127
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2129
    return-void
.end method

.method private setSimIccid(Ljava/lang/String;)V
    .registers 5
    .parameter "iccid"

    .prologue
    .line 1323
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1324
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1325
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "sim_iccid_value_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1326
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1327
    return-void
.end method

.method private setVmSimImsi(Ljava/lang/String;)V
    .registers 5
    .parameter "imsi"

    .prologue
    .line 1310
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1311
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1312
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "vm_sim_imsi_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1313
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1314
    return-void
.end method

.method private storeVoiceMailNumber(Ljava/lang/String;)V
    .registers 5
    .parameter "number"

    .prologue
    .line 1227
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1228
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1229
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "vm_number_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1231
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 1232
    return-void
.end method


# virtual methods
.method public acceptCall()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V

    .line 823
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .registers 5
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 3115
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    return-void
.end method

.method public canConference()Z
    .registers 2

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canConference()Z

    move-result v0

    return v0
.end method

.method public canDial()Z
    .registers 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .registers 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public cancelManualSearchingRequest()V
    .registers 5

    .prologue
    .line 3013
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v2, 0x23

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3015
    .local v0, msg:Landroid/os/Message;
    const-string v1, "GSMPhone"

    const-string v2, "cancelManualSearchingRequest()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->cancelManualSearchingRequest(Landroid/os/Message;)V

    .line 3018
    return-void
.end method

.method public changeCallBarringPwd(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "onComplete"

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const-string v1, "AB"

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1876
    return-void
.end method

.method public checkFdn(Ljava/lang/String;)Z
    .registers 10
    .parameter "number"

    .prologue
    const/4 v6, 0x1

    .line 3023
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v5

    if-nez v5, :cond_13

    :cond_11
    move v5, v6

    .line 3044
    :goto_12
    return v5

    .line 3026
    :cond_13
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    move v5, v6

    .line 3027
    goto :goto_12

    .line 3030
    :cond_1b
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    sget-object v4, Lcom/android/internal/telephony/gsm/SIMRecords;->fdn_list:Ljava/lang/String;

    .line 3032
    .local v4, numbers:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 3035
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2d
    if-ge v2, v3, :cond_3c

    aget-object v1, v0, v2

    .line 3036
    .local v1, fdnNum:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    move v5, v6

    .line 3037
    goto :goto_12

    .line 3035
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 3042
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #fdnNum:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_3c
    const-string v5, "nodebug"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkFdn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    const/4 v5, 0x0

    goto :goto_12
.end method

.method public clearDisconnected()V
    .registers 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 849
    return-void
.end method

.method public conference()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->conference()V

    .line 845
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .registers 12
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1100
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1103
    .local v4, newDialString:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    move-object v5, v8

    .line 1151
    :goto_d
    return-object v5

    .line 1111
    :cond_e
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractInternationalNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1114
    .local v3, networkPortion:Ljava/lang/String;
    invoke-static {v3, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v2

    .line 1115
    .local v2, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dialing w/ mmi \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    sget v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mLine:I

    if-ne v5, v9, :cond_4b

    move v1, v9

    .line 1124
    .local v1, lineInfo:I
    :goto_39
    if-nez v2, :cond_55

    .line 1128
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCLIRSettingValue()I

    move-result v0

    .line 1129
    .local v0, clir_setting_value:I
    if-eq v0, v9, :cond_44

    const/4 v5, 0x2

    if-ne v0, v5, :cond_4e

    .line 1132
    :cond_44
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v5, v1, v4, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(ILjava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v5

    goto :goto_d

    .line 1120
    .end local v0           #clir_setting_value:I
    .end local v1           #lineInfo:I
    :cond_4b
    const/4 v5, 0x0

    move v1, v5

    goto :goto_39

    .line 1137
    .restart local v0       #clir_setting_value:I
    .restart local v1       #lineInfo:I
    :cond_4e
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v5, v1, v4}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(ILjava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v5

    goto :goto_d

    .line 1139
    .end local v0           #clir_setting_value:I
    :cond_55
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v5

    if-eqz v5, :cond_68

    .line 1142
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v6, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->dialingNumber:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    move-result v7

    invoke-virtual {v5, v1, v6, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(ILjava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v5

    goto :goto_d

    .line 1146
    :cond_68
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v6, Landroid/os/AsyncResult;

    invoke-direct {v6, v8, v2, v8}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v5, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1148
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    move-object v5, v8

    .line 1151
    goto :goto_d
.end method

.method public disableApnType(Ljava/lang/String;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableDataConnectivity()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2046
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "socket_data_call_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2048
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public disableLocationUpdates()V
    .registers 2

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableLocationUpdates()V

    .line 2021
    return-void
.end method

.method public dispose()V
    .registers 4

    .prologue
    .line 488
    sget-object v0, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 491
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 492
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 493
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 494
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForNetworkAttach(Landroid/os/Handler;)V

    .line 495
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUSSD(Landroid/os/Handler;)V

    .line 496
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 497
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCallRing(Landroid/os/Handler;)V

    .line 499
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 502
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mStkService:Lcom/android/internal/telephony/gsm/stk/StkService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->dispose()V

    .line 503
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dispose()V

    .line 504
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dispose()V

    .line 505
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    .line 506
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 507
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->dispose()V

    .line 508
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimCard;->dispose()V

    .line 509
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->dispose()V

    .line 510
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->dispose()V

    .line 511
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    .line 512
    monitor-exit v0

    .line 513
    return-void

    .line 512
    :catchall_74
    move-exception v1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_74

    throw v1
.end method

.method public enableApnType(Ljava/lang/String;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 2038
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableDataConnectivity()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2032
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "socket_data_call_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2034
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public enableLocationUpdates()V
    .registers 2

    .prologue
    .line 2016
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->enableLocationUpdates()V

    .line 2017
    return-void
.end method

.method public explicitCallTransfer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->explicitCallTransfer()V

    .line 857
    return-void
.end method

.method public factoryReset(Landroid/os/Message;)V
    .registers 5
    .parameter "onComplete"

    .prologue
    .line 1389
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1391
    .local v0, resp:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->factoryReset(Landroid/os/Message;)V

    .line 1392
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 531
    const-string v0, "GSM"

    const-string v1, "GSMPhone finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-void
.end method

.method public findIndexWithField(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter "field"
    .parameter "value"

    .prologue
    .line 3159
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->findIndexWithField(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getALSSettingValue()I
    .registers 2

    .prologue
    .line 1299
    sget v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mLine:I

    return v0
.end method

.method public getActiveApn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getActiveApnString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 1891
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1892
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1893
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .registers 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getCLIRSettingValue()I
    .registers 6

    .prologue
    .line 1279
    const/4 v0, 0x0

    .line 1280
    .local v0, clir:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mFlexCountryCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mFlexOperatorCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mFlexCountryCode:Ljava/lang/String;

    const-string v4, "BR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_30

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mFlexOperatorCode:Ljava/lang/String;

    const-string v4, "TIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mFlexOperatorCode:Ljava/lang/String;

    const-string v4, "VIVO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_30

    .line 1281
    :cond_2f
    const/4 v0, 0x2

    .line 1283
    :cond_30
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1284
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v3, "clir_setting_key"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1286
    .local v2, value:I
    return v2
.end method

.method public getCallBarring(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "commandInterfaceCBReason"
    .parameter "onComplete"

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1813
    return-void
.end method

.method public getCallCost(Landroid/os/Message;)V
    .registers 3
    .parameter "onComplete"

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCallCost(Landroid/os/Message;)V

    .line 1828
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .registers 3

    .prologue
    .line 604
    sget v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mLine:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    .line 605
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getVoiceCallForwardingFlag()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getVoiceCallForwardingFlagLine2()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    .line 609
    :goto_16
    return v0

    .line 605
    :cond_17
    const/4 v0, 0x0

    goto :goto_16

    .line 609
    :cond_19
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getVoiceCallForwardingFlag()Z

    move-result v0

    goto :goto_16
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .registers 7
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 1712
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1713
    const-string v1, "GSM"

    const-string v2, "requesting call forwarding query."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    if-nez p1, :cond_1f

    .line 1716
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1720
    .local v0, resp:Landroid/os/Message;
    :goto_17
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 1722
    .end local v0           #resp:Landroid/os/Message;
    :cond_1e
    return-void

    .line 1718
    :cond_1f
    move-object v0, p2

    .restart local v0       #resp:Landroid/os/Message;
    goto :goto_17
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .registers 4
    .parameter "onComplete"

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 1792
    return-void
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 3119
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .registers 2

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    return-object v0
.end method

.method public getCountVM()I
    .registers 3

    .prologue
    .line 593
    const-string v0, "GSM"

    const-string v1, "GSMPhone.java: getCountVM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getCspPlmnStatus()I
    .registers 2

    .prologue
    .line 1625
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getCspPlmn()I

    move-result v0

    return v0
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getAllDataConnections()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPdpList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/PdpConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1997
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1998
    .local v0, connections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataConnection;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2000
    .local v2, pdp_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/PdpConnection;>;"
    const/4 v1, 0x0

    .end local p0
    .local v1, n:I
    :goto_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1d

    .line 2001
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/gsm/PdpConnection;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2000
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2004
    :cond_1d
    return-object v2
.end method

.method public getCurrentVoiceClass()I
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1706
    sget v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mLine:I

    if-ne v0, v1, :cond_7

    const/4 v0, 0x2

    :goto_6
    return v0

    :cond_7
    move v0, v1

    goto :goto_6
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .registers 4

    .prologue
    .line 679
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 681
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataActivityState;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    if-nez v1, :cond_1b

    .line 682
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$Activity:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_26

    .line 697
    :cond_1b
    :goto_1b
    return-object v0

    .line 684
    :pswitch_1c
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 685
    goto :goto_1b

    .line 688
    :pswitch_1f
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 689
    goto :goto_1b

    .line 692
    :pswitch_22
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_1b

    .line 682
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 1991
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .registers 5

    .prologue
    const-string v3, ""

    .line 630
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 632
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataState;
    const-string v1, "adb.connected"

    const-string v2, ""

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_23

    const-string v1, "android.net.use-adb-networking"

    const-string v2, ""

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_23

    .line 639
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 675
    :goto_22
    return-object v0

    .line 640
    :cond_23
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-nez v1, :cond_2a

    .line 644
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_22

    .line 645
    :cond_2a
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    if-eqz v1, :cond_35

    .line 649
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_22

    .line 651
    :cond_35
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_64

    goto :goto_22

    .line 654
    :pswitch_47
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 655
    goto :goto_22

    .line 659
    :pswitch_4a
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_5d

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 661
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_22

    .line 663
    :cond_5d
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 665
    goto :goto_22

    .line 670
    :pswitch_60
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_22

    .line 651
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_47
        :pswitch_47
        :pswitch_4a
        :pswitch_4a
        :pswitch_60
        :pswitch_60
        :pswitch_60
    .end packed-switch
.end method

.method public getDataRoamingEnabled()Z
    .registers 2

    .prologue
    .line 2024
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter "apnType"

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmodeInfoPage(I)Ljava/lang/String;
    .registers 5
    .parameter "EngIndex"

    .prologue
    .line 1567
    const-string v0, "[GSMPhone]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getEmodeInfo()] EngIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEmodeInfoforAndroid:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getEngineeringModeInfo(ILandroid/os/Message;)I
    .registers 7
    .parameter "data"
    .parameter "result"

    .prologue
    .line 1544
    const-string v2, "GSMPhone"

    const-string v3, "[Hidden] GetEngineeringMode_Info"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v3, 0x1f

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1547
    .local v0, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getEngineeringModeInfo(ILandroid/os/Message;)I

    move-result v1

    .line 1549
    .local v1, ret:I
    const/4 v2, 0x0

    return v2
.end method

.method public getEsn()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1589
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] getEsn() is a CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    const-string v0, "0"

    return-object v0
.end method

.method public getFactoryVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mFactoryVersion:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .registers 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getGateway(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "apnType"

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHWVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1378
    const-string v0, "GSM"

    const-string v1, "[Blue Debug] getHWVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mHWVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 3104
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .registers 2

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .registers 2

    .prologue
    .line 3111
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .registers 2

    .prologue
    .line 3097
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .registers 2

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_iccid_value:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 1605
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_iccid_value:Ljava/lang/String;

    .line 1608
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->iccid:Ljava/lang/String;

    goto :goto_10
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .registers 2

    .prologue
    .line 3090
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    return-object v0
.end method

.method public getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "apnType"

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalPIN()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1332
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1333
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "internal_pin_value_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "apnType"

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1631
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getMsisdnAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 1633
    .local v0, ret:Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1c

    .line 1634
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    const v2, 0x1040005

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1638
    :goto_1b
    return-object v1

    :cond_1c
    move-object v1, v0

    goto :goto_1b
.end method

.method public getLine1Number()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineSelectInfo(Landroid/os/Message;)V
    .registers 3
    .parameter "onComplete"

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getLineSelectInfo(Landroid/os/Message;)V

    .line 1842
    return-void
.end method

.method public getMeid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1594
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] getMeid() is a CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const-string v0, "0"

    return-object v0
.end method

.method public getMessageWaitingCphsIndicator()I
    .registers 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getVoiceMessageWaitingCphs()I

    move-result v0

    return v0
.end method

.method public getMessageWaitingIndicator()Z
    .registers 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getVoiceMessageWaiting()Z

    move-result v0

    return v0
.end method

.method public getModemVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mModemVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMute()Z
    .registers 2

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNeighboringCids(Landroid/os/Message;)V

    .line 1968
    return-void
.end method

.method public getOnsAlg()I
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getOnsAlg()I

    move-result v0

    return v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .registers 3
    .parameter "onComplete"

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 1777
    return-void
.end method

.method public getPIN1RetryNum()I
    .registers 2

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimCard;->getSimPin1RetryNum()I

    move-result v0

    return v0
.end method

.method public getPIN2RetryNum()I
    .registers 2

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimCard;->getSimPin2RetryNum()I

    move-result v0

    return v0
.end method

.method public getPUK1RetryNum()I
    .registers 2

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimCard;->getSimPuk1RetryNum()I

    move-result v0

    return v0
.end method

.method public getPUK2RetryNum()I
    .registers 2

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimCard;->getSimPuk2RetryNum()I

    move-result v0

    return v0
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .registers 2
    .parameter "response"

    .prologue
    .line 1986
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDataCallList(Landroid/os/Message;)V

    .line 1987
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 553
    const-string v0, "GSM"

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .registers 2

    .prologue
    .line 3083
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-object v0
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .registers 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getSIMUnlockRetryCount(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 3137
    const-string v0, "GSM"

    const-string v1, "getSIMUnlockRetryCount() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getSIMUnlockRetryCount(Landroid/os/Message;)V

    .line 3139
    return-void
.end method

.method public getSearchStatus(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getSearchStatus(Landroid/os/Message;)V

    .line 1899
    return-void
.end method

.method public getServiceCategoryValueForUsimEcc(Ljava/lang/String;)B
    .registers 3
    .parameter "number"

    .prologue
    .line 3152
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getServiceCategoryValueForUsimEcc(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .registers 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .registers 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method public getSimChanedInfo()Z
    .registers 2

    .prologue
    .line 1616
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->isSimChanged:Z

    return v0
.end method

.method public getSimEfIccid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->ef_iccid_value:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .registers 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SIMRecords;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .registers 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getVoiceCallForwardingFlag()Z

    move-result v0

    return v0
.end method

.method public getVoiceCallForwardingFlagLine2()Z
    .registers 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getVoiceCallForwardingFlagLine2()Z

    move-result v0

    return v0
.end method

.method public getVoiceClarityInfo()Z
    .registers 5

    .prologue
    const-string v3, "vc_setting_key"

    .line 1851
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1852
    .local v0, sp:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mFlexOperatorCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mFlexOperatorCode:Ljava/lang/String;

    const-string v2, "Cellcom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_24

    .line 1853
    const-string v1, "vc_setting_key"

    const/4 v1, 0x1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1855
    :goto_23
    return v1

    :cond_24
    const-string v1, "vc_setting_key"

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_23
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    const v1, 0x1040004

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .registers 6

    .prologue
    const-string v4, "GSM"

    .line 1236
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 1237
    .local v0, number:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 1238
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1239
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "vm_number_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1243
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 1244
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "NVDB_VMS_SET_ADDR_VALUE_I"

    invoke-static {v2, v3}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1246
    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoiceMailNumber3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 1250
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mFlexOperatorCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7b

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mFlexOperatorCode:Ljava/lang/String;

    const-string v3, "KTF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_7b

    .line 1251
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1253
    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVoiceMailNumber4: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_7b
    return-object v0
.end method

.method public goFastDormancy(Landroid/os/Message;)I
    .registers 6
    .parameter "result"

    .prologue
    .line 1580
    const-string v2, "GSMPhone"

    const-string v3, "[DataConnectionTracker] goFastDormancy"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v3, 0x28

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1583
    .local v0, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->goFastDormancy(Landroid/os/Message;)I

    move-result v1

    .line 1584
    .local v1, ret:I
    const/4 v2, 0x0

    return v2
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .registers 6
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1043
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    .line 1084
    :goto_8
    return v2

    .line 1047
    :cond_9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v3

    .line 1048
    goto :goto_8

    .line 1051
    :cond_11
    const/4 v1, 0x0

    .line 1052
    .local v1, result:Z
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1053
    .local v0, ch:C
    packed-switch v0, :pswitch_data_34

    :goto_19
    move v2, v1

    .line 1084
    goto :goto_8

    .line 1055
    :pswitch_1b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 1057
    goto :goto_19

    .line 1059
    :pswitch_20
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 1061
    goto :goto_19

    .line 1063
    :pswitch_25
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 1064
    goto :goto_19

    .line 1066
    :pswitch_2a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 1067
    goto :goto_19

    .line 1069
    :pswitch_2f
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 1070
    goto :goto_19

    .line 1053
    :pswitch_data_34
    .packed-switch 0x30
        :pswitch_1b
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_2f
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .registers 6
    .parameter "dialString"

    .prologue
    const/4 v3, 0x0

    .line 1156
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1158
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinCommand()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1159
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1161
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    .line 1162
    const/4 v1, 0x1

    .line 1165
    :goto_20
    return v1

    :cond_21
    const/4 v1, 0x0

    goto :goto_20
.end method

.method initCurrentCBMINumber()Z
    .registers 8

    .prologue
    const/4 v5, 0x0

    const-string v6, "content://cbset/settings"

    .line 2685
    const/4 v0, -0x1

    .line 2686
    .local v0, cbInitNoInSim:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://cbset/settings"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2687
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2688
    .local v1, valuesSetting:Landroid/content/ContentValues;
    const-string v2, "[GSMPhone]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initCurrentCBMINumber()- cbInitNoInSim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    const-string v2, "cbmitotalnoinsim"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2690
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://cbset/settings"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2691
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://cbs/channels"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2692
    const/4 v2, 0x1

    return v2
.end method

.method initCurrentCBMINumberVIVO()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    const-string v5, "content://cbset/settings"

    .line 2696
    const/4 v0, -0x1

    .line 2697
    .local v0, cbInitNoInSim:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://cbset/settings"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2698
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2699
    .local v1, valuesSetting:Landroid/content/ContentValues;
    const-string v2, "[GSMPhone]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initCurrentCBMINumberVIVO()- cbInitNoInSim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    const-string v2, "cbmitotalnoinsim"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2701
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://cbset/settings"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2702
    const/4 v2, 0x1

    return v2
.end method

.method protected isCfEnable(I)Z
    .registers 4
    .parameter "action"

    .prologue
    const/4 v1, 0x1

    .line 1700
    if-eq p1, v1, :cond_6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    :cond_6
    move v0, v1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isDataConnectivityPossible()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2099
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v1, v2, :cond_3f

    move v0, v4

    .line 2101
    .local v0, noData:Z
    :goto_13
    if-nez v0, :cond_41

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_41

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_41

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_41

    :cond_3d
    move v1, v4

    :goto_3e
    return v1

    .end local v0           #noData:Z
    :cond_3f
    move v0, v3

    .line 2099
    goto :goto_13

    .restart local v0       #noData:Z
    :cond_41
    move v1, v3

    .line 2101
    goto :goto_3e
.end method

.method public isEmergencyNumber(Ljava/lang/String;)Z
    .registers 3
    .parameter "number"

    .prologue
    .line 3050
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isInCall()Z
    .registers 5

    .prologue
    .line 1088
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1089
    .local v1, foregroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1090
    .local v0, backgroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1092
    .local v2, ringingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2c

    :cond_2a
    const/4 v3, 0x1

    :goto_2b
    return v3

    :cond_2c
    const/4 v3, 0x0

    goto :goto_2b
.end method

.method public isModemPowerSave()Z
    .registers 2

    .prologue
    .line 3143
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPowerSaveStatus()Z

    move-result v0

    return v0
.end method

.method public isOnMatchingOpl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "plmn"

    .prologue
    .line 3147
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords;->isOnMatchingOpl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOtaModeEnable()Z
    .registers 2

    .prologue
    .line 1531
    iget v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mOTAmode:I

    if-eqz v0, :cond_6

    .line 1532
    const/4 v0, 0x1

    .line 1534
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPreventType(I)Z
    .registers 3
    .parameter "type"

    .prologue
    .line 3170
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isPreventType(I)Z

    move-result v0

    return v0
.end method

.method public lgeGetFDN_NAME_MAX()I
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    sget v0, Lcom/android/internal/telephony/gsm/SIMRecords;->FDN_NAME_MAX:I

    return v0
.end method

.method public lgeSetFDN_NAME_MAX(I)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    sput p1, Lcom/android/internal/telephony/gsm/SIMRecords;->FDN_NAME_MAX:I

    .line 242
    return-void
.end method

.method public lgeSetFDN_REC_NUM(I)V
    .registers 3
    .parameter "newValue"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    sput p1, Lcom/android/internal/telephony/gsm/SIMRecords;->FDN_REC_NUM:I

    .line 230
    return-void
.end method

.method public lgegetEFADNLinearRecordSize(ILandroid/os/Message;)V
    .registers 4
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccFileHandler;->lgeIccgetEFADNLinearRecordSize(ILandroid/os/Message;)V

    .line 248
    return-void
.end method

.method public lgegetEFLinearRecordSize(ILandroid/os/Message;)V
    .registers 4
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 254
    return-void
.end method

.method public makeEngineeringModeInfo()V
    .registers 6

    .prologue
    .line 1553
    const/4 v1, 0x0

    .local v1, initi:I
    const/4 v0, 0x0

    .line 1554
    .local v0, TokenIndex:I
    new-instance v2, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEmodeModemInfo:Ljava/lang/String;

    const-string v4, "!"

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    .local v2, st:Ljava/util/StringTokenizer;
    :goto_b
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1557
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEmodeInfoforAndroid:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 1558
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1561
    :cond_1c
    move v1, v0

    :goto_1d
    const/16 v3, 0xb

    if-ge v1, v3, :cond_2a

    .line 1562
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mEmodeInfoforAndroid:[Ljava/lang/String;

    const-string v4, " "

    aput-object v4, v3, v1

    .line 1561
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1564
    :cond_2a
    return-void
.end method

.method public notifyCallForwardingIndicator()V
    .registers 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 798
    return-void
.end method

.method notifyCallStateChanged()V
    .registers 1

    .prologue
    .line 714
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyCallStateChangedP()V

    .line 715
    return-void
.end method

.method notifyConnect(Lcom/android/internal/telephony/Connection;)V
    .registers 3
    .parameter "cn"

    .prologue
    .line 3074
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mConnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 3075
    return-void
.end method

.method notifyDataConnectionFailed(Ljava/lang/String;)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/PhoneNotifier;->notifyDataConnectionFailed(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 762
    return-void
.end method

.method public notifyDataConnectionLost()V
    .registers 4

    .prologue
    .line 3130
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/4 v1, 0x0

    const-string v2, "radioTurnedOff"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onCleanUpConnection(ZLjava/lang/String;)V

    .line 3131
    return-void
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .registers 3
    .parameter "cn"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 734
    return-void
.end method

.method notifyIncomingRing()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 727
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v1, p0, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 728
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 729
    return-void
.end method

.method notifyLocationChanged()V
    .registers 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    .line 752
    return-void
.end method

.method notifyMessageWaitingCphsIndicator()V
    .registers 2

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingCphsChanged(Lcom/android/internal/telephony/Phone;)V

    .line 792
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 720
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 721
    return-void
.end method

.method notifyPhoneStateChanged()V
    .registers 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 705
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 2
    .parameter "ss"

    .prologue
    .line 746
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 747
    return-void
.end method

.method notifySignalStrength()V
    .registers 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    .line 757
    return-void
.end method

.method notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    .registers 3
    .parameter "code"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 742
    return-void
.end method

.method notifyUnknownConnection()V
    .registers 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 738
    return-void
.end method

.method onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .registers 5
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    .line 2118
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2119
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2122
    :cond_19
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .registers 3
    .parameter "onComplete"

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryTTYMode(Landroid/os/Message;)V

    .line 1772
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    .line 811
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 812
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-ne v0, v2, :cond_14

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 813
    :cond_14
    return-void
.end method

.method public rejectCall()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V

    .line 828
    return-void
.end method

.method public removeReferences()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 516
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 517
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mStkService:Lcom/android/internal/telephony/gsm/stk/StkService;

    .line 518
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 519
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimSmsIntManager:Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;

    .line 520
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    .line 521
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 522
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    .line 523
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 524
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    .line 525
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    .line 526
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 527
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 528
    return-void
.end method

.method public saveClirSetting(I)V
    .registers 6
    .parameter "commandInterfaceCLIRMode"

    .prologue
    .line 2870
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2871
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2872
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "clir_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2875
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2876
    const-string v2, "GSM"

    const-string v3, "failed to commit CLIR preference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2878
    :cond_1e
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/gsm/NetworkInfo;Landroid/os/Message;)V
    .registers 8
    .parameter "network"
    .parameter "response"

    .prologue
    .line 1934
    new-instance v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone$1;)V

    .line 1935
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iput-object p2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 1936
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorNumeric:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1939
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1943
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mFlexOperatorCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 1945
    const-string v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operator Flex Code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mFlexOperatorCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mFlexOperatorCode:Ljava/lang/String;

    const-string v3, "RGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_48

    .line 1949
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    .line 1963
    :goto_47
    return-void

    .line 1954
    :cond_48
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorNumeric:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorRAT:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_47

    .line 1959
    :cond_52
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorNumeric:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorRAT:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_47
.end method

.method public selectPreviousNetworkManually(Lcom/android/internal/telephony/gsm/NetworkInfo;Landroid/os/Message;)V
    .registers 8
    .parameter "network"
    .parameter "response"

    .prologue
    .line 2996
    new-instance v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone$1;)V

    .line 2997
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iput-object p2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 2998
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorNumeric:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 3001
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v3, 0x22

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3004
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorNumeric:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorRAT:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->setPreviousNetworkSelectionModeManual(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 3006
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;)V
    .registers 4
    .parameter "dtmfString"

    .prologue
    .line 1204
    const-string v0, "GSM"

    const-string v1, "[GSMPhone] sendBurstDtmf() is a CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    return-void
.end method

.method public sendDtmf(C)V
    .registers 5
    .parameter "c"

    .prologue
    .line 1177
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1178
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_24
    :goto_24
    return-void

    .line 1181
    :cond_25
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_24

    .line 1182
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_24
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .registers 6
    .parameter "ussdMessge"

    .prologue
    const/4 v3, 0x0

    .line 1169
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 1170
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1172
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 1173
    return-void
.end method

.method public setApnForPreferApp(Ljava/lang/String;)V
    .registers 3
    .parameter "preferApp"

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setApnForPreferApp(Ljava/lang/String;)V

    .line 2071
    return-void
.end method

.method public setArm9_NVDB_Update(ILandroid/os/Message;)I
    .registers 8
    .parameter "cmd_type"
    .parameter "onComplete"

    .prologue
    .line 1411
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Blue Debug] GSMPhone.java : setArm9_NVDB_Update cmd_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v3, 0x19

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1414
    .local v0, resp:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setArm9_NVDB_Update(ILandroid/os/Message;)I

    move-result v1

    .line 1416
    .local v1, ret:I
    const/4 v2, 0x0

    return v2
.end method

.method public setCallBarring(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 11
    .parameter "commandInterfaceCBAction"
    .parameter "commandInterfaceCBReason"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCbEnable(I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCurrentVoiceClass()I

    move-result v4

    move-object v1, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 1823
    return-void
.end method

.method public setCallCost(IILandroid/os/Message;)V
    .registers 5
    .parameter "action"
    .parameter "value"
    .parameter "onComplete"

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setCallCost(IILandroid/os/Message;)V

    .line 1832
    return-void
.end method

.method public setCallCostPuct(ILjava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "price"
    .parameter "currency"
    .parameter "onComplete"

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->setCallCostPuct(ILjava/lang/String;Landroid/os/Message;)V

    .line 1836
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .registers 13
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    const/4 v3, 0x0

    .line 1729
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1733
    if-nez p2, :cond_2c

    .line 1734
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v1, 0xc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x1

    :goto_1a
    invoke-virtual {v0, v1, v2, v3, p5}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1749
    .local v6, resp:Landroid/os/Message;
    :goto_1e
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xff

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 1758
    .end local v6           #resp:Landroid/os/Message;
    :cond_29
    return-void

    :cond_2a
    move v2, v3

    .line 1734
    goto :goto_1a

    .line 1737
    :cond_2c
    move-object v6, p5

    .restart local v6       #resp:Landroid/os/Message;
    goto :goto_1e
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .registers 5
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mFlexOperatorCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mFlexOperatorCode:Ljava/lang/String;

    const-string v1, "RGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1c

    .line 1799
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCurrentVoiceClass()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 1804
    :goto_1b
    return-void

    .line 1801
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xff

    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    goto :goto_1b
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .registers 5
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 3123
    const-string v0, "GSM"

    const-string v1, "Error! This functionality is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setDataOnRoamingEnabled(Z)V

    .line 2029
    return-void
.end method

.method public setFastDormancy(I)V
    .registers 3
    .parameter "fastdormancy"

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setFastDormancy(I)V

    .line 2083
    return-void
.end method

.method public setHiddenReset(ZLandroid/os/Message;)I
    .registers 7
    .parameter "Is_HiddenReset"
    .parameter "onComplete"

    .prologue
    .line 1425
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1427
    .local v0, resp:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setHiddenReset(ZLandroid/os/Message;)I

    move-result v1

    .line 1429
    .local v1, ret:I
    const/4 v2, 0x0

    return v2
.end method

.method public setInternalPIN(Ljava/lang/String;)V
    .registers 5
    .parameter "pin"

    .prologue
    .line 1337
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1338
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1339
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "internal_pin_value_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1340
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1341
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 5
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1643
    return-void
.end method

.method public setLineSelectInfo(ILandroid/os/Message;)V
    .registers 4
    .parameter "line"
    .parameter "onComplete"

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setLineSelectInfo(ILandroid/os/Message;)V

    .line 1846
    return-void
.end method

.method public setMute(Z)V
    .registers 3
    .parameter "muted"

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 1976
    return-void
.end method

.method public setNV_A5_ALGO(ILandroid/os/Message;)I
    .registers 8
    .parameter "data"
    .parameter "result"

    .prologue
    .line 1450
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Hidden] 1. GSMPhone.java : setNV_A5 ALGO= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1453
    .local v0, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNV_A5_ALGO(ILandroid/os/Message;)I

    move-result v1

    .line 1455
    .local v1, ret:I
    const/4 v2, 0x0

    return v2
.end method

.method public setNV_DL_FREQ(ILandroid/os/Message;)I
    .registers 8
    .parameter "data"
    .parameter "result"

    .prologue
    .line 1500
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Hidden] setNV_DL_FREQ: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1504
    .local v0, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNV_DL_FREQ(ILandroid/os/Message;)I

    move-result v1

    .line 1506
    .local v1, ret:I
    const/4 v2, 0x0

    return v2
.end method

.method public setNV_DL_FREQ_EN(ILandroid/os/Message;)I
    .registers 8
    .parameter "data"
    .parameter "result"

    .prologue
    .line 1487
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Hidden] setNV_DL_FREQ_EN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v3, 0x2b

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1491
    .local v0, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNV_DL_FREQ_EN(ILandroid/os/Message;)I

    move-result v1

    .line 1493
    .local v1, ret:I
    const/4 v2, 0x0

    return v2
.end method

.method public setNV_GCFFlag(ILandroid/os/Message;)I
    .registers 8
    .parameter "data"
    .parameter "result"

    .prologue
    .line 1475
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Hidden] 1. GSMPhone.java : setNV_GCFFlag= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1478
    .local v0, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNV_GCFFlag(ILandroid/os/Message;)I

    move-result v1

    .line 1480
    .local v1, ret:I
    const/4 v2, 0x0

    return v2
.end method

.method public setNV_HSDPACat(ILandroid/os/Message;)I
    .registers 8
    .parameter "data"
    .parameter "result"

    .prologue
    .line 1462
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Hidden] 1. GSMPhone.java : setNV_HSDPACat= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v3, 0x1d

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1465
    .local v0, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNV_HSDPACat(ILandroid/os/Message;)I

    move-result v1

    .line 1467
    .local v1, ret:I
    const/4 v2, 0x0

    return v2
.end method

.method public setNV_RRCVer(ILandroid/os/Message;)I
    .registers 8
    .parameter "data"
    .parameter "result"

    .prologue
    .line 1438
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Hidden] 1. GSMPhone.java : setNV RRC Version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v3, 0x1b

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1441
    .local v0, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNV_RRCVer(ILandroid/os/Message;)I

    move-result v1

    .line 1443
    .local v1, ret:I
    const/4 v2, 0x0

    return v2
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 6
    .parameter "response"

    .prologue
    .line 1917
    new-instance v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone$1;)V

    .line 1918
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iput-object p1, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 1919
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1922
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1924
    .local v0, msg:Landroid/os/Message;
    const-string v2, "GSM"

    const-string v3, "wrapping and sending message to connect automatically"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1927
    return-void
.end method

.method public setOTAMode(ILandroid/os/Message;)I
    .registers 8
    .parameter "data"
    .parameter "result"

    .prologue
    .line 1517
    iput p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mOTAmode:I

    .line 1520
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v3, 0x2a

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1521
    .local v0, response:Landroid/os/Message;
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Hidden] setOTAMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setOTAMode(ILandroid/os/Message;)I

    move-result v1

    .line 1524
    .local v1, ret:I
    const/4 v2, 0x0

    return v2
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1971
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 1972
    return-void
.end method

.method public setOriginalPreferredApn()V
    .registers 2

    .prologue
    .line 2074
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setOriginalPreferredApn()V

    .line 2075
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .registers 7
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 1781
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1783
    return-void
.end method

.method public setPreventType(IZ)V
    .registers 4
    .parameter "type"
    .parameter "prevent"

    .prologue
    .line 3166
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPreventType(IZ)V

    .line 3167
    return-void
.end method

.method public setRadioPower(Z)V
    .registers 3
    .parameter "power"

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRadioPower(Z)V

    .line 1219
    return-void
.end method

.method public setRadioPowerOff()V
    .registers 2

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRadioPowerOff()V

    .line 1212
    return-void
.end method

.method public setRilPowerOff()V
    .registers 1

    .prologue
    .line 1223
    return-void
.end method

.method public setStabilityTest(ILandroid/os/Message;)I
    .registers 8
    .parameter "cmd_type"
    .parameter "onComplete"

    .prologue
    .line 1399
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Blue Debug] GSMPhone.java : setStabilityTest cmd_type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v3, 0x19

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1402
    .local v0, resp:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setStabilityTest(ILandroid/os/Message;)I

    move-result v1

    .line 1404
    .local v1, ret:I
    const/4 v2, 0x0

    return v2
.end method

.method public final setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "property"
    .parameter "value"

    .prologue
    .line 806
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .registers 4
    .parameter "ttyMode"
    .parameter "onComplete"

    .prologue
    .line 1764
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setTTYMode(ILandroid/os/Message;)V

    .line 1765
    return-void
.end method

.method public setVoiceClarityInfo(Z)V
    .registers 5
    .parameter "value"

    .prologue
    .line 1859
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1860
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1861
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "vc_setting_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1862
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1864
    if-eqz p1, :cond_1b

    const/4 v2, 0x1

    :goto_17
    invoke-static {v2}, Landroid/media/AudioSystem;->setVoiceClarity(I)I

    .line 1865
    return-void

    .line 1864
    :cond_1b
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    const/4 v3, 0x0

    .line 1650
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    .line 1651
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v3, v3, p3}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1652
    .local v0, resp:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1653
    return-void
.end method

.method public setVsimMode(ZLandroid/os/Message;)V
    .registers 5
    .parameter "vsimOn"
    .parameter "response"

    .prologue
    .line 2984
    const-string v0, "GSM"

    const-string v1, "setVsimMode() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setVsimMode(ZLandroid/os/Message;)V

    .line 2986
    return-void
.end method

.method public simulateDataConnection(Lcom/android/internal/telephony/Phone$DataState;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 2963
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_20

    .line 2974
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 2978
    .local v0, dcState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :goto_d
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDataConnection:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 2979
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 2980
    return-void

    .line 2965
    .end local v0           #dcState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :pswitch_17
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 2966
    .restart local v0       #dcState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    goto :goto_d

    .line 2968
    .end local v0           #dcState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :pswitch_1a
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 2969
    .restart local v0       #dcState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    goto :goto_d

    .line 2971
    .end local v0           #dcState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :pswitch_1d
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 2972
    .restart local v0       #dcState:Lcom/android/internal/telephony/DataConnectionTracker$State;
    goto :goto_d

    .line 2963
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method public startDtmf(C)V
    .registers 5
    .parameter "c"

    .prologue
    .line 1189
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1190
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :goto_24
    return-void

    .line 1193
    :cond_25
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_24
.end method

.method public stopDtmf()V
    .registers 3

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 1200
    return-void
.end method

.method public storeALSSettingValue(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 1294
    sput p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mLine:I

    .line 1295
    return-void
.end method

.method public storeCLIRSettingValue(I)V
    .registers 5
    .parameter "value"

    .prologue
    .line 1270
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1271
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1272
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "clir_setting_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1273
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1274
    return-void
.end method

.method public switchHoldingAndActive()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 833
    return-void
.end method

.method protected syncClirSetting()V
    .registers 5

    .prologue
    .line 2183
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2184
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "clir_key"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2185
    .local v0, clirSetting:I
    if-ltz v0, :cond_17

    .line 2186
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 2188
    :cond_17
    return-void
.end method

.method public toggleCurrentLine()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 3056
    sget v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mLine:I

    if-ne v2, v3, :cond_7

    move v2, v3

    .line 3067
    :goto_6
    return v2

    .line 3059
    :cond_7
    sget v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mLine:I

    if-nez v2, :cond_2a

    const/4 v2, 0x1

    move v1, v2

    .line 3061
    .local v1, newLine:I
    :goto_d
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeALSSettingValue(I)V

    .line 3062
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setLineSelectInfo(ILandroid/os/Message;)V

    .line 3064
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ALS_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3065
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3067
    sget v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mLine:I

    goto :goto_6

    .line 3059
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #newLine:I
    :cond_2a
    const/4 v2, 0x0

    move v1, v2

    goto :goto_d
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .registers 5
    .parameter "h"

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 817
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 818
    :cond_14
    return-void
.end method

.method updateCurrentCBMIInProvider(Ljava/util/ArrayList;I)Z
    .registers 24
    .parameter
    .parameter "cbmi_totalnumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 2708
    .local p1, cbmiList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v9, p1

    .line 2709
    .local v9, cbmiListInSIM:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2719
    .local v11, chmiList_number:I
    const-string v17, "[GSMPhone]"

    const-string v18, "updateCurrentCBMIInProvider() - START!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    move-object/from16 v17, v0

    if-eqz v17, :cond_182

    .line 2723
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "content://cbs/channels"

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2724
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 2725
    .local v15, values:Landroid/content/ContentValues;
    const-string v17, "[GSMPhone]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "updateCurrentCBMIInProvider()-chmiList number: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    const/4 v13, 0x0

    .local v13, i:I
    :goto_4d
    if-ge v13, v11, :cond_ff

    .line 2727
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 2728
    .local v4, cbChannel_integer:Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2730
    .local v3, cbChannel_int:I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 2731
    .local v5, cbChannel_string:Ljava/lang/String;
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2732
    .local v6, cbSelected_integer:Ljava/lang/Integer;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2733
    .local v7, cbSimIndex_integer:Ljava/lang/Integer;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 2735
    .local v14, now:Ljava/lang/Long;
    const-string v17, "selected"

    move-object v0, v15

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2736
    const-string v17, "simindex"

    move-object v0, v15

    move-object/from16 v1, v17

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2737
    const-string v17, "channelid"

    move-object v0, v15

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2738
    const-string v17, "created"

    move-object v0, v15

    move-object/from16 v1, v17

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "content://cbs/channels"

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2741
    const-string v17, "[GSMPhone]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "updateCurrentCBMIInProvider()-Index: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "cb channel_int: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    const-string v17, "[GSMPhone]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "updateCurrentCBMIInProvider()-Index: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "cb channel_string: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4d

    .line 2745
    .end local v3           #cbChannel_int:I
    .end local v4           #cbChannel_integer:Ljava/lang/Integer;
    .end local v5           #cbChannel_string:Ljava/lang/String;
    .end local v6           #cbSelected_integer:Ljava/lang/Integer;
    .end local v7           #cbSimIndex_integer:Ljava/lang/Integer;
    .end local v14           #now:Ljava/lang/Long;
    :cond_ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "content://cbset/settings"

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2746
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 2747
    .local v16, valuesSetting:Landroid/content/ContentValues;
    move/from16 v8, p2

    .line 2748
    .local v8, cbTotalNoInSim:I
    const-string v17, "[GSMPhone]"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "updateCurrentCBMIInProvider()-cbTotalNoInSim: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    const-string v17, "cbmitotalnoinsim"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "content://cbset/settings"

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2752
    new-instance v10, Landroid/content/Intent;

    const-string v17, "android.intent.action.SIMCBMI_READ_COMPLETE"

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2753
    .local v10, cbmi_intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_170
    .catch Landroid/database/SQLException; {:try_start_15 .. :try_end_170} :catch_173

    .line 2755
    const/16 v17, 0x1

    .line 2761
    .end local v8           #cbTotalNoInSim:I
    .end local v10           #cbmi_intent:Landroid/content/Intent;
    .end local v13           #i:I
    .end local v15           #values:Landroid/content/ContentValues;
    .end local v16           #valuesSetting:Landroid/content/ContentValues;
    :goto_172
    return v17

    .line 2756
    :catch_173
    move-exception v17

    move-object/from16 v12, v17

    .line 2757
    .local v12, e:Landroid/database/SQLException;
    const-string v17, "[GSMPhone]"

    const-string v18, "Can\'t store current CBMI in SIM to SQLite DB of content://cbs/channels"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v12

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2761
    .end local v12           #e:Landroid/database/SQLException;
    :cond_182
    const/16 v17, 0x0

    goto :goto_172
.end method

.method updateCurrentCBMIInProvider_VIVO(I)Z
    .registers 11
    .parameter "cbmi_totalnumber"

    .prologue
    const-string v4, "content://cbset/settings"

    const-string v8, "[GSMPhone]"

    .line 2782
    const-string v4, "[GSMPhone]"

    const-string v4, "updateCurrentCBMIInProvider_VIVO() - START!!"

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v4, :cond_6d

    .line 2809
    :try_start_f
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://cbset/settings"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2810
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2811
    .local v3, valuesSetting:Landroid/content/ContentValues;
    move v0, p1

    .line 2812
    .local v0, cbTotalNoInSim:I
    const-string v4, "[GSMPhone]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCurrentCBMIInProvider_VIVO()-cbTotalNoInSim: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    const-string v4, "cbmitotalnoinsim"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2814
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://cbset/settings"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2816
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIMCBMI_READ_COMPLETE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2817
    .local v1, cbmi_intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_62
    .catch Landroid/database/SQLException; {:try_start_f .. :try_end_62} :catch_64

    .line 2819
    const/4 v4, 0x1

    .line 2825
    .end local v0           #cbTotalNoInSim:I
    .end local v1           #cbmi_intent:Landroid/content/Intent;
    .end local v3           #valuesSetting:Landroid/content/ContentValues;
    :goto_63
    return v4

    .line 2820
    :catch_64
    move-exception v4

    move-object v2, v4

    .line 2821
    .local v2, e:Landroid/database/SQLException;
    const-string v4, "[GSMPhone]"

    const-string v4, "Can\'t store current cbmi total number in SIM to SQLite DB of content://cbset/settings"

    invoke-static {v8, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2825
    .end local v2           #e:Landroid/database/SQLException;
    :cond_6d
    const/4 v4, 0x0

    goto :goto_63
.end method

.method updateCurrentCarrierInProvider()Z
    .registers 6

    .prologue
    .line 2668
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz v3, :cond_30

    .line 2670
    :try_start_4
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "current"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2671
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2672
    .local v1, map:Landroid/content/ContentValues;
    const-string v3, "numeric"

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2673
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_25
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_25} :catch_27

    .line 2674
    const/4 v3, 0x1

    .line 2679
    .end local v1           #map:Landroid/content/ContentValues;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_26
    return v3

    .line 2675
    :catch_27
    move-exception v3

    move-object v0, v3

    .line 2676
    .local v0, e:Landroid/database/SQLException;
    const-string v3, "GSM"

    const-string v4, "Can\'t store current operator"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2679
    .end local v0           #e:Landroid/database/SQLException;
    :cond_30
    const/4 v3, 0x0

    goto :goto_26
.end method

.method updateMessageWaitingCphsIndicator(IZ)V
    .registers 5
    .parameter "line"
    .parameter "mwi"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    if-eqz p2, :cond_9

    const/4 v1, -0x1

    :goto_5
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMessageWaiting(II)V

    .line 786
    return-void

    .line 785
    :cond_9
    const/4 v1, 0x0

    goto :goto_5
.end method

.method updateMessageWaitingIndicator(Z)V
    .registers 5
    .parameter "mwi"

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/4 v1, 0x1

    if-eqz p1, :cond_a

    const/4 v2, -0x1

    :goto_6
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMessageWaiting(II)V

    .line 768
    return-void

    .line 767
    :cond_a
    const/4 v2, 0x0

    goto :goto_6
.end method

.method updateMessageWaitingIndicatorwithcount(ZI)V
    .registers 5
    .parameter "mwi"
    .parameter "countWaiting"

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/gsm/SIMRecords;->setVoiceMessageWaiting(II)V

    .line 777
    return-void
.end method

.method public updatePINStatus()V
    .registers 2

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/gsm/SimCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimCard;->updateSimPinStatus()V

    .line 1670
    return-void
.end method

.method public updateServiceLocation(Landroid/os/Message;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getLacAndCid(Landroid/os/Message;)V

    .line 2013
    return-void
.end method
