.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Landroid/preference/PreferenceActivity;
.source "PowerUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageSummary$2;,
        Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;,
        Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_ITEMS_TO_LIST:I = 0xa

.field private static final MENU_STATS_REFRESH:I = 0x2

.field private static final MENU_STATS_TYPE:I = 0x1

.field private static final MIN_POWER_THRESHOLD:I = 0x5

.field private static final MSG_UPDATE_NAME_ICON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PowerUsageSummary"


# instance fields
.field private mAbort:Z

.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field mHandler:Landroid/os/Handler;

.field private mMaxPower:D

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestThread:Ljava/lang/Thread;

.field mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mStatsType:I

.field private mTotalPower:D

.field private mUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    .line 76
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 81
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUidCache:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    .line 701
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUidCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addBluetoothUsage(J)V
    .registers 16
    .parameter "uSecNow"

    .prologue
    const-wide v11, 0x408f400000000000L

    .line 459
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v9, 0x3e8

    div-long v3, v0, v9

    .line 460
    .local v3, btOnTimeMs:J
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v0, v9

    div-double v6, v0, v11

    .line 462
    .local v6, btPower:D
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v8

    .line 463
    .local v8, btPingCount:I
    int-to-double v0, v8

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.at"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v0, v9

    div-double/2addr v0, v11

    add-double/2addr v6, v0

    .line 466
    const v0, 0x7f080343

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->BLUETOOTH:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x10801a1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    .line 468
    return-void
.end method

.method private addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    .registers 15
    .parameter "label"
    .parameter "drainType"
    .parameter "time"
    .parameter "iconId"
    .parameter "power"

    .prologue
    .line 515
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v1, p6, v1

    if-lez v1, :cond_8

    iput-wide p6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 516
    :cond_8
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double/2addr v1, p6

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 517
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    const/4 v5, 0x0

    const/4 v1, 0x1

    new-array v6, v1, [D

    const/4 v1, 0x0

    aput-wide p6, v6, v1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 518
    .local v0, bs:Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    iput-wide p3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->usageTime:J

    .line 519
    iput p5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->iconId:I

    .line 520
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    return-object v0
.end method

.method private addIdleUsage(J)V
    .registers 13
    .parameter "uSecNow"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 452
    .local v3, idleTimeMs:J
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    .line 454
    .local v6, idlePower:D
    const v0, 0x7f080346

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->IDLE:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x1080030

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    .line 456
    return-void
.end method

.method private addPhoneUsage(J)V
    .registers 13
    .parameter "uSecNow"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 394
    .local v3, phoneOnTimeMs:J
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v8, v3

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    .line 396
    .local v6, phoneOnPower:D
    const v0, 0x7f080345

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->PHONE:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x1080036

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    .line 398
    return-void
.end method

.method private addRadioUsage(J)V
    .registers 16
    .parameter "uSecNow"

    .prologue
    .line 422
    const-wide/16 v6, 0x0

    .line 423
    .local v6, power:D
    const/4 v8, 0x5

    .line 424
    .local v8, BINS:I
    const-wide/16 v3, 0x0

    .line 425
    .local v3, signalTimeMs:J
    const/4 v10, 0x0

    .end local v8           #BINS:I
    .local v10, i:I
    :goto_6
    const/4 v0, 0x5

    if-ge v10, v0, :cond_28

    .line 426
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, v10, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long v11, v0, v8

    .line 427
    .local v11, strengthTimeMs:J
    const-wide/16 v0, 0x3e8

    div-long v0, v11, v0

    long-to-double v0, v0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "radio.on"

    invoke-virtual {v2, v5, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v8

    mul-double/2addr v0, v8

    add-double/2addr v6, v0

    .line 429
    add-long/2addr v3, v11

    .line 425
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 431
    .end local v11           #strengthTimeMs:J
    :cond_28
    const v0, 0x7f080344

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->CELL:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x108009d

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    move-result-object v9

    .line 434
    .local v9, bs:Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-eqz v0, :cond_53

    .line 435
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long/2addr v0, v5

    long-to-double v0, v0

    const-wide/high16 v5, 0x4059

    mul-double/2addr v0, v5

    long-to-double v2, v3

    div-double/2addr v0, v2

    iput-wide v0, v9, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->noCoveragePercent:D

    .line 438
    :cond_53
    return-void
.end method

.method private addScreenUsage(J)V
    .registers 23
    .parameter "uSecNow"

    .prologue
    .line 401
    const-wide/16 v11, 0x0

    .line 402
    .local v11, power:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v6, v0

    move-object v0, v5

    move-wide/from16 v1, p1

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v8, v5, v7

    .line 403
    .local v8, screenOnTimeMs:J
    long-to-double v5, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v7, v0

    const-string v10, "screen.on"

    invoke-virtual {v7, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v13

    mul-double/2addr v5, v13

    add-double/2addr v11, v5

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v5, v0

    const-string v6, "screen.full"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    .line 406
    .local v18, screenFullPower:D
    const/4 v15, 0x0

    .local v15, i:I
    :goto_32
    const/4 v5, 0x5

    if-ge v15, v5, :cond_5e

    .line 407
    int-to-float v5, v15

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-double v5, v5

    mul-double v5, v5, v18

    const-wide/high16 v13, 0x4014

    div-double v16, v5, v13

    .line 409
    .local v16, screenBinPower:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v6, v0

    move-object v0, v5

    move v1, v15

    move-wide/from16 v2, p1

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v5

    const-wide/16 v13, 0x3e8

    div-long v13, v5, v13

    .line 410
    .local v13, brightnessTime:J
    long-to-double v5, v13

    mul-double v5, v5, v16

    add-double/2addr v11, v5

    .line 406
    add-int/lit8 v15, v15, 0x1

    goto :goto_32

    .line 416
    .end local v13           #brightnessTime:J
    .end local v16           #screenBinPower:D
    :cond_5e
    const-wide v5, 0x408f400000000000L

    div-double/2addr v11, v5

    .line 417
    const v5, 0x7f080341

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->SCREEN:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v10, 0x1080057

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    .line 419
    return-void
.end method

.method private addWiFiUsage(J)V
    .registers 13
    .parameter "uSecNow"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v8, v0, v2

    .line 442
    .local v8, onTimeMs:J
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiRunningTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 443
    .local v3, runningTimeMs:J
    const-wide/16 v0, 0x0

    mul-long/2addr v0, v8

    long-to-double v0, v0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    long-to-double v5, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.on"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v6, v0, v5

    .line 446
    .local v6, wifiPower:D
    const v0, 0x7f080342

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->WIFI:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02002b

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    .line 448
    return-void
.end method

.method private getAverageDataCost()D
    .registers 27

    .prologue
    .line 471
    const-wide/32 v6, 0xf4240

    .line 472
    .local v6, WIFI_BPS:J
    const-wide/32 v2, 0x30d40

    .line 473
    .local v2, MOBILE_BPS:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v22, v0

    const-string v23, "wifi.active"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v22

    const-wide v24, 0x40ac200000000000L

    div-double v8, v22, v24

    .line 475
    .local v8, WIFI_POWER:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v22, v0

    const-string v23, "radio.active"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v22

    const-wide v24, 0x40ac200000000000L

    div-double v4, v22, v24

    .line 477
    .local v4, MOBILE_POWER:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v24

    add-long v14, v22, v24

    .line 479
    .local v14, mobileData:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v24

    add-long v22, v22, v24

    sub-long v20, v22, v14

    .line 481
    .local v20, wifiData:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v16, v22, v24

    .line 482
    .local v16, radioDataUptimeMs:J
    const-wide/16 v22, 0x0

    cmp-long v22, v16, v22

    if-eqz v22, :cond_c5

    const-wide/16 v22, 0x8

    mul-long v22, v22, v14

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    div-long v22, v22, v16

    move-wide/from16 v10, v22

    .line 486
    .local v10, mobileBps:J
    :goto_92
    const-wide/16 v22, 0x8

    div-long v22, v10, v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v12, v4, v22

    .line 487
    .local v12, mobileCostPerByte:D
    const-wide v22, 0x40fe848000000000L

    div-double v18, v8, v22

    .line 488
    .local v18, wifiCostPerByte:D
    add-long v22, v20, v14

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_cb

    .line 489
    move-wide v0, v14

    long-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v12

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v18

    add-double v22, v22, v24

    add-long v24, v14, v20

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    .line 492
    :goto_c4
    return-wide v22

    .line 482
    .end local v10           #mobileBps:J
    .end local v12           #mobileCostPerByte:D
    .end local v18           #wifiCostPerByte:D
    :cond_c5
    const-wide/32 v22, 0x30d40

    move-wide/from16 v10, v22

    goto :goto_92

    .line 492
    .restart local v10       #mobileBps:J
    .restart local v12       #mobileCostPerByte:D
    .restart local v18       #wifiCostPerByte:D
    :cond_cb
    const-wide/16 v22, 0x0

    goto :goto_c4
.end method

.method private load()V
    .registers 6

    .prologue
    .line 526
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 527
    .local v0, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 528
    .local v2, parcel:Landroid/os/Parcel;
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 529
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 530
    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 535
    .end local v0           #data:[B
    .end local v2           #parcel:Landroid/os/Parcel;
    :goto_1d
    return-void

    .line 532
    :catch_1e
    move-exception v3

    move-object v1, v3

    .line 533
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "PowerUsageSummary"

    const-string v4, "RemoteException:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method

.method private processAppUsage()V
    .registers 57

    .prologue
    .line 296
    const-string v5, "sensor"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/hardware/SensorManager;

    .line 297
    .local v40, sensorManager:Landroid/hardware/SensorManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v55, v0

    .line 298
    .local v55, which:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v5, v0

    const-string v6, "cpu.normal"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v31

    .line 299
    .local v31, powerCpuNormal:D
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getAverageDataCost()D

    move-result-wide v12

    .line 300
    .local v12, averageCostPerByte:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    move-object v0, v5

    move-wide v1, v7

    move/from16 v3, v55

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v50

    .line 301
    .local v50, uSecTime:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v50

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateStatsPeriod(J)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v52

    .line 303
    .local v52, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v52 .. v52}, Landroid/util/SparseArray;->size()I

    move-result v11

    .line 304
    .local v11, NU:I
    const/16 v26, 0x0

    .local v26, iu:I
    :goto_4a
    move/from16 v0, v26

    move v1, v11

    if-ge v0, v1, :cond_199

    .line 305
    move-object/from16 v0, v52

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BatteryStats$Uid;

    .line 306
    .local v9, u:Landroid/os/BatteryStats$Uid;
    const-wide/16 v29, 0x0

    .line 307
    .local v29, power:D
    const-wide/16 v23, 0x0

    .line 308
    .local v23, highestDrain:D
    const/4 v6, 0x0

    .line 310
    .local v6, packageWithHighestDrain:Ljava/lang/String;
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v35

    .line 311
    .local v35, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v16, 0x0

    .line 312
    .local v16, cpuTime:J
    const-wide/16 v14, 0x0

    .line 313
    .local v14, cpuFgTime:J
    const-wide/16 v21, 0x0

    .line 314
    .local v21, gpsTime:J
    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_c2

    .line 317
    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :cond_76
    :goto_76
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c2

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 319
    .local v18, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/BatteryStats$Uid$Proc;

    .line 320
    .local v36, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v36

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v53

    .line 321
    .local v53, userTime:J
    move-object/from16 v0, v36

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v45

    .line 322
    .local v45, systemTime:J
    move-object/from16 v0, v36

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v19

    .line 323
    .local v19, foregroundTime:J
    const-wide/16 v7, 0xa

    mul-long v7, v7, v19

    add-long/2addr v14, v7

    .line 324
    add-long v7, v53, v45

    const-wide/16 v19, 0xa

    mul-long v48, v7, v19

    .line 325
    .local v48, tmpCpuTime:J
    move-wide/from16 v0, v48

    long-to-double v0, v0

    move-wide v7, v0

    mul-double v33, v7, v31

    .line 326
    .local v33, processPower:D
    add-long v16, v16, v48

    .line 327
    add-double v29, v29, v33

    .line 328
    cmpg-double v5, v23, v33

    if-gez v5, :cond_76

    .line 329
    .end local v19           #foregroundTime:J
    move-wide/from16 v23, v33

    .line 330
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6       #packageWithHighestDrain:Ljava/lang/String;
    goto :goto_76

    .line 337
    .end local v18           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v25           #i$:Ljava/util/Iterator;
    .end local v33           #processPower:D
    .end local v36           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v45           #systemTime:J
    .end local v48           #tmpCpuTime:J
    .end local v53           #userTime:J
    :cond_c2
    cmp-long v5, v14, v16

    if-lez v5, :cond_c8

    .line 341
    move-wide/from16 v16, v14

    .line 343
    :cond_c8
    const-wide v7, 0x408f400000000000L

    div-double v29, v29, v7

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v5, v0

    invoke-virtual {v9, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v5, v0

    invoke-virtual {v9, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v18

    add-long v7, v7, v18

    long-to-double v7, v7

    mul-double/2addr v7, v12

    add-double v29, v29, v7

    .line 350
    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v41

    .line 352
    .local v41, sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v41 .. v41}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25       #i$:Ljava/util/Iterator;
    :goto_f3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_150

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/util/Map$Entry;

    .line 353
    .local v39, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v39 .. v39}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/os/BatteryStats$Uid$Sensor;

    .line 354
    .local v37, sensor:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v37 .. v37}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v44

    .line 355
    .local v44, sensorType:I
    invoke-virtual/range {v37 .. v37}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v47

    .line 356
    .local v47, timer:Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v47

    move-wide/from16 v1, v50

    move/from16 v3, v55

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v7

    const-wide/16 v18, 0x3e8

    div-long v42, v7, v18

    .line 357
    .local v42, sensorTime:J
    const-wide/16 v27, 0x0

    .line 358
    .local v27, multiplier:D
    packed-switch v44, :pswitch_data_19a

    .line 364
    move-object/from16 v0, v40

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v38

    .line 366
    .local v38, sensorData:Landroid/hardware/Sensor;
    if-eqz v38, :cond_132

    .line 367
    invoke-virtual/range {v38 .. v38}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    move v0, v5

    float-to-double v0, v0

    move-wide/from16 v27, v0

    .line 374
    .end local v38           #sensorData:Landroid/hardware/Sensor;
    :cond_132
    :goto_132
    move-wide/from16 v0, v42

    long-to-double v0, v0

    move-wide v7, v0

    mul-double v7, v7, v27

    const-wide v18, 0x408f400000000000L

    div-double v7, v7, v18

    add-double v29, v29, v7

    .line 375
    goto :goto_f3

    .line 360
    :pswitch_142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v5, v0

    const-string v7, "gps.on"

    invoke-virtual {v5, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v27

    .line 361
    move-wide/from16 v21, v42

    .line 362
    goto :goto_132

    .line 378
    .end local v27           #multiplier:D
    .end local v37           #sensor:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v39           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v42           #sensorTime:J
    .end local v44           #sensorType:I
    .end local v47           #timer:Landroid/os/BatteryStats$Timer;
    :cond_150
    const-wide/16 v7, 0x0

    cmpl-double v5, v29, v7

    if-eqz v5, :cond_17a

    .line 379
    new-instance v4, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    sget-object v7, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const/4 v8, 0x0

    const/4 v5, 0x1

    new-array v10, v5, [D

    const/4 v5, 0x0

    aput-wide v29, v10, v5

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 381
    .local v4, app:Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    move-wide/from16 v0, v16

    move-object v2, v4

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->cpuTime:J

    .line 382
    move-wide/from16 v0, v21

    move-object v2, v4

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->gpsTime:J

    .line 383
    iput-wide v14, v4, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->cpuFgTime:J

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    .end local v4           #app:Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    :cond_17a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    move-wide v7, v0

    cmpl-double v5, v29, v7

    if-lez v5, :cond_189

    move-wide/from16 v0, v29

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 387
    :cond_189
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    move-wide v7, v0

    add-double v7, v7, v29

    move-wide v0, v7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 304
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_4a

    .line 390
    .end local v6           #packageWithHighestDrain:Ljava/lang/String;
    .end local v9           #u:Landroid/os/BatteryStats$Uid;
    .end local v14           #cpuFgTime:J
    .end local v16           #cpuTime:J
    .end local v21           #gpsTime:J
    .end local v23           #highestDrain:D
    .end local v25           #i$:Ljava/util/Iterator;
    .end local v29           #power:D
    .end local v35           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v41           #sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    :cond_199
    return-void

    .line 358
    :pswitch_data_19a
    .packed-switch -0x2710
        :pswitch_142
    .end packed-switch
.end method

.method private processMiscUsage()V
    .registers 12

    .prologue
    .line 497
    iget v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 498
    .local v6, which:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v4, v7, v9

    .line 499
    .local v4, uSecTime:J
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v7, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v2

    .line 500
    .local v2, uSecNow:J
    move-wide v0, v2

    .line 505
    .local v0, timeSinceUnplugged:J
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPhoneUsage(J)V

    .line 506
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addScreenUsage(J)V

    .line 507
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addWiFiUsage(J)V

    .line 508
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addBluetoothUsage(J)V

    .line 509
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addIdleUsage(J)V

    .line 510
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addRadioUsage(J)V

    .line 511
    return-void
.end method

.method private refreshStats()V
    .registers 14

    .prologue
    const-wide/high16 v11, 0x4059

    const-wide/16 v8, 0x0

    .line 243
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v7, :cond_b

    .line 244
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->load()V

    .line 246
    :cond_b
    iput-wide v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 247
    iput-wide v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 249
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 250
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 251
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->processAppUsage()V

    .line 252
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->processMiscUsage()V

    .line 254
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 256
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 257
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    .line 258
    .local v6, sipper:Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getSortValue()D

    move-result-wide v7

    const-wide/high16 v9, 0x4014

    cmpg-double v7, v7, v9

    if-ltz v7, :cond_30

    .line 259
    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getSortValue()D

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    div-double/2addr v7, v9

    mul-double v3, v7, v11

    .line 260
    .local v3, percentOfTotal:D
    const-wide/high16 v7, 0x3ff0

    cmpg-double v7, v3, v7

    if-ltz v7, :cond_30

    .line 261
    new-instance v5, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v5, p0, v7, v6}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;)V

    .line 262
    .local v5, pref:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getSortValue()D

    move-result-wide v7

    mul-double/2addr v7, v11

    iget-wide v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double v1, v7, v9

    .line 263
    .local v1, percentOfMax:D
    iput-wide v3, v6, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->percent:D

    .line 264
    iget-object v7, v6, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    invoke-virtual {v5, v3, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(D)V

    .line 266
    const v7, 0x7fffffff

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getSortValue()D

    move-result-wide v8

    double-to-int v8, v8

    sub-int/2addr v7, v8

    invoke-virtual {v5, v7}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 267
    invoke-virtual {v5, v1, v2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setGaugeValue(D)V

    .line 268
    iget-object v7, v6, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v7, :cond_91

    .line 269
    iget-object v7, v6, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 271
    :cond_91
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 272
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    const/16 v8, 0xa

    if-le v7, v8, :cond_30

    .line 275
    .end local v1           #percentOfMax:D
    .end local v3           #percentOfTotal:D
    .end local v5           #pref:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .end local v6           #sipper:Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    :cond_a0
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v7

    .line 276
    :try_start_a3
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c8

    .line 277
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    if-nez v8, :cond_c3

    .line 278
    new-instance v8, Ljava/lang/Thread;

    const-string v9, "BatteryUsage Icon Loader"

    invoke-direct {v8, p0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    .line 279
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/Thread;->setPriority(I)V

    .line 280
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 282
    :cond_c3
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 284
    :cond_c8
    monitor-exit v7

    .line 285
    return-void

    .line 284
    :catchall_ca
    move-exception v8

    monitor-exit v7
    :try_end_cc
    .catchall {:try_start_a3 .. :try_end_cc} :catchall_ca

    throw v8
.end method

.method private updateStatsPeriod(J)V
    .registers 8
    .parameter "duration"

    .prologue
    .line 288
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-double v2, v2

    invoke-static {p0, v2, v3}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, durationString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v2

    if-eqz v2, :cond_22

    const v2, 0x7f080337

    :goto_14
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, label:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->setTitle(Ljava/lang/CharSequence;)V

    .line 293
    return-void

    .line 289
    .end local v1           #label:Ljava/lang/String;
    :cond_22
    const v2, 0x7f080338

    goto :goto_14
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f040012

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 103
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 105
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 106
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 107
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 206
    const/4 v0, 0x2

    const v1, 0x7f080369

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080193

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 224
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    move v0, v1

    .line 238
    :goto_a
    return v0

    .line 226
    :pswitch_b
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v0, :cond_17

    .line 227
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 231
    :goto_12
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    move v0, v2

    .line 232
    goto :goto_a

    .line 229
    :cond_17
    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_12

    .line 234
    :pswitch_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 235
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    move v0, v2

    .line 236
    goto :goto_a

    .line 224
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_b
        :pswitch_1a
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 118
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 119
    const/4 v1, 0x1

    :try_start_5
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    .line 120
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_11

    .line 121
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 123
    return-void

    .line 120
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 15
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 127
    move-object v0, p2

    check-cast v0, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    move-object v2, v0

    .line 128
    .local v2, pgp:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    move-result-object v3

    .line 129
    .local v3, sipper:Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    new-instance v1, Landroid/content/Intent;

    const-class v7, Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-direct {v1, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "title"

    iget-object v8, v3, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v7, "percent"

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getSortValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x4059

    mul-double/2addr v8, v10

    iget-wide v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const-string v7, "gauge"

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getSortValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x4059

    mul-double/2addr v8, v10

    iget-wide v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    const-string v7, "iconPackage"

    iget-object v8, v3, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v7, "iconId"

    iget v8, v3, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->iconId:I

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v7, "noCoverage"

    iget-wide v8, v3, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->noCoveragePercent:D

    invoke-virtual {v1, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 138
    iget-object v7, v3, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v7, :cond_62

    .line 139
    const-string v7, "uid"

    iget-object v8, v3, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    :cond_62
    const-string v7, "drainType"

    iget-object v8, v3, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 145
    sget-object v7, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v8, v3, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v8}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_f6

    .line 184
    const/4 v7, 0x1

    new-array v4, v7, [I

    const/4 v7, 0x0

    const v8, 0x7f08034f

    aput v8, v4, v7

    .line 187
    .local v4, types:[I
    const/4 v7, 0x1

    new-array v6, v7, [D

    const/4 v7, 0x0

    iget-wide v8, v3, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->usageTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    .line 192
    .local v6, values:[D
    :goto_88
    const-string v7, "types"

    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 193
    const-string v7, "values"

    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->startActivity(Landroid/content/Intent;)V

    .line 196
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    return v7

    .line 148
    .end local v4           #types:[I
    .end local v6           #values:[D
    :pswitch_9a
    iget-object v5, v3, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 149
    .local v5, uid:Landroid/os/BatteryStats$Uid;
    const/4 v7, 0x7

    new-array v4, v7, [I

    fill-array-data v4, :array_fe

    .line 158
    .restart local v4       #types:[I
    const/4 v7, 0x7

    new-array v6, v7, [D

    const/4 v7, 0x0

    iget-wide v8, v3, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->cpuTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, v3, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->cpuFgTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x2

    iget-wide v8, v3, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->gpsTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x3

    if-eqz v5, :cond_da

    iget v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v5, v8}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v8

    long-to-double v8, v8

    :goto_c1
    aput-wide v8, v6, v7

    const/4 v7, 0x4

    if-eqz v5, :cond_dd

    iget v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v5, v8}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v8

    long-to-double v8, v8

    :goto_cd
    aput-wide v8, v6, v7

    const/4 v7, 0x5

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v7

    const/4 v7, 0x6

    const-wide/16 v8, 0x0

    aput-wide v8, v6, v7

    .line 169
    .restart local v6       #values:[D
    goto :goto_88

    .line 158
    .end local v6           #values:[D
    :cond_da
    const-wide/16 v8, 0x0

    goto :goto_c1

    :cond_dd
    const-wide/16 v8, 0x0

    goto :goto_cd

    .line 172
    .end local v4           #types:[I
    .end local v5           #uid:Landroid/os/BatteryStats$Uid;
    :pswitch_e0
    const/4 v7, 0x2

    new-array v4, v7, [I

    fill-array-data v4, :array_110

    .line 176
    .restart local v4       #types:[I
    const/4 v7, 0x2

    new-array v6, v7, [D

    const/4 v7, 0x0

    iget-wide v8, v3, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->usageTime:J

    long-to-double v8, v8

    aput-wide v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, v3, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->noCoveragePercent:D

    aput-wide v8, v6, v7

    .line 181
    .restart local v6       #values:[D
    goto :goto_88

    .line 145
    nop

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_e0
    .end packed-switch

    .line 149
    :array_fe
    .array-data 0x4
        0x47t 0x3t 0x8t 0x7ft
        0x48t 0x3t 0x8t 0x7ft
        0x49t 0x3t 0x8t 0x7ft
        0x4bt 0x3t 0x8t 0x7ft
        0x4ct 0x3t 0x8t 0x7ft
        0x4dt 0x3t 0x8t 0x7ft
        0x4et 0x3t 0x8t 0x7ft
    .end array-data

    .line 172
    :array_110
    .array-data 0x4
        0x4ft 0x3t 0x8t 0x7ft
        0x50t 0x3t 0x8t 0x7ft
    .end array-data
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 111
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    .line 113
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 114
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    .line 688
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 689
    :try_start_3
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    if-eqz v2, :cond_14

    .line 690
    :cond_f
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    .line 691
    monitor-exit v1

    return-void

    .line 693
    :cond_14
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    .line 694
    .local v0, bs:Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_22

    .line 695
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getNameIcon()V

    goto :goto_0

    .line 694
    .end local v0           #bs:Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2
.end method
