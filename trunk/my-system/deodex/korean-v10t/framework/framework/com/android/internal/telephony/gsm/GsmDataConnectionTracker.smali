.class public final Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.super Lcom/android/internal/telephony/DataConnectionTracker;
.source "GsmDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;
    }
.end annotation


# static fields
.field private static APN_DEFAULT_ID:I = 0x0

.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static APN_MMS_ID:I = 0x0

.field private static APN_NUM_TYPES:I = 0x0

.field private static APN_SUPL_ID:I = 0x0

.field private static final DATA_INACTIVITY_MAX_COUNT:I = 0xa

.field private static final DBG:Z = true

.field static final EVENT_GO_FAST_DORMANCY_DONE:I = 0x27

.field private static final GO_DORMANCY_RETRY_MAX_COUNT:I = 0x5

.field private static final GO_DORMANCY_TRY_LIMIT:I = 0x5

.field private static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.gprs-reconnect"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_REASON:Ljava/lang/String; = "reason"

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final PDP_CONNECTION_POOL_SIZE:I = 0x1

.field static final PDP_STATE_INACTIVE:I = 0x0

.field static final PDP_STATE_PHYSLINK_DOWN:I = 0x1

.field static final PDP_STATE_PHYSLINK_UP:I = 0x2

.field private static final POLL_PDP_MILLIS:I = 0x1388

.field static final PREFERAPN_URI:Landroid/net/Uri;

.field private static operator_code:Ljava/lang/String;


# instance fields
.field private DataInactivityCounter:I

.field private DataInactivityMaxCount:I

.field private GoDormancyCounter:I

.field private allApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field private apnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

.field private bIsReconnectTrial:Z

.field private canSetPreferApn:Z

.field private dataEnabled:[Z

.field private enableFDsetting:Z

.field failNextConnect:Z

.field private lastPDPstate:I

.field private mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

.field private mActivePdp:Lcom/android/internal/telephony/gsm/PdpConnection;

.field private mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPsRestricted:Z

.field private mIsScreenOn:Z

.field private mOriginalPreferredApnID:I

.field private mPdpResetCount:I

.field private mPollNetStat:Ljava/lang/Runnable;

.field private mPreventDataEnable:[Z

.field private mRequestedApnType:Ljava/lang/String;

.field private mReregisterOnReconnectFailure:Z

.field private mResolver:Landroid/content/ContentResolver;

.field netstat:Landroid/os/INetStatService;

.field nextReconnectDelay:J

.field private noAutoAttach:Z

.field private pdpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field pm:Landroid/os/PowerManager;

.field private preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

.field sWakeLock:Landroid/os/PowerManager$WakeLock;

.field private startFDlogic:Z

.field private waitingApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 100
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->operator_code:Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_DEFAULT_ID:I

    .line 150
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_MMS_ID:I

    .line 151
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_SUPL_ID:I

    .line 152
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_NUM_TYPES:I

    .line 179
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 10
    .parameter "p"

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 267
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 105
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->noAutoAttach:Z

    .line 106
    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->nextReconnectDelay:J

    .line 107
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 112
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I

    .line 113
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z

    .line 116
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->failNextConnect:Z

    .line 124
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    .line 131
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    .line 133
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 141
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 154
    sget v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_NUM_TYPES:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataEnabled:[Z

    .line 159
    new-array v2, v4, [Z

    fill-array-data v2, :array_160

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreventDataEnable:[Z

    .line 163
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    .line 181
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    .line 184
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mOriginalPreferredApnID:I

    .line 189
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startFDlogic:Z

    .line 190
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->enableFDsetting:Z

    .line 197
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->DataInactivityCounter:I

    .line 198
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->GoDormancyCounter:I

    .line 199
    const/16 v2, 0xa

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->DataInactivityMaxCount:I

    .line 208
    iput v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->lastPDPstate:I

    .line 216
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->bIsReconnectTrial:Z

    .line 219
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1242
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    .line 268
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 270
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 271
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xc

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 272
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/4 v3, 0x4

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 273
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x6

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 274
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/16 v3, 0xf

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 275
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/16 v3, 0xe

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 276
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v3, 0x1a

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForGprsAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 277
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v3, 0x13

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForGprsDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 278
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v3, 0x15

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 279
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v3, 0x16

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 280
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v3, 0x20

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 281
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v3, 0x21

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 283
    const-string v2, "netstat"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetStatService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetStatService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->netstat:Landroid/os/INetStatService;

    .line 287
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pm:Landroid/os/PowerManager;

    .line 288
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pm:Landroid/os/PowerManager;

    const-string v3, "DataTracker-FD"

    invoke-virtual {v2, v7, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 291
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 292
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.internal.telephony.gprs-reconnect"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->h:Lcom/android/internal/telephony/gsm/GSMPhone$MyHandler;

    invoke-virtual {v2, v3, v0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 301
    iput-object p0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 302
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    .line 304
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

    .line 305
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v2, v3, v7, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 308
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createAllPdpList()V

    .line 312
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 313
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataEnabled:[Z

    sget v3, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_DEFAULT_ID:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getSocketDataCallEnabled()Z

    move-result v4

    aput-boolean v4, v2, v3

    .line 314
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data enabled ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataEnabled:[Z

    sget v5, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_DEFAULT_ID:I

    aget-boolean v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataEnabled:[Z

    sget v3, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_DEFAULT_ID:I

    aget-boolean v2, v2, v3

    if-nez v2, :cond_15d

    move v2, v7

    :goto_154
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->noAutoAttach:Z

    .line 319
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->operator_code:Ljava/lang/String;

    .line 325
    return-void

    :cond_15d
    move v2, v6

    .line 315
    goto :goto_154

    .line 159
    nop

    :array_160
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private IsPreferredApnChanged()Z
    .registers 5

    .prologue
    const-string v3, "GSM"

    .line 983
    const/4 v0, 0x1

    .line 984
    .local v0, change:Z
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActiveApn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preferred APN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v1, :cond_92

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v1, :cond_92

    .line 988
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->user:Ljava/lang/String;

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->user:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/ApnSetting;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    :cond_65
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->user:Ljava/lang/String;

    if-nez v1, :cond_92

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->user:Ljava/lang/String;

    if-nez v1, :cond_92

    :cond_71
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->password:Ljava/lang/String;

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->password:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/ApnSetting;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    :cond_85
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->password:Ljava/lang/String;

    if-nez v1, :cond_92

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->password:Ljava/lang/String;

    if-nez v1, :cond_92

    .line 993
    :cond_91
    const/4 v0, 0x0

    .line 996
    :cond_92
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is Preferred APN changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    return v0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->txPkts:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->rxPkts:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->netStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->txPkts:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->rxPkts:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$1814(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .registers 5
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sentSinceLastRecv:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$2102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->enableFDsetting:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->DataInactivityCounter:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->DataInactivityCounter:I

    return p1
.end method

.method static synthetic access$2804(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->DataInactivityCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->DataInactivityCounter:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->DataInactivityMaxCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startFDlogic:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startFDlogic:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->lastPDPstate:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->GoDormancyCounter:I

    return v0
.end method

.method static synthetic access$3302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->GoDormancyCounter:I

    return p1
.end method

.method static synthetic access$3304(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->GoDormancyCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->GoDormancyCounter:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$3702(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->netStatPollPeriod:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$4000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->netStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->netStatPollPeriod:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->txPkts:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->rxPkts:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->txPkts:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->rxPkts:J

    return-wide p1
.end method

.method private apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1910
    .local p1, apns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1911
    .local v1, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .end local p0
    .local v2, size:I
    :goto_a
    if-ge v0, v2, :cond_28

    .line 1912
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1911
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1916
    :cond_28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private buildWaitingApns()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v7, "GSM"

    const-string v6, ":"

    .line 1865
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1866
    .local v1, apnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 1868
    .local v3, operator:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 1869
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v4, :cond_73

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v4, :cond_73

    .line 1870
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preferred APN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 1873
    const-string v4, "GSM"

    const-string v4, "Waiting APN set to preferred APN"

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1890
    :cond_6b
    return-object v1

    .line 1877
    :cond_6c
    const/4 v4, -0x1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPreferredApn(I)V

    .line 1878
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1883
    :cond_73
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    if-eqz v4, :cond_6b

    .line 1884
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_7d
    :goto_7d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1885
    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 1886
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7d
.end method

.method private cleanUpConnection(ZLjava/lang/String;)V
    .registers 12
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    const/4 v8, 0x0

    .line 754
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Clean up connection due to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 757
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_30

    .line 758
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "alarm"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 760
    .local v1, am:Landroid/app/AlarmManager;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 761
    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 764
    .end local v1           #am:Landroid/app/AlarmManager;
    :cond_30
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 766
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnection;

    .line 767
    .local v2, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/gsm/PdpConnection;

    move-object v5, v0

    .line 768
    .local v5, pdp:Lcom/android/internal/telephony/gsm/PdpConnection;
    if-eqz p1, :cond_57

    .line 769
    const/16 v6, 0x19

    invoke-virtual {p0, v6, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 770
    .local v4, msg:Landroid/os/Message;
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/gsm/PdpConnection;->disconnect(Landroid/os/Message;)V

    goto :goto_3b

    .line 772
    .end local v4           #msg:Landroid/os/Message;
    :cond_57
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/PdpConnection;->clearSettings()V

    goto :goto_3b

    .line 775
    .end local v2           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v5           #pdp:Lcom/android/internal/telephony/gsm/PdpConnection;
    :cond_5b
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 777
    if-nez p1, :cond_6c

    .line 778
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 779
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6, p2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 780
    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 782
    :cond_6c
    return-void
.end method

.method private createAllApnList()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 1804
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    .line 1805
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 1807
    .local v7, operator:Ljava/lang/String;
    if-eqz v7, :cond_4e

    .line 1808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1810
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1813
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4e

    .line 1814
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4b

    .line 1815
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    .line 1824
    :cond_4b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1828
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_4e
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No APN found for carrier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1830
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1831
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 1840
    :cond_73
    :goto_73
    return-void

    .line 1833
    :cond_74
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getPreferredApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1834
    const-string v0, "GSM"

    const-string v1, "Get PreferredAPN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    .line 1836
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1837
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPreferredApn(I)V

    goto :goto_73
.end method

.method private createAllPdpList()V
    .registers 4

    .prologue
    .line 1843
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    .line 1846
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    const/4 v2, 0x1

    if-ge v0, v2, :cond_1a

    .line 1847
    new-instance v1, Lcom/android/internal/telephony/gsm/PdpConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/PdpConnection;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 1848
    .local v1, pdp:Lcom/android/internal/telephony/DataConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1846
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1850
    .end local v1           #pdp:Lcom/android/internal/telephony/DataConnection;
    :cond_1a
    return-void
.end method

.method private createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .registers 19
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 801
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 802
    .local v16, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_fd

    .line 804
    :cond_b
    const-string v3, "type"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 806
    .local v15, types:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/gsm/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "numeric"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "proxy"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "port"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmsc"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mmsproxy"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mmsport"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "user"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "password"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "preferapp"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v2 .. v15}, Lcom/android/internal/telephony/gsm/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 825
    .local v2, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f7

    .line 828
    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    :cond_f7
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_b

    .line 831
    .end local v2           #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    .end local v15           #types:[Ljava/lang/String;
    :cond_fd
    return-object v16
.end method

.method private destroyAllPdpList()V
    .registers 3

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 1855
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1857
    :cond_b
    return-void
.end method

.method private doRecovery()V
    .registers 5

    .prologue
    .line 1193
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_27

    .line 1194
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "pdp_watchdog_max_pdp_reset_fail_count"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1197
    .local v0, maxPdpReset:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I

    if-ge v1, v0, :cond_28

    .line 1198
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I

    .line 1199
    const v1, 0xc3b7

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1200
    const/4 v1, 0x1

    const-string v2, "pdpReset"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1209
    .end local v0           #maxPdpReset:I
    :cond_27
    :goto_27
    return-void

    .line 1202
    .restart local v0       #maxPdpReset:I
    :cond_28
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I

    .line 1203
    const v1, 0xc3b8

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1204
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    goto :goto_27
.end method

.method private findFreePdp()Lcom/android/internal/telephony/gsm/PdpConnection;
    .registers 7

    .prologue
    .line 835
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 836
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/PdpConnection;

    move-object v3, v0

    .line 837
    .local v3, pdp:Lcom/android/internal/telephony/gsm/PdpConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/PdpConnection;->getState()Lcom/android/internal/telephony/DataConnection$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnection$State;->INACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    if-ne v4, v5, :cond_6

    move-object v4, v3

    .line 841
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/PdpConnection;
    :goto_1f
    return-object v4

    :cond_20
    const/4 v4, 0x0

    goto :goto_1f
.end method

.method private getDataRoaming()Z
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getDataRoaming()Z

    move-result v0

    return v0
.end method

.method private getNextApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .registers 4

    .prologue
    .line 1898
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    .line 1899
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    const/4 v0, 0x0

    .line 1901
    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    if-eqz v1, :cond_12

    .line 1902
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1903
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    check-cast v0, Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1906
    .restart local v0       #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    :cond_12
    return-object v0
.end method

.method private getPreferredApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .registers 14

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    const-string v12, "_id"

    .line 1945
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, v3

    .line 1975
    :goto_e
    return-object v0

    .line 1949
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v12, v2, v10

    const-string v4, "name"

    aput-object v4, v2, v11

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1953
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_70

    .line 1954
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    .line 1959
    :goto_36
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v0, :cond_73

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_73

    .line 1961
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1962
    const-string v0, "_id"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1963
    .local v9, pos:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_53
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1964
    .local v8, p:Lcom/android/internal/telephony/gsm/ApnSetting;
    iget v0, v8, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    if-ne v0, v9, :cond_53

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1965
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 1966
    goto :goto_e

    .line 1956
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #p:Lcom/android/internal/telephony/gsm/ApnSetting;
    .end local v9           #pos:I
    :cond_70
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    goto :goto_36

    .line 1971
    :cond_73
    if-eqz v6, :cond_78

    .line 1972
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_78
    move-object v0, v3

    .line 1975
    goto :goto_e
.end method

.method private getRestoreDefaultApnDelay()I
    .registers 3

    .prologue
    .line 1786
    const-string v1, "android.telephony.apn-restore"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1788
    .local v0, restoreApnDelayStr:Ljava/lang/String;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_18

    .line 1790
    :try_start_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_15} :catch_17

    move-result v1

    .line 1794
    :goto_16
    return v1

    .line 1791
    :catch_17
    move-exception v1

    .line 1794
    :cond_18
    const v1, 0xea60

    goto :goto_16
.end method

.method private isApnTypeActive(Ljava/lang/String;)Z
    .registers 3
    .parameter "type"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isApnTypeAvailable(Ljava/lang/String;)Z
    .registers 5
    .parameter "type"

    .prologue
    .line 517
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    if-eqz v2, :cond_1e

    .line 518
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 519
    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 520
    const/4 v2, 0x1

    .line 524
    .end local v0           #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private isDataAllowed()Z
    .registers 3

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataRoaming()Z

    move-result v0

    .line 621
    .local v0, roaming:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_12
    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private isEnabled(Ljava/lang/String;)Z
    .registers 4
    .parameter "apnType"

    .prologue
    .line 528
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 529
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataEnabled:[Z

    sget v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_DEFAULT_ID:I

    aget-boolean v0, v0, v1

    .line 535
    :goto_e
    return v0

    .line 530
    :cond_f
    const-string v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 531
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataEnabled:[Z

    sget v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_MMS_ID:I

    aget-boolean v0, v0, v1

    goto :goto_e

    .line 532
    :cond_1e
    const-string v0, "supl"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 533
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataEnabled:[Z

    sget v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_SUPL_ID:I

    aget-boolean v0, v0, v1

    goto :goto_e

    .line 535
    :cond_2d
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private notifyDefaultData(Ljava/lang/String;)V
    .registers 4
    .parameter "reason"

    .prologue
    .line 1128
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupDnsProperties()V

    .line 1129
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1130
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    .line 1133
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->nextReconnectDelay:J

    .line 1134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 1135
    return-void
.end method

.method private notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .registers 3
    .parameter "lastFailCauseCode"

    .prologue
    .line 1531
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1532
    return-void
.end method

.method private onApnChanged()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const-string v4, "apnChanged"

    .line 949
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_15

    .line 951
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 977
    :cond_14
    :goto_14
    return-void

    .line 956
    :cond_15
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v1, v2, :cond_4a

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v1, v2, :cond_4a

    const/4 v1, 0x1

    move v0, v1

    .line 959
    .local v0, isConnected:Z
    :goto_23
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 963
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createAllApnList()V

    .line 964
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->IsPreferredApnChanged()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 965
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v1, v2, :cond_14

    .line 966
    const-string v1, "apnChanged"

    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 967
    if-nez v0, :cond_14

    .line 969
    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->nextReconnectDelay:J

    .line 970
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 971
    const-string v1, "apnChanged"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_14

    .end local v0           #isConnected:Z
    :cond_4a
    move v0, v3

    .line 956
    goto :goto_23
.end method

.method private onGprsAttached()V
    .registers 4

    .prologue
    const-string v2, "gprsAttached"

    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_13

    .line 649
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    .line 650
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gprsAttached"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 658
    :goto_12
    return-void

    .line 652
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_23

    .line 653
    const/4 v0, 0x0

    const-string v1, "gprsAttached"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 654
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->nextReconnectDelay:J

    .line 656
    :cond_23
    const-string v0, "gprsAttached"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_12
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .parameter "types"

    .prologue
    .line 791
    if-eqz p1, :cond_a

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 792
    :cond_a
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 793
    .local v0, result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 797
    :goto_12
    return-object v0

    .line 795
    .end local v0           #result:[Ljava/lang/String;
    :cond_13
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:[Ljava/lang/String;
    goto :goto_12
.end method

.method private pdpStatesGetCidMatchingIndex(Ljava/util/ArrayList;I)I
    .registers 6
    .parameter
    .parameter "cid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataCallState;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 935
    .local p1, states:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .end local p0
    .local v1, s:I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 936
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    iget v2, p0, Lcom/android/internal/telephony/DataCallState;->cid:I

    if-ne v2, p2, :cond_13

    move v2, v0

    .line 939
    :goto_12
    return v2

    .line 935
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 939
    :cond_16
    const/4 v2, -0x1

    goto :goto_12
.end method

.method private pdpStatesHasActiveCID(Ljava/util/ArrayList;I)Z
    .registers 6
    .parameter
    .parameter "cid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataCallState;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 922
    .local p1, states:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .end local p0
    .local v1, s:I
    :goto_5
    if-ge v0, v1, :cond_20

    .line 923
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    iget v2, p0, Lcom/android/internal/telephony/DataCallState;->cid:I

    if-ne v2, p2, :cond_1d

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    iget v2, p0, Lcom/android/internal/telephony/DataCallState;->active:I

    if-eqz v2, :cond_1d

    .line 924
    const/4 v2, 0x1

    .line 928
    :goto_1c
    return v2

    .line 922
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 928
    :cond_20
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method private pdpStatesHasCID(Ljava/util/ArrayList;I)Z
    .registers 6
    .parameter
    .parameter "cid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataCallState;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 913
    .local p1, states:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .end local p0
    .local v1, s:I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 914
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    iget v2, p0, Lcom/android/internal/telephony/DataCallState;->cid:I

    if-ne v2, p2, :cond_13

    const/4 v2, 0x1

    .line 917
    :goto_12
    return v2

    .line 913
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 917
    :cond_16
    const/4 v2, 0x0

    goto :goto_12
.end method

.method private reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V
    .registers 16
    .parameter "lastFailCauseCode"
    .parameter "reason"

    .prologue
    const-wide/32 v11, 0x1b7740

    const-wide/16 v9, 0x2710

    const/4 v8, 0x0

    const-string v7, "GSM"

    .line 1467
    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reconnectAfterFail => lastFailCauseCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_ba

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->bIsReconnectTrial:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_ba

    .line 1488
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->nextReconnectDelay:J

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-nez v2, :cond_40

    .line 1489
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4024

    mul-double/2addr v2, v4

    double-to-int v2, v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->nextReconnectDelay:J

    .line 1492
    :cond_40
    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PDP activate failed. Scheduling next attempt for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->nextReconnectDelay:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1497
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.gprs-reconnect"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1498
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "reason"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1499
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 1501
    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->nextReconnectDelay:J

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1510
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->nextReconnectDelay:J

    cmp-long v2, v2, v9

    if-gez v2, :cond_bb

    .line 1511
    iput-wide v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->nextReconnectDelay:J

    .line 1515
    :goto_9e
    const-string v2, "GSM"

    const-string v2, "[DataConnection] nextReconnect timer is default value *** sungwoo"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->nextReconnectDelay:J

    cmp-long v2, v2, v11

    if-lez v2, :cond_ad

    .line 1517
    iput-wide v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->nextReconnectDelay:J

    .line 1521
    :cond_ad
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z

    move-result v2

    if-nez v2, :cond_c3

    .line 1522
    const-string v2, "GSM"

    const-string v2, "NOT Posting GPRS Unavailable notification -- likely transient error"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_ba
    :goto_ba
    return-void

    .line 1513
    .restart local v0       #am:Landroid/app/AlarmManager;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_bb
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->nextReconnectDelay:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->nextReconnectDelay:J

    goto :goto_9e

    .line 1525
    :cond_c3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    goto :goto_ba
.end method

.method private resetPollStats()V
    .registers 3

    .prologue
    const-wide/16 v0, -0x1

    .line 1186
    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->txPkts:J

    .line 1187
    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->rxPkts:J

    .line 1188
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sentSinceLastRecv:J

    .line 1189
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->netStatPollPeriod:I

    .line 1190
    return-void
.end method

.method private retryAfterDisconnected(Ljava/lang/String;)Z
    .registers 4
    .parameter "reason"

    .prologue
    .line 1457
    const/4 v0, 0x1

    .line 1459
    .local v0, retry:Z
    const-string v1, "radioTurnedOff"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "dataDisabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1461
    :cond_11
    const/4 v0, 0x0

    .line 1463
    :cond_12
    return v0
.end method

.method private setEnabled(Ljava/lang/String;Z)V
    .registers 7
    .parameter "apnType"
    .parameter "enable"

    .prologue
    const-string v3, "GSM"

    .line 540
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataEnabled:[Z

    sget v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_DEFAULT_ID:I

    aput-boolean p2, v0, v1

    .line 548
    :cond_38
    :goto_38
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dataEnabled[DEFAULT_APN]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataEnabled:[Z

    sget v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_DEFAULT_ID:I

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dataEnabled[MMS_APN]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataEnabled:[Z

    sget v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_MMS_ID:I

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dataEnabled[SUPL_APN]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataEnabled:[Z

    sget v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_SUPL_ID:I

    aget-boolean v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void

    .line 543
    :cond_77
    const-string v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 544
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataEnabled:[Z

    sget v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_MMS_ID:I

    aput-boolean p2, v0, v1

    goto :goto_38

    .line 545
    :cond_86
    const-string v0, "supl"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataEnabled:[Z

    sget v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_SUPL_ID:I

    aput-boolean p2, v0, v1

    goto :goto_38
.end method

.method private setPreferredApn(I)V
    .registers 6
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    .line 1930
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    if-nez v2, :cond_6

    .line 1942
    :cond_5
    :goto_5
    return-void

    .line 1934
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1935
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1937
    if-ltz p1, :cond_5

    .line 1938
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1939
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1940
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_5
.end method

.method private setupData(Ljava/lang/String;)Z
    .registers 8
    .parameter "reason"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 849
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getNextApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v0

    .line 850
    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    if-nez v0, :cond_a

    move v3, v4

    .line 876
    :goto_9
    return v3

    .line 851
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->findFreePdp()Lcom/android/internal/telephony/gsm/PdpConnection;

    move-result-object v2

    .line 852
    .local v2, pdp:Lcom/android/internal/telephony/gsm/PdpConnection;
    if-nez v2, :cond_17

    .line 853
    const-string v3, "setupData: No free PdpConnection found!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    move v3, v4

    .line 854
    goto :goto_9

    .line 860
    :cond_17
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 863
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 864
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/PdpConnection;

    .line 866
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 867
    .local v1, msg:Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 868
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 869
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/gsm/PdpConnection;->connect(Lcom/android/internal/telephony/gsm/ApnSetting;Landroid/os/Message;)V

    .line 875
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    move v3, v5

    .line 876
    goto :goto_9
.end method

.method private setupDnsProperties()V
    .registers 15

    .prologue
    const-string v13, "net.dnschange"

    const-string v12, "net.dns"

    const-string v11, "."

    const-string v10, ""

    .line 1138
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 1139
    .local v2, mypid:I
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1144
    .local v7, servers:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1145
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    array-length v8, v7

    if-ge v1, v8, :cond_47

    .line 1146
    aget-object v6, v7, v1

    .line 1147
    .local v6, serverAddr:Ljava/lang/String;
    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_44

    .line 1148
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "net.dns"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    add-int/lit8 v0, v0, 0x1

    .line 1145
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1152
    .end local v6           #serverAddr:Ljava/lang/String;
    :cond_47
    add-int/lit8 v1, v0, 0x1

    :goto_49
    const/4 v8, 0x4

    if-gt v1, v8, :cond_7b

    .line 1153
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "net.dns"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1154
    .local v4, propName:Ljava/lang/String;
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1155
    .local v5, propVal:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_78

    .line 1156
    const-string v8, ""

    invoke-static {v4, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    :cond_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 1163
    .end local v4           #propName:Ljava/lang/String;
    .end local v5           #propVal:Ljava/lang/String;
    :cond_7b
    const-string v8, "net.dnschange"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1164
    .restart local v5       #propVal:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_a5

    .line 1166
    :try_start_87
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1167
    .local v3, n:I
    const-string v8, "net.dnschange"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/NumberFormatException; {:try_start_87 .. :try_end_a5} :catch_a6

    .line 1171
    .end local v3           #n:I
    :cond_a5
    :goto_a5
    return-void

    .line 1168
    :catch_a6
    move-exception v8

    goto :goto_a5
.end method

.method private shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z
    .registers 4
    .parameter "cause"

    .prologue
    .line 1441
    const/4 v0, 0x1

    .line 1446
    .local v0, shouldPost:Z
    if-eqz v0, :cond_9

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p1, v1, :cond_9

    const/4 v1, 0x1

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V
    .registers 5
    .parameter "cause"
    .parameter "reason"

    .prologue
    .line 1920
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 1921
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v1, "default"

    if-eq v0, v1, :cond_13

    .line 1922
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1927
    :goto_12
    return-void

    .line 1925
    :cond_13
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V

    goto :goto_12
.end method

.method private startPeriodicPdpPoll()V
    .registers 4

    .prologue
    const/4 v0, 0x7

    .line 1180
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->removeMessages(I)V

    .line 1182
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1183
    return-void
.end method

.method private trySetupData(Ljava/lang/String;)Z
    .registers 10
    .parameter "reason"

    .prologue
    const/4 v5, 0x0

    const-string v7, "GSM"

    const-string v6, "default"

    .line 661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***trySetupData due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_54

    const-string v4, "(unspecified)"

    :goto_14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 664
    const-string v3, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DSAC DEB] trySetupData with mIsPsRestricted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v3

    if-eqz v3, :cond_56

    .line 669
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 670
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 672
    const-string v3, "GSM"

    const-string v3, "(fix?) We\'re on the simulator; assuming data is connected"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v3, 0x1

    .line 740
    :goto_53
    return v3

    :cond_54
    move-object v4, p1

    .line 661
    goto :goto_14

    .line 678
    :cond_56
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v4, "default"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 680
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getSocketDataCallEnabled()Z

    move-result v3

    if-nez v3, :cond_74

    .line 681
    const-string v3, "[trySetupData]"

    const-string v4, "Socket data call is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string v3, "default"

    invoke-direct {p0, v6, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setEnabled(Ljava/lang/String;Z)V

    move v3, v5

    .line 686
    goto :goto_53

    .line 691
    :cond_74
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    .line 692
    .local v1, gprsState:I
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataRoaming()Z

    move-result v2

    .line 693
    .local v2, roaming:Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    .line 695
    .local v0, desiredPowerState:Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_94

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_10e

    :cond_94
    if-eqz v1, :cond_9a

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->noAutoAttach:Z

    if-eqz v3, :cond_10e

    :cond_9a
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v3

    if-eqz v3, :cond_10e

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isDataAllowed()Z

    move-result v3

    if-eqz v3, :cond_10e

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    if-nez v3, :cond_10e

    if-eqz v0, :cond_10e

    .line 702
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_ec

    .line 703
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->buildWaitingApns()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    .line 704
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 705
    const-string v3, "No APN found"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 706
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    move v3, v5

    .line 707
    goto :goto_53

    .line 709
    :cond_d0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create from allApns : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 714
    :cond_ec
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setup watingApns : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 716
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupData(Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_53

    .line 719
    :cond_10e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trySetupData: Not ready for data:  dataState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gprsState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " UMTS="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " phoneState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dataEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dataOnRoamingEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ps restricted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " desiredPowerState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 733
    const-string v3, "default"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ba

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_1ba

    .line 734
    const-string v3, "GSM"

    const-string v3, "state erorr! set APN_TYPE_DEFAULT false  "

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string v3, "default"

    invoke-direct {p0, v6, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setEnabled(Ljava/lang/String;Z)V

    :cond_1ba
    move v3, v5

    .line 740
    goto/16 :goto_53
.end method


# virtual methods
.method protected disableApnType(Ljava/lang/String;)I
    .registers 10
    .parameter "type"

    .prologue
    const/16 v6, 0x18

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v7, "default"

    .line 453
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableApnType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v1, "mms"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "supl"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_70

    :cond_34
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 457
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->removeMessages(I)V

    .line 458
    invoke-direct {p0, p1, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setEnabled(Ljava/lang/String;Z)V

    .line 459
    const-string v1, "default"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 460
    const-string v1, "default"

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 461
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataEnabled:[Z

    sget v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_DEFAULT_ID:I

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_56

    move v1, v5

    .line 481
    :goto_55
    return v1

    .line 464
    :cond_56
    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 465
    .local v0, msg:Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 466
    const-string v1, "dataDisabled"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 467
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    move v1, v4

    .line 468
    goto :goto_55

    .line 477
    .end local v0           #msg:Landroid/os/Message;
    :cond_67
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    move v1, v4

    .line 478
    goto :goto_55

    .line 481
    :cond_70
    const/4 v1, 0x3

    goto :goto_55
.end method

.method public dispose()V
    .registers 3

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataStateChanged(Landroid/os/Handler;)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForGprsAttached(Landroid/os/Handler;)V

    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForGprsDetached(Landroid/os/Handler;)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 345
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->destroyAllPdpList()V

    .line 346
    return-void
.end method

.method protected enableApnType(Ljava/lang/String;)I
    .registers 7
    .parameter "type"

    .prologue
    const/16 v4, 0x18

    const/4 v3, 0x1

    .line 406
    const-string v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "supl"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 408
    const/4 v0, 0x3

    .line 441
    :goto_14
    return v0

    .line 412
    :cond_15
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableApnType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 414
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setEnabled(Ljava/lang/String;Z)V

    .line 415
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->removeMessages(I)V

    .line 422
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getRestoreDefaultApnDelay()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_53

    move v0, v3

    goto :goto_14

    .line 426
    :cond_53
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_5b

    const/4 v0, 0x0

    goto :goto_14

    .line 429
    :cond_5b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_63

    .line 430
    const/4 v0, 0x2

    goto :goto_14

    .line 433
    :cond_63
    invoke-direct {p0, p1, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setEnabled(Ljava/lang/String;Z)V

    .line 434
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_77

    .line 440
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    :cond_77
    move v0, v3

    .line 441
    goto :goto_14
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 349
    const-string v0, "GSM"

    const-string v1, "GsmDataConnectionTracker finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void
.end method

.method public findIndexWithField(Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .parameter "field"
    .parameter "value"

    .prologue
    const-string v11, "APN_ID("

    const-string v10, ")"

    const-string v9, "[DataConnectionTracker]"

    .line 2146
    const/4 v5, -0x1

    .line 2149
    .local v5, mRequestID:I
    const-string v7, "[DataConnectionTracker]"

    const-string v7, "start findIndexWithField"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    if-eqz v7, :cond_67

    .line 2153
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_67

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 2154
    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    const-string v7, "name"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 2155
    const-string v7, "[DataConnectionTracker]"

    const-string v7, "findIndexWithField (name)"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    iget-object v7, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 2157
    const-string v7, "[DataConnectionTracker]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APN_ID("

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") with request name value("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    iget v5, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    .line 2186
    .end local v0           #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    :cond_67
    :goto_67
    return v5

    .line 2161
    .restart local v0       #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    :cond_68
    const-string v7, "type"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b6

    .line 2162
    const-string v7, "[DataConnectionTracker]"

    const-string v7, "findIndexWithField (type)"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_7b
    if-ge v3, v4, :cond_18

    aget-object v6, v1, v3

    .line 2164
    .local v6, t:Ljava/lang/String;
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b3

    .line 2165
    const-string v7, "[DataConnectionTracker]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APN_ID("

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") with request type value("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    iget v5, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    .line 2167
    goto/16 :goto_18

    .line 2163
    :cond_b3
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 2170
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #t:Ljava/lang/String;
    :cond_b6
    const-string v7, "preferapp"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ff

    .line 2171
    const-string v7, "[DataConnectionTracker]"

    const-string v7, "findIndexWithField (preferapp)"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    iget-object v7, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->preferApp:Ljava/lang/String;

    if-eqz v7, :cond_18

    .line 2174
    iget-object v7, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->preferApp:Ljava/lang/String;

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 2175
    const-string v7, "[DataConnectionTracker]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APN_ID("

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") with request preferapp value("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    iget v5, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    .line 2177
    goto/16 :goto_67

    .line 2181
    :cond_ff
    const-string v7, "[DataConnectionTracker]"

    const-string v7, "findIndexWithField (not found)"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18
.end method

.method protected getActiveApnString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v1, :cond_9

    .line 390
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    .line 392
    :cond_9
    return-object v0
.end method

.method getActiveApnTypes()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v1, :cond_9

    .line 379
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    .line 384
    .local v0, result:[Ljava/lang/String;
    :goto_8
    return-object v0

    .line 381
    .end local v0           #result:[Ljava/lang/String;
    :cond_9
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 382
    .restart local v0       #result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    goto :goto_8
.end method

.method public getAllDataConnections()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 616
    .local v0, pdps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataConnection;>;"
    return-object v0
.end method

.method public getAnyDataEnabled()Z
    .registers 3

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataEnabled:[Z

    sget v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_DEFAULT_ID:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataEnabled:[Z

    sget v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_MMS_ID:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataEnabled:[Z

    sget v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_SUPL_ID:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getDataEnabled()Z
    .registers 3

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataEnabled:[Z

    sget v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_DEFAULT_ID:I

    aget-boolean v0, v0, v1

    return v0
.end method

.method protected getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter "apnType"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/PdpConnection;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 906
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/PdpConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/PdpConnection;->getDnsServers()[Ljava/lang/String;

    move-result-object v0

    .line 908
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method getGateway(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "apnType"

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/PdpConnection;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 898
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/PdpConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/PdpConnection;->getGatewayAddress()Ljava/lang/String;

    move-result-object v0

    .line 900
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "apnType"

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/PdpConnection;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 882
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/PdpConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/PdpConnection;->getInterface()Ljava/lang/String;

    move-result-object v0

    .line 884
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "apnType"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/PdpConnection;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 890
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivePdp:Lcom/android/internal/telephony/gsm/PdpConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/PdpConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    .line 892
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v6, "psRestrictEnabled"

    const-string v4, "GSM"

    .line 2024
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 2025
    .local v0, cm:Lcom/android/internal/telephony/CommandsInterface;
    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2026
    const-string v1, "GSM"

    const-string v1, "Ignore GSM data state change"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    :goto_1b
    return-void

    .line 2030
    :cond_1c
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_cc

    .line 2115
    :pswitch_21
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_1b

    .line 2032
    :pswitch_25
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onRecordsLoaded()V

    goto :goto_1b

    .line 2036
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onEnableNewApn()V

    goto :goto_1b

    .line 2040
    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onRestoreDefaultApn()V

    goto :goto_1b

    .line 2044
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onGprsDetached()V

    goto :goto_1b

    .line 2048
    :pswitch_35
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onGprsAttached()V

    goto :goto_1b

    .line 2052
    :pswitch_39
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onPdpStateChanged(Landroid/os/AsyncResult;Z)V

    goto :goto_1b

    .line 2056
    :pswitch_41
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-virtual {p0, v1, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onPdpStateChanged(Landroid/os/AsyncResult;Z)V

    goto :goto_1b

    .line 2060
    :pswitch_49
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onPollPdp()V

    goto :goto_1b

    .line 2064
    :pswitch_4d
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    goto :goto_1b

    .line 2068
    :pswitch_51
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->doRecovery()V

    goto :goto_1b

    .line 2072
    :pswitch_55
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onApnChanged()V

    goto :goto_1b

    .line 2082
    :pswitch_59
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DSAC DEB] EVENT_PS_RESTRICT_ENABLED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 2086
    const-string v1, "GSM"

    const-string v1, "release wake lock!"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2090
    :cond_87
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 2091
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    goto :goto_1b

    .line 2099
    :pswitch_8d
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DSAC DEB] EVENT_PS_RESTRICT_DISABLED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    .line 2101
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_b4

    .line 2102
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    goto/16 :goto_1b

    .line 2104
    :cond_b4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_c5

    .line 2105
    const-string v1, "psRestrictEnabled"

    invoke-direct {p0, v3, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 2106
    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->nextReconnectDelay:J

    .line 2107
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 2109
    :cond_c5
    const-string v1, "psRestrictEnabled"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto/16 :goto_1b

    .line 2030
    :pswitch_data_cc
    .packed-switch 0x4
        :pswitch_25
        :pswitch_21
        :pswitch_39
        :pswitch_49
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_41
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_31
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_29
        :pswitch_2d
        :pswitch_21
        :pswitch_35
        :pswitch_4d
        :pswitch_51
        :pswitch_55
        :pswitch_21
        :pswitch_21
        :pswitch_59
        :pswitch_8d
    .end packed-switch
.end method

.method public isDataConnectionAsDesired()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 495
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataRoaming()Z

    move-result v0

    .line 497
    .local v0, roaming:Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    if-nez v1, :cond_33

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_33

    :cond_21
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsWifiConnected:Z

    if-nez v1, :cond_33

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    if-nez v1, :cond_33

    .line 502
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_31

    move v1, v3

    .line 504
    :goto_30
    return v1

    .line 502
    :cond_31
    const/4 v1, 0x0

    goto :goto_30

    :cond_33
    move v1, v3

    .line 504
    goto :goto_30
.end method

.method public isPreventType(I)Z
    .registers 5
    .parameter "type"

    .prologue
    .line 2199
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPreventType type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isPrevent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreventDataEnable:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreventDataEnable:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 2121
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmDataConnectionTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    return-void
.end method

.method protected onCleanUpConnection(ZLjava/lang/String;)V
    .registers 3
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 1782
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1783
    return-void
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .registers 14
    .parameter "ar"

    .prologue
    const/16 v8, 0x18

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "gsm.defaultpdpcontext.active"

    .line 1641
    const/4 v4, 0x0

    .line 1642
    .local v4, reason:Ljava/lang/String;
    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_11

    .line 1643
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v4           #reason:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1646
    .restart local v4       #reason:Ljava/lang/String;
    :cond_11
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_69

    .line 1659
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataEnabled:[Z

    sget v7, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_MMS_ID:I

    aget-boolean v6, v6, v7

    if-nez v6, :cond_25

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataEnabled:[Z

    sget v7, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_SUPL_ID:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_34

    .line 1660
    :cond_25
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->removeMessages(I)V

    .line 1661
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getRestoreDefaultApnDelay()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1664
    :cond_34
    const-string v6, "default"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 1665
    const-string v6, "gsm.defaultpdpcontext.active"

    const-string v6, "true"

    invoke-static {v11, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v6, :cond_5d

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-nez v6, :cond_5d

    .line 1667
    const-string v6, "GSM"

    const-string v7, "PREFERED APN is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1669
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPreferredApn(I)V

    .line 1674
    :cond_5d
    :goto_5d
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDefaultData(Ljava/lang/String;)V

    .line 1732
    :goto_60
    return-void

    .line 1672
    :cond_61
    const-string v6, "gsm.defaultpdpcontext.active"

    const-string v6, "false"

    invoke-static {v11, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    .line 1682
    :cond_69
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/DataConnection$FailCause;

    move-object v0, v6

    check-cast v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    move-object v1, v0

    .line 1683
    .local v1, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PDP setup failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1685
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->isEventLoggable()Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 1686
    const/4 v2, -0x1

    .line 1687
    .local v2, cid:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    .line 1688
    .local v3, loc:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v3, :cond_9c

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    .line 1690
    :cond_9c
    new-instance v5, Landroid/util/EventLog$List;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v5, v6}, Landroid/util/EventLog$List;-><init>([Ljava/lang/Object;)V

    .line 1693
    .local v5, val:Landroid/util/EventLog$List;
    const v6, 0xc3b9

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(ILandroid/util/EventLog$List;)I

    .line 1696
    .end local v2           #cid:I
    .end local v3           #loc:Landroid/telephony/gsm/GsmCellLocation;
    .end local v5           #val:Landroid/util/EventLog$List;
    :cond_c9
    sget-object v6, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne v1, v6, :cond_ec

    .line 1699
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->bIsReconnectTrial:Z

    .line 1705
    :goto_cf
    sget-object v6, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->operator_code:Ljava/lang/String;

    const-string v7, "SFR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ef

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v10, :cond_ef

    .line 1706
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail2()Z

    move-result v6

    if-eqz v6, :cond_fa

    .line 1707
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    goto/16 :goto_60

    .line 1701
    :cond_ec
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->bIsReconnectTrial:Z

    goto :goto_cf

    .line 1712
    :cond_ef
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v6

    if-eqz v6, :cond_fa

    .line 1713
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    goto/16 :goto_60

    .line 1719
    :cond_fa
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1720
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_10c

    .line 1722
    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/String;)V

    goto/16 :goto_60

    .line 1725
    :cond_10c
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1728
    const/4 v6, 0x5

    invoke-virtual {p0, v6, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x1388

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_60
.end method

.method protected onDisconnectDone(Landroid/os/AsyncResult;)V
    .registers 4
    .parameter "ar"

    .prologue
    .line 1735
    const/4 v0, 0x0

    .line 1736
    .local v0, reason:Ljava/lang/String;
    const-string v1, "EVENT_DISCONNECT_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1737
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 1738
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #reason:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1740
    .restart local v0       #reason:Ljava/lang/String;
    :cond_10
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1741
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1742
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1743
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->retryAfterDisconnected(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1744
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 1746
    :cond_26
    return-void
.end method

.method protected onEnableNewApn()V
    .registers 3

    .prologue
    .line 1557
    const/4 v0, 0x1

    const-string v1, "apnSwitched"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1558
    return-void
.end method

.method protected onGprsDetached()V
    .registers 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 638
    const-string v0, "GSM"

    const-string v1, "release wake lock!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 643
    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 644
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "gprsDetached"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method protected onPdpStateChanged(Landroid/os/AsyncResult;Z)V
    .registers 14
    .parameter "ar"
    .parameter "explicitPoll"

    .prologue
    .line 1009
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v6, v0

    .line 1010
    .local v6, pdpStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_d

    .line 1125
    .end local p1
    :cond_c
    :goto_c
    return-void

    .line 1017
    .restart local p1
    :cond_d
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v8, v9, :cond_72

    .line 1024
    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cidActive:I

    invoke-direct {p0, v6, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpStatesHasCID(Ljava/util/ArrayList;I)Z

    move-result v8

    if-nez v8, :cond_5b

    .line 1028
    const-string v8, "GSM"

    const-string v9, "PDP connection has dropped. Reconnecting"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/4 v1, -0x1

    .line 1032
    .local v1, cid:I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 1033
    .local v4, loc:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v4, :cond_31

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 1034
    :cond_31
    new-instance v7, Landroid/util/EventLog$List;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v7, v8}, Landroid/util/EventLog$List;-><init>([Ljava/lang/Object;)V

    .line 1036
    .local v7, val:Landroid/util/EventLog$List;
    const v8, 0xc3bd

    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(ILandroid/util/EventLog$List;)I

    .line 1038
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_c

    .line 1040
    .end local v1           #cid:I
    .end local v4           #loc:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #val:Landroid/util/EventLog$List;
    :cond_5b
    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cidActive:I

    invoke-direct {p0, v6, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpStatesHasActiveCID(Ljava/util/ArrayList;I)Z

    move-result v8

    if-nez v8, :cond_72

    .line 1045
    if-nez p2, :cond_125

    .line 1047
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v8, v8, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v9, 0xb

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/internal/telephony/CommandsInterface;->getPDPContextList(Landroid/os/Message;)V

    .line 1068
    :cond_72
    :goto_72
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v8, v8, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v3

    .line 1069
    .local v3, isUMTS:Z
    const/4 v8, 0x1

    if-ne v3, v8, :cond_c

    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->enableFDsetting:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 1071
    const-string v8, "GSM"

    const-string v9, "LGE_Fast_Dormancy) Check"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v9, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v8, v9, :cond_c

    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cidActive:I

    invoke-direct {p0, v6, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpStatesHasActiveCID(Ljava/util/ArrayList;I)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1074
    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cidActive:I

    invoke-direct {p0, v6, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->pdpStatesGetCidMatchingIndex(Ljava/util/ArrayList;I)I

    move-result v2

    .line 1075
    .local v2, i:I
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/DataCallState;

    iget v5, p1, Lcom/android/internal/telephony/DataCallState;->state:I

    .line 1076
    .local v5, new_state:I
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LGE_Fast_Dormancy) new_state("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") i=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") lastPDPstate=("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->lastPDPstate:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    if-ltz v2, :cond_c

    .line 1080
    iget v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->lastPDPstate:I

    if-eq v5, v8, :cond_121

    .line 1082
    const/4 v8, 0x2

    if-ne v5, v8, :cond_166

    .line 1084
    const-string v8, "GSM"

    const-string v9, "LGE_Fast_Dormancy) Set Timer to 1000"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "pdp_watchdog_poll_interval_ms"

    const/16 v10, 0x3e8

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->netStatPollPeriod:I

    .line 1088
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->DataInactivityCounter:I

    .line 1089
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->GoDormancyCounter:I

    .line 1091
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_10f

    .line 1092
    const-string v8, "GSM"

    const-string v9, "release wake lock!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1095
    :cond_10f
    const-string v8, "GSM"

    const-string v9, "aquire wake lock!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1098
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 1099
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    .line 1120
    :cond_121
    :goto_121
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->lastPDPstate:I

    goto/16 :goto_c

    .line 1050
    .end local v2           #i:I
    .end local v3           #isUMTS:Z
    .end local v5           #new_state:I
    .restart local p1
    :cond_125
    const-string v8, "GSM"

    const-string v9, "PDP connection has dropped (active=false case).  Reconnecting"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const/4 v1, -0x1

    .line 1055
    .restart local v1       #cid:I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 1056
    .restart local v4       #loc:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v4, :cond_13b

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 1057
    :cond_13b
    new-instance v7, Landroid/util/EventLog$List;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v7, v8}, Landroid/util/EventLog$List;-><init>([Ljava/lang/Object;)V

    .line 1059
    .restart local v7       #val:Landroid/util/EventLog$List;
    const v8, 0xc3bd

    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(ILandroid/util/EventLog$List;)I

    .line 1061
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto/16 :goto_72

    .line 1101
    .end local v1           #cid:I
    .end local v4           #loc:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #val:Landroid/util/EventLog$List;
    .end local p1
    .restart local v2       #i:I
    .restart local v3       #isUMTS:Z
    .restart local v5       #new_state:I
    :cond_166
    const/4 v8, 0x1

    if-eq v5, v8, :cond_16b

    if-nez v5, :cond_121

    .line 1103
    :cond_16b
    const-string v8, "GSM"

    const-string v9, "LGE_Fast_Dormancy) Set Timer to 600000"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "pdp_watchdog_long_poll_interval_ms"

    const v10, 0x927c0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->netStatPollPeriod:I

    .line 1108
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->DataInactivityCounter:I

    .line 1109
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->GoDormancyCounter:I

    .line 1111
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_121

    .line 1112
    const-string v8, "GSM"

    const-string v9, "release wake lock!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_121
.end method

.method protected onPollPdp()V
    .registers 4

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1d

    .line 1751
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPDPContextList(Landroid/os/Message;)V

    .line 1752
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1754
    :cond_1d
    return-void
.end method

.method protected onRadioAvailable()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1609
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1612
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 1613
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1615
    const-string v0, "GSM"

    const-string v1, "We\'re on the simulator; assuming data is connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_24

    .line 1619
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1621
    :cond_24
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1626
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->nextReconnectDelay:J

    .line 1627
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 1629
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1632
    const-string v0, "GSM"

    const-string v1, "We\'re on the simulator; assuming radio off is meaningless"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :goto_16
    return-void

    .line 1634
    :cond_17
    const-string v0, "Radio is off and clean up all connection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1636
    const-string v0, "radioTurnedOff"

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_16
.end method

.method protected onRecordsLoaded()V
    .registers 3

    .prologue
    .line 1535
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createAllApnList()V

    .line 1536
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_e

    .line 1537
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1551
    :cond_e
    const/4 v0, 0x5

    const-string v1, "simLoaded"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1552
    return-void
.end method

.method protected onRestoreDefaultApn()V
    .registers 4

    .prologue
    const-string v2, "default"

    .line 1565
    const-string v0, "GSM"

    const-string v1, "Restore default APN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    const-string v0, "mms"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setEnabled(Ljava/lang/String;Z)V

    .line 1567
    const-string v0, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1568
    const-string v0, "default"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1569
    const/4 v0, 0x1

    const-string v1, "restoreDefaultApn"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1571
    :cond_21
    return-void
.end method

.method protected onRoamingOff()V
    .registers 2

    .prologue
    .line 1581
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataRoaming()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1582
    const-string v0, "roamingOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 1586
    :goto_b
    return-void

    .line 1584
    :cond_c
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b
.end method

.method protected onRoamingOn()V
    .registers 4

    .prologue
    const-string v2, "roamingOn"

    .line 1596
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1597
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1598
    const-string v0, "roamingOn"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 1606
    :goto_13
    return-void

    .line 1600
    :cond_14
    const-string v0, "Tear down data connection on roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1601
    const/4 v0, 0x1

    const-string v1, "roamingOn"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    goto :goto_13

    .line 1604
    :cond_20
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_13
.end method

.method protected onTrySetupData(Ljava/lang/String;)V
    .registers 2
    .parameter "reason"

    .prologue
    .line 1561
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    .line 1562
    return-void
.end method

.method protected onVoiceCallEnded()V
    .registers 4

    .prologue
    const-string v2, "2GVoiceCallEnded"

    .line 1764
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_21

    .line 1765
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1766
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    .line 1767
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "2GVoiceCallEnded"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1779
    :goto_1c
    return-void

    .line 1770
    :cond_1d
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->resetPollStats()V

    goto :goto_1c

    .line 1774
    :cond_21
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->nextReconnectDelay:J

    .line 1775
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 1777
    const-string v0, "2GVoiceCallEnded"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Ljava/lang/String;)Z

    goto :goto_1c
.end method

.method protected onVoiceCallStarted()V
    .registers 3

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1758
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 1759
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "2GVoiceCallStarted"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    .line 1761
    :cond_1a
    return-void
.end method

.method protected restartRadio()V
    .registers 6

    .prologue
    const-string v4, "net.ppp.reset-by-timeout"

    .line 1227
    const-string v1, "GSM"

    const-string v2, "************TURN OFF RADIO**************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    const/4 v1, 0x1

    const-string v2, "radioTurnedOff"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLjava/lang/String;)V

    .line 1229
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 1238
    const-string v1, "net.ppp.reset-by-timeout"

    const-string v1, "0"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1239
    .local v0, reset:I
    const-string v1, "net.ppp.reset-by-timeout"

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    return-void
.end method

.method public setApnForPreferApp(Ljava/lang/String;)V
    .registers 9
    .parameter "preferApp"

    .prologue
    const-string v6, "[DataConnectionTracker]"

    .line 1981
    const/4 v2, -0x1

    .line 1984
    .local v2, mRequestID:I
    const-string v4, "[DataConnectionTracker]"

    const-string v4, "start setApnForPreferApp"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    if-eqz v4, :cond_54

    .line 1988
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 1989
    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->preferApp:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1990
    const-string v4, "[DataConnectionTracker]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APN_ID("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for prefer app("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    iget v2, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    .line 1998
    .end local v0           #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_54
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getPreferredApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v3

    .line 1999
    .local v3, pPreferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;
    if-eqz v3, :cond_5e

    .line 2000
    iget v4, v3, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mOriginalPreferredApnID:I

    .line 2003
    :cond_5e
    const/4 v4, -0x1

    if-eq v2, v4, :cond_6c

    .line 2004
    const-string v4, "[DataConnectionTracker]"

    const-string v4, "Activate Apn with Particualar Type"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPreferredApn(I)V

    .line 2009
    :goto_6b
    return-void

    .line 2007
    :cond_6c
    const-string v4, "[DataConnectionTracker]"

    const-string v4, "Not Found APN with Particualar Type"

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b
.end method

.method public setDataEnabled(Z)Z
    .registers 12
    .parameter "enable"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v9, "supl"

    const-string v8, "mms"

    const-string v6, "default"

    .line 565
    const-string v2, "default"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 566
    .local v0, isEnabled:Z
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataEnabled("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") isEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    if-nez v0, :cond_43

    if-eqz p1, :cond_43

    .line 568
    const-string v2, "default"

    invoke-direct {p0, v6, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setEnabled(Ljava/lang/String;Z)V

    .line 571
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    move v2, v5

    .line 588
    :goto_42
    return v2

    .line 573
    :cond_43
    if-nez p1, :cond_7d

    .line 574
    const-string v2, "default"

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setEnabled(Ljava/lang/String;Z)V

    .line 577
    const-string v2, "mms"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    const-string v2, "mms"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6a

    :cond_5a
    const-string v2, "supl"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const-string v2, "supl"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    :cond_6a
    move v2, v7

    .line 579
    goto :goto_42

    .line 581
    :cond_6c
    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 582
    .local v1, msg:Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 583
    const-string v2, "dataDisabled"

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 584
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    move v2, v5

    .line 585
    goto :goto_42

    .end local v1           #msg:Landroid/os/Message;
    :cond_7d
    move v2, v5

    .line 588
    goto :goto_42
.end method

.method public setDefaultFastDormancy()V
    .registers 7

    .prologue
    const/16 v4, 0xa

    const-string v5, "fast_dormancy"

    .line 2208
    const/4 v0, 0x3

    .line 2211
    .local v0, iFastDormancy:I
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fast_dormancy"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_14} :catch_1c

    move-result v0

    .line 2216
    :goto_15
    packed-switch v0, :pswitch_data_4e

    .line 2237
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setFastDormancy(I)V

    .line 2240
    :goto_1b
    return-void

    .line 2212
    :catch_1c
    move-exception v2

    move-object v1, v2

    .line 2213
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fast_dormancy"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_15

    .line 2219
    .end local v1           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :pswitch_2e
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setFastDormancy(I)V

    goto :goto_1b

    .line 2222
    :pswitch_33
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setFastDormancy(I)V

    goto :goto_1b

    .line 2225
    :pswitch_38
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setFastDormancy(I)V

    goto :goto_1b

    .line 2228
    :pswitch_3d
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setFastDormancy(I)V

    goto :goto_1b

    .line 2231
    :pswitch_41
    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setFastDormancy(I)V

    goto :goto_1b

    .line 2234
    :pswitch_47
    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setFastDormancy(I)V

    goto :goto_1b

    .line 2216
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_33
        :pswitch_38
        :pswitch_3d
        :pswitch_41
        :pswitch_47
    .end packed-switch
.end method

.method public setFastDormancy(I)V
    .registers 5
    .parameter "fastdormancy"

    .prologue
    .line 2128
    const-string v0, "[DataConnectionTracker]"

    const-string v1, "start setFastDormancy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    if-lez p1, :cond_29

    .line 2132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->enableFDsetting:Z

    .line 2133
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->DataInactivityMaxCount:I

    .line 2139
    :goto_e
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableFDsetting is now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->enableFDsetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    return-void

    .line 2137
    :cond_29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->enableFDsetting:Z

    goto :goto_e
.end method

.method public setOriginalPreferredApn()V
    .registers 4

    .prologue
    const-string v2, "[DataConnectionTracker]"

    .line 2012
    const-string v0, "[DataConnectionTracker]"

    const-string v0, "start setOriginalPreferredApn"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mOriginalPreferredApnID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    .line 2015
    const-string v0, "[DataConnectionTracker]"

    const-string v0, "Activate Original Preferred Apn"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mOriginalPreferredApnID:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPreferredApn(I)V

    .line 2018
    :cond_1a
    return-void
.end method

.method public setPreventType(IZ)V
    .registers 6
    .parameter "type"
    .parameter "prevent"

    .prologue
    .line 2194
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPrevetn Type type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "prevent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreventDataEnable:[Z

    aput-boolean p2, v0, p1

    .line 2196
    return-void
.end method

.method setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
    .registers 7
    .parameter "s"

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, p1, :cond_43

    .line 355
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne p1, v0, :cond_30

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Checkin$Stats$Tag;->PHONE_GPRS_ATTEMPTED:Landroid/provider/Checkin$Stats$Tag;

    invoke-static {v0, v1, v4, v2, v3}, Landroid/provider/Checkin;->updateStats(Landroid/content/ContentResolver;Landroid/provider/Checkin$Stats$Tag;ID)Landroid/net/Uri;

    .line 361
    :cond_30
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne p1, v0, :cond_43

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Checkin$Stats$Tag;->PHONE_GPRS_CONNECTED:Landroid/provider/Checkin$Stats$Tag;

    invoke-static {v0, v1, v4, v2, v3}, Landroid/provider/Checkin;->updateStats(Landroid/content/ContentResolver;Landroid/provider/Checkin$Stats$Tag;ID)Landroid/net/Uri;

    .line 368
    :cond_43
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 370
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_54

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    if-eqz v0, :cond_54

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->waitingApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 374
    :cond_54
    return-void
.end method

.method protected startNetStatPoll()V
    .registers 3

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_1c

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->netStatPollEnabled:Z

    if-nez v0, :cond_1c

    .line 1213
    const-string v0, "GSM"

    const-string v1, "[DataConnection] Start poll NetStat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->resetPollStats()V

    .line 1215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->netStatPollEnabled:Z

    .line 1216
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1218
    :cond_1c
    return-void
.end method

.method protected stopNetStatPoll()V
    .registers 3

    .prologue
    .line 1221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->netStatPollEnabled:Z

    .line 1222
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1223
    const-string v0, "GSM"

    const-string v1, "[DataConnection] Stop poll NetStat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    return-void
.end method
