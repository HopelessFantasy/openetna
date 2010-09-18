.class Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;
.super Ljava/lang/Object;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothPhoneState"
.end annotation


# static fields
.field private static final PHONE_CDMA_CALL_WAITING:I = 0x4

.field private static final PHONE_STATE_CHANGED:I = 0x2

.field private static final RING:I = 0x3

.field private static final SERVICE_STATE_CHANGED:I = 0x1


# instance fields
.field private mBattchg:I

.field private mCall:I

.field private mCallheld:I

.field private mCallsetup:I

.field private mIgnoreRing:Z

.field private mRingingNumber:Ljava/lang/String;

.field private mRingingType:I

.field private mRoam:I

.field private mRssi:I

.field private mService:I

.field private mSignal:I

.field private mStat:I

.field private mStateChangeHandler:Landroid/os/Handler;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 366
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    .line 340
    new-instance v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$1;-><init>(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    .line 512
    new-instance v1, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState$2;-><init>(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V

    iput-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 368
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateServiceState(ZLandroid/telephony/ServiceState;)V

    .line 369
    invoke-direct {p0, v2, v4}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updatePhoneState(ZLcom/android/internal/telephony/Connection;)V

    .line 370
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    .line 372
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->asuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 375
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 377
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForPhoneStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 379
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDMA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 380
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 383
    :cond_64
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 384
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIG_STR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    invoke-static {p1}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 386
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/phone/BluetoothHandsfree$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;-><init>(Lcom/android/phone/BluetoothHandsfree;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBatteryState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateSignalState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateBtPhoneStateAfterRadioTechnologyChange()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ignoreRing()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLandroid/telephony/ServiceState;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updateServiceState(ZLandroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCindResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->getCindTestResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Landroid/bluetooth/AtCommandResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCsqResult()Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;ZLcom/android/internal/telephony/Connection;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 293
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->updatePhoneState(ZLcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCregString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private asuToSignal(Landroid/telephony/SignalStrength;)I
    .registers 3
    .parameter "signalStrength"

    .prologue
    .line 486
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 487
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->gsmAsuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 489
    :goto_a
    return v0

    :cond_b
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->cdmaDbmEcioToSignal(Landroid/telephony/SignalStrength;)I

    move-result v0

    goto :goto_a
.end method

.method private cdmaDbmEcioToSignal(Landroid/telephony/SignalStrength;)I
    .registers 15
    .parameter "signalStrength"

    .prologue
    const/4 v12, 0x7

    .line 434
    const/4 v6, 0x0

    .line 435
    .local v6, levelDbm:I
    const/4 v7, 0x0

    .line 436
    .local v7, levelEcio:I
    const/4 v2, 0x0

    .line 437
    .local v2, cdmaIconLevel:I
    const/4 v4, 0x0

    .line 438
    .local v4, evdoIconLevel:I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 439
    .local v0, cdmaDbm:I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 441
    .local v1, cdmaEcio:I
    const/16 v10, -0x4b

    if-lt v0, v10, :cond_55

    const/4 v6, 0x4

    .line 448
    :goto_12
    const/16 v10, -0x5a

    if-lt v1, v10, :cond_69

    const/4 v7, 0x4

    .line 454
    :goto_17
    if-ge v6, v7, :cond_7d

    move v2, v6

    .line 456
    :goto_1a
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v10

    if-eqz v10, :cond_51

    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v10

    if-eq v10, v12, :cond_3c

    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$1200(Lcom/android/phone/BluetoothHandsfree;)Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_51

    .line 459
    :cond_3c
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v3

    .line 460
    .local v3, evdoEcio:I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v5

    .line 461
    .local v5, evdoSnr:I
    const/4 v8, 0x0

    .line 462
    .local v8, levelEvdoEcio:I
    const/4 v9, 0x0

    .line 465
    .local v9, levelEvdoSnr:I
    const/16 v10, -0x28a

    if-lt v3, v10, :cond_7f

    const/4 v8, 0x4

    .line 471
    :goto_4b
    if-le v5, v12, :cond_93

    const/4 v9, 0x4

    .line 477
    :goto_4e
    if-ge v8, v9, :cond_a4

    move v4, v8

    .line 480
    .end local v3           #evdoEcio:I
    .end local v5           #evdoSnr:I
    .end local v8           #levelEvdoEcio:I
    .end local v9           #levelEvdoSnr:I
    :cond_51
    :goto_51
    if-le v2, v4, :cond_a6

    move v10, v2

    :goto_54
    return v10

    .line 442
    :cond_55
    const/16 v10, -0x55

    if-lt v0, v10, :cond_5b

    const/4 v6, 0x3

    goto :goto_12

    .line 443
    :cond_5b
    const/16 v10, -0x5f

    if-lt v0, v10, :cond_61

    const/4 v6, 0x2

    goto :goto_12

    .line 444
    :cond_61
    const/16 v10, -0x64

    if-lt v0, v10, :cond_67

    const/4 v6, 0x1

    goto :goto_12

    .line 445
    :cond_67
    const/4 v6, 0x0

    goto :goto_12

    .line 449
    :cond_69
    const/16 v10, -0x6e

    if-lt v1, v10, :cond_6f

    const/4 v7, 0x3

    goto :goto_17

    .line 450
    :cond_6f
    const/16 v10, -0x82

    if-lt v1, v10, :cond_75

    const/4 v7, 0x2

    goto :goto_17

    .line 451
    :cond_75
    const/16 v10, -0x96

    if-lt v1, v10, :cond_7b

    const/4 v7, 0x1

    goto :goto_17

    .line 452
    :cond_7b
    const/4 v7, 0x0

    goto :goto_17

    :cond_7d
    move v2, v7

    .line 454
    goto :goto_1a

    .line 466
    .restart local v3       #evdoEcio:I
    .restart local v5       #evdoSnr:I
    .restart local v8       #levelEvdoEcio:I
    .restart local v9       #levelEvdoSnr:I
    :cond_7f
    const/16 v10, -0x2ee

    if-lt v3, v10, :cond_85

    const/4 v8, 0x3

    goto :goto_4b

    .line 467
    :cond_85
    const/16 v10, -0x384

    if-lt v3, v10, :cond_8b

    const/4 v8, 0x2

    goto :goto_4b

    .line 468
    :cond_8b
    const/16 v10, -0x41a

    if-lt v3, v10, :cond_91

    const/4 v8, 0x1

    goto :goto_4b

    .line 469
    :cond_91
    const/4 v8, 0x0

    goto :goto_4b

    .line 472
    :cond_93
    const/4 v10, 0x5

    if-le v5, v10, :cond_98

    const/4 v9, 0x3

    goto :goto_4e

    .line 473
    :cond_98
    const/4 v10, 0x3

    if-le v5, v10, :cond_9d

    const/4 v9, 0x2

    goto :goto_4e

    .line 474
    :cond_9d
    const/4 v10, 0x1

    if-le v5, v10, :cond_a2

    const/4 v9, 0x1

    goto :goto_4e

    .line 475
    :cond_a2
    const/4 v9, 0x0

    goto :goto_4e

    :cond_a4
    move v4, v9

    .line 477
    goto :goto_51

    .end local v3           #evdoEcio:I
    .end local v5           #evdoSnr:I
    .end local v8           #levelEvdoEcio:I
    .end local v9           #levelEvdoSnr:I
    :cond_a6
    move v10, v4

    .line 480
    goto :goto_54
.end method

.method private declared-synchronized getCindTestResult()Landroid/bluetooth/AtCommandResult;
    .registers 3

    .prologue
    .line 774
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const-string v1, "+CIND: (\"service\",(0-1)),(\"call\",(0-1)),(\"callsetup\",(0-3)),(\"callheld\",(0-2)),(\"signal\",(0-5)),(\"roam\",(0-1)),(\"battchg\",(0-5))"

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private gsmAsuToSignal(Landroid/telephony/SignalStrength;)I
    .registers 7
    .parameter "signalStrength"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 417
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 418
    .local v0, asu:I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_d

    const/4 v1, 0x5

    .line 423
    :goto_c
    return v1

    .line 419
    :cond_d
    const/16 v1, 0x8

    if-lt v0, v1, :cond_13

    move v1, v4

    goto :goto_c

    .line 420
    :cond_13
    if-lt v0, v4, :cond_17

    const/4 v1, 0x3

    goto :goto_c

    .line 421
    :cond_17
    if-lt v0, v3, :cond_1b

    move v1, v3

    goto :goto_c

    .line 422
    :cond_1b
    if-lt v0, v2, :cond_1f

    move v1, v2

    goto :goto_c

    .line 423
    :cond_1f
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private declared-synchronized ignoreRing()V
    .registers 4

    .prologue
    .line 780
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    .line 782
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 783
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CIEV: 3,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_29

    .line 785
    :cond_27
    monitor-exit p0

    return-void

    .line 780
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ring()Landroid/bluetooth/AtCommandResult;
    .registers 6

    .prologue
    .line 739
    iget-boolean v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    if-nez v2, :cond_55

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 740
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 741
    .local v1, result:Landroid/bluetooth/AtCommandResult;
    const-string v2, "RING"

    invoke-virtual {v1, v2}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 742
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendClipUpdate()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+CLIP: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 746
    :cond_45
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 747
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object v2, v1

    .line 750
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #result:Landroid/bluetooth/AtCommandResult;
    :goto_54
    return-object v2

    :cond_55
    const/4 v2, 0x0

    goto :goto_54
.end method

.method private sendClipUpdate()Z
    .registers 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$900(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private sendUpdate()Z
    .registers 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$800(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$900(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1000(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private signalToRssi(I)I
    .registers 3
    .parameter "signal"

    .prologue
    const/4 v0, 0x0

    .line 500
    packed-switch p1, :pswitch_data_14

    .line 508
    :goto_4
    :pswitch_4
    return v0

    .line 502
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_4

    .line 503
    :pswitch_7
    const/16 v0, 0x8

    goto :goto_4

    .line 504
    :pswitch_a
    const/16 v0, 0xd

    goto :goto_4

    .line 505
    :pswitch_d
    const/16 v0, 0x13

    goto :goto_4

    .line 506
    :pswitch_10
    const/16 v0, 0x1f

    goto :goto_4

    .line 500
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_a
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method private declared-synchronized toCindResult()Landroid/bluetooth/AtCommandResult;
    .registers 5

    .prologue
    const-string v2, ","

    .line 758
    monitor-enter p0

    :try_start_3
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 759
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+CIND: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 761
    .local v1, status:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_6b

    .line 762
    monitor-exit p0

    return-object v0

    .line 758
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    .end local v1           #status:Ljava/lang/String;
    :catchall_6b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized toCregString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 754
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+CREG: 1,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized toCsqResult()Landroid/bluetooth/AtCommandResult;
    .registers 5

    .prologue
    .line 766
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 767
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+CSQ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",99"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 768
    .local v1, status:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 769
    monitor-exit p0

    return-object v0

    .line 766
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    .end local v1           #status:Ljava/lang/String;
    :catchall_27
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized updateBatteryState(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 524
    monitor-enter p0

    :try_start_2
    const-string v2, "level"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 525
    .local v0, batteryLevel:I
    const-string v2, "scale"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_41

    move-result v1

    .line 526
    .local v1, scale:I
    if-eq v0, v4, :cond_14

    if-ne v1, v4, :cond_16

    .line 536
    :cond_14
    :goto_14
    monitor-exit p0

    return-void

    .line 529
    :cond_16
    mul-int/lit8 v2, v0, 0x5

    :try_start_18
    div-int v0, v2, v1

    .line 530
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    if-eq v2, v0, :cond_14

    .line 531
    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    .line 532
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 533
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CIEV: 7,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mBattchg:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_18 .. :try_end_40} :catchall_41

    goto :goto_14

    .line 524
    .end local v0           #batteryLevel:I
    .end local v1           #scale:I
    :catchall_41
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private updateBtPhoneStateAfterRadioTechnologyChange()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 392
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 393
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPhoneStateChanged(Landroid/os/Handler;)V

    .line 394
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 397
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 398
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPhoneStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 399
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 400
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStateChangeHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 403
    :cond_58
    return-void
.end method

.method private declared-synchronized updatePhoneState(ZLcom/android/internal/telephony/Connection;)V
    .registers 17
    .parameter "sendUpdate"
    .parameter "connection"

    .prologue
    .line 593
    monitor-enter p0

    const/4 v0, 0x0

    .line 594
    .local v0, call:I
    const/4 v3, 0x0

    .line 595
    .local v3, callsetup:I
    const/4 v1, 0x0

    .line 596
    .local v1, callheld:I
    :try_start_4
    iget v7, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 597
    .local v7, prevCallsetup:I
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    const/4 v10, 0x2

    invoke-direct {v8, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 601
    .local v8, result:Landroid/bluetooth/AtCommandResult;
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$600(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    .line 602
    .local v5, newState:Lcom/android/internal/telephony/Phone$State;
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    if-eq v5, v10, :cond_51

    .line 603
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.bluetooth.intent.action.CALL_STATE_CHANGED"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    .local v4, intent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v10, v5}, Lcom/android/phone/BluetoothHandsfree;->access$1502(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone$State;)Lcom/android/internal/telephony/Phone$State;

    .line 605
    sget-object v10, Lcom/android/phone/BluetoothHandsfree$33;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    iget-object v11, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v11}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_224

    .line 612
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)V

    .line 613
    const-string v10, "android.bluetooth.intent.CALL_STATE"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 616
    :goto_46
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "android.permission.BLUETOOTH"

    invoke-virtual {v10, v4, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 619
    .end local v4           #intent:Landroid/content/Intent;
    :cond_51
    sget-object v10, Lcom/android/phone/BluetoothHandsfree$33;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    iget-object v11, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v11}, Lcom/android/phone/BluetoothHandsfree;->access$1800(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_22a

    .line 635
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/phone/BluetoothHandsfree;->access$1902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 638
    :goto_6c
    sget-object v10, Lcom/android/phone/BluetoothHandsfree$33;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    iget-object v11, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v11}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_234

    .line 645
    :goto_81
    sget-object v10, Lcom/android/phone/BluetoothHandsfree$33;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    iget-object v11, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v11}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_23c

    .line 656
    :goto_96
    iget v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    if-eq v10, v0, :cond_be

    .line 657
    const/4 v10, 0x1

    if-ne v0, v10, :cond_a2

    .line 660
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v10}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 662
    :cond_a2
    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    .line 663
    if-eqz p1, :cond_be

    .line 664
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+CIEV: 2,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 667
    :cond_be
    iget v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    if-eq v10, v3, :cond_f6

    .line 668
    iput v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    .line 669
    if-eqz p1, :cond_f6

    .line 676
    iget v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCall:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_de

    iget v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    if-eqz v10, :cond_de

    iget v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_f6

    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v10

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_f6

    .line 678
    :cond_de
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+CIEV: 3,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallsetup:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 683
    :cond_f6
    const/4 v10, 0x1

    if-ne v1, v10, :cond_201

    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v10

    iget-object v12, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v12}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_201

    const/4 v10, 0x1

    move v2, v10

    .line 687
    .local v2, callsSwitched:Z
    :goto_10f
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v11, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v11}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getEarliestConnectTime()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/android/phone/BluetoothHandsfree;->access$2302(Lcom/android/phone/BluetoothHandsfree;J)J

    .line 689
    iget v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    if-ne v10, v1, :cond_124

    if-eqz v2, :cond_140

    .line 690
    :cond_124
    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    .line 691
    if-eqz p1, :cond_140

    .line 692
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+CIEV: 4,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mCallheld:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 696
    :cond_140
    const/4 v10, 0x1

    if-ne v3, v10, :cond_1b3

    if-eq v3, v7, :cond_1b3

    .line 698
    const/4 v6, 0x0

    .line 699
    .local v6, number:Ljava/lang/String;
    const/16 v9, 0x80

    .line 701
    .local v9, type:I
    if-nez p2, :cond_15d

    .line 702
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$2000(Lcom/android/phone/BluetoothHandsfree;)Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object p2

    .line 703
    if-nez p2, :cond_15d

    .line 704
    const-string v10, "BT HS/HF"

    const-string v11, "Could not get a handle on Connection object for new incoming call"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_15d
    if-eqz p2, :cond_169

    .line 709
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 710
    if-eqz v6, :cond_169

    .line 711
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v9

    .line 714
    :cond_169
    if-nez v6, :cond_16d

    .line 715
    const-string v6, ""

    .line 717
    :cond_16d
    if-nez v0, :cond_171

    if-eqz v1, :cond_205

    :cond_171
    if-eqz p1, :cond_205

    .line 719
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v10

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_1b3

    .line 720
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+CCWA: \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 721
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "+CIEV: 3,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 735
    .end local v6           #number:Ljava/lang/String;
    .end local v9           #type:I
    :cond_1b3
    :goto_1b3
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v8}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_1bc
    .catchall {:try_start_4 .. :try_end_1bc} :catchall_1d1

    .line 736
    monitor-exit p0

    return-void

    .line 607
    .end local v2           #callsSwitched:Z
    .restart local v4       #intent:Landroid/content/Intent;
    :pswitch_1be
    :try_start_1be
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/phone/BluetoothHandsfree;->access$1602(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 608
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v10}, Lcom/android/phone/BluetoothHandsfree;->audioOff()V

    .line 609
    const-string v10, "android.bluetooth.intent.CALL_STATE"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1cf
    .catchall {:try_start_1be .. :try_end_1cf} :catchall_1d1

    goto/16 :goto_46

    .line 593
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #newState:Lcom/android/internal/telephony/Phone$State;
    .end local v7           #prevCallsetup:I
    .end local v8           #result:Landroid/bluetooth/AtCommandResult;
    :catchall_1d1
    move-exception v10

    monitor-exit p0

    throw v10

    .line 621
    .restart local v5       #newState:Lcom/android/internal/telephony/Phone$State;
    .restart local v7       #prevCallsetup:I
    .restart local v8       #result:Landroid/bluetooth/AtCommandResult;
    :pswitch_1d4
    const/4 v0, 0x1

    .line 622
    :try_start_1d5
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/phone/BluetoothHandsfree;->access$1902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_6c

    .line 625
    :pswitch_1dd
    const/4 v3, 0x2

    .line 626
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/phone/BluetoothHandsfree;->access$1902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_6c

    .line 629
    :pswitch_1e6
    const/4 v3, 0x3

    .line 631
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v10}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 632
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/phone/BluetoothHandsfree;->access$1902(Lcom/android/phone/BluetoothHandsfree;Z)Z

    goto/16 :goto_6c

    .line 641
    :pswitch_1f4
    const/4 v3, 0x1

    goto/16 :goto_81

    .line 647
    :pswitch_1f7
    const/4 v10, 0x1

    if-ne v0, v10, :cond_1fd

    .line 648
    const/4 v1, 0x1

    goto/16 :goto_96

    .line 650
    :cond_1fd
    const/4 v0, 0x1

    .line 651
    const/4 v1, 0x2

    goto/16 :goto_96

    .line 683
    :cond_201
    const/4 v10, 0x0

    move v2, v10

    goto/16 :goto_10f

    .line 725
    .restart local v2       #callsSwitched:Z
    .restart local v6       #number:Ljava/lang/String;
    .restart local v9       #type:I
    :cond_205
    iput-object v6, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingNumber:Ljava/lang/String;

    .line 726
    iput v9, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRingingType:I

    .line 727
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mIgnoreRing:Z

    .line 729
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v10}, Lcom/android/phone/BluetoothHandsfree;->access$2400(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v10

    and-int/lit8 v10, v10, 0x8

    const/4 v11, 0x1

    if-ne v10, v11, :cond_21c

    .line 730
    iget-object v10, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v10}, Lcom/android/phone/BluetoothHandsfree;->audioOn()Z

    .line 732
    :cond_21c
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->ring()Landroid/bluetooth/AtCommandResult;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V
    :try_end_223
    .catchall {:try_start_1d5 .. :try_end_223} :catchall_1d1

    goto :goto_1b3

    .line 605
    :pswitch_data_224
    .packed-switch 0x1
        :pswitch_1be
    .end packed-switch

    .line 619
    :pswitch_data_22a
    .packed-switch 0x1
        :pswitch_1d4
        :pswitch_1dd
        :pswitch_1e6
    .end packed-switch

    .line 638
    :pswitch_data_234
    .packed-switch 0x4
        :pswitch_1f4
        :pswitch_1f4
    .end packed-switch

    .line 645
    :pswitch_data_23c
    .packed-switch 0x6
        :pswitch_1f7
    .end packed-switch
.end method

.method private declared-synchronized updateServiceState(ZLandroid/telephony/ServiceState;)V
    .registers 10
    .parameter "sendUpdate"
    .parameter "state"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 559
    monitor-enter p0

    :try_start_3
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_79

    move v2, v5

    .line 560
    .local v2, service:I
    :goto_a
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_7b

    move v1, v5

    .line 562
    .local v1, roam:I
    :goto_11
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 563
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v4, p2}, Lcom/android/phone/BluetoothHandsfree;->access$1202(Lcom/android/phone/BluetoothHandsfree;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 564
    if-nez v2, :cond_7d

    .line 565
    const/4 v3, 0x0

    .line 570
    .local v3, stat:I
    :goto_1f
    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    if-eq v2, v4, :cond_3f

    .line 571
    iput v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    .line 572
    if-eqz p1, :cond_3f

    .line 573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+CIEV: 1,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mService:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 576
    :cond_3f
    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    if-eq v1, v4, :cond_5f

    .line 577
    iput v1, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    .line 578
    if-eqz p1, :cond_5f

    .line 579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+CIEV: 6,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRoam:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 582
    :cond_5f
    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    if-eq v3, v4, :cond_6e

    .line 583
    iput v3, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mStat:I

    .line 584
    if-eqz p1, :cond_6e

    .line 585
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->toCregString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 589
    :cond_6e
    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_3 .. :try_end_77} :catchall_84

    .line 590
    monitor-exit p0

    return-void

    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    .end local v1           #roam:I
    .end local v2           #service:I
    .end local v3           #stat:I
    :cond_79
    move v2, v6

    .line 559
    goto :goto_a

    .restart local v2       #service:I
    :cond_7b
    move v1, v6

    .line 560
    goto :goto_11

    .line 567
    .restart local v0       #result:Landroid/bluetooth/AtCommandResult;
    .restart local v1       #roam:I
    :cond_7d
    if-ne v1, v5, :cond_82

    const/4 v4, 0x5

    move v3, v4

    .restart local v3       #stat:I
    :goto_81
    goto :goto_1f

    .end local v3           #stat:I
    :cond_82
    move v3, v5

    goto :goto_81

    .line 559
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    .end local v1           #roam:I
    .end local v2           #service:I
    :catchall_84
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized updateSignalState(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    .line 541
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SignalStrength;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;

    move-result-object v1

    .line 544
    .local v1, signalStrength:Landroid/telephony/SignalStrength;
    if-eqz v1, :cond_3d

    .line 545
    invoke-direct {p0, v1}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->asuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 546
    .local v0, signal:I
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->signalToRssi(I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mRssi:I

    .line 547
    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    if-eq v0, v2, :cond_3b

    .line 548
    iput v0, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    .line 549
    invoke-direct {p0}, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->sendUpdate()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 550
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->this$0:Lcom/android/phone/BluetoothHandsfree;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+CIEV: 5,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/BluetoothHandsfree$BluetoothPhoneState;->mSignal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_45

    .line 556
    .end local v0           #signal:I
    :cond_3b
    :goto_3b
    monitor-exit p0

    return-void

    .line 554
    :cond_3d
    :try_start_3d
    const-string v2, "BT HS/HF"

    const-string v3, "Signal Strength null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_45

    goto :goto_3b

    .line 541
    .end local v1           #signalStrength:Landroid/telephony/SignalStrength;
    :catchall_45
    move-exception v2

    monitor-exit p0

    throw v2
.end method
