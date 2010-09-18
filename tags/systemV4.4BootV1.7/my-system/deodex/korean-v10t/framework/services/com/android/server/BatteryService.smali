.class Lcom/android/server/BatteryService;
.super Landroid/os/Binder;
.source "BatteryService.java"


# static fields
.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field static final BATTERY_SCALE:I = 0x64

.field private static final BATTERY_STATS_SERVICE_NAME:Ljava/lang/String; = "batteryinfo"

.field private static final CRITICAL_BATTERY_LEVEL:I = 0x4

.field private static final DUMPSYS_ARGS:[Ljava/lang/String; = null

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final DUMP_MAX_LENGTH:I = 0x6000

.field private static final LOCAL_LOGV:Z = false

.field static final LOG_BATTERY_DISCHARGE_STATUS:I = 0xaaa

.field static final LOG_BATTERY_LEVEL:I = 0xaa2

.field static final LOG_BATTERY_STATUS:I = 0xaa3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAcOnline:Z

.field private mBatteryHealth:I

.field private mBatteryLevel:I

.field private mBatteryLevelCritical:Z

.field private mBatteryPresent:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryStatus:I

.field private mBatteryTechnology:Ljava/lang/String;

.field private mBatteryTemperature:I

.field private mBatteryVoltage:I

.field private final mContext:Landroid/content/Context;

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private mLastBatteryHealth:I

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryPresent:Z

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastPlugType:I

.field private mPlugType:I

.field private mUEventObserver:Landroid/os/UEventObserver;

.field private mUsbOnline:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 75
    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "--checkin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-u"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 165
    new-instance v0, Lcom/android/server/BatteryService$1;

    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mUEventObserver:Landroid/os/UEventObserver;

    .line 128
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 129
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 131
    iget-object v0, p0, Lcom/android/server/BatteryService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "SUBSYSTEM=power_supply"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/android/server/BatteryService;->update()V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BatteryService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/BatteryService;->update()V

    return-void
.end method

.method private final getIcon(I)I
    .registers 4
    .parameter "level"

    .prologue
    .line 409
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 410
    const v0, 0x108022e

    .line 416
    :goto_8
    return v0

    .line 411
    :cond_9
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1c

    .line 414
    :cond_18
    const v0, 0x1080226

    goto :goto_8

    .line 416
    :cond_1c
    const v0, 0x1080235

    goto :goto_8
.end method

.method private final logBatteryStats()V
    .registers 16

    .prologue
    .line 325
    const-string v11, "batteryinfo"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 326
    .local v0, batteryInfoService:Landroid/os/IBinder;
    if-eqz v0, :cond_81

    .line 327
    const/16 v11, 0x6000

    new-array v1, v11, [B

    .line 328
    .local v1, buffer:[B
    const/4 v2, 0x0

    .line 329
    .local v2, dumpFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 330
    .local v4, dumpStream:Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .line 333
    .local v7, fileInputStream:Ljava/io/FileInputStream;
    :try_start_f
    new-instance v3, Ljava/io/File;

    const-string v11, "/data/system/batteryinfo.dump"

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_10f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_16} :catch_82
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_c8

    .line 334
    .end local v2           #dumpFile:Ljava/io/File;
    .local v3, dumpFile:Ljava/io/File;
    :try_start_16
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_18d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1ad
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_19b

    .line 335
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .local v5, dumpStream:Ljava/io/FileOutputStream;
    :try_start_1b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    sget-object v12, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v0, v11, v12}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 336
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/FileDescriptor;->sync()V

    .line 340
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v13, 0x6000

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v9, v11

    .line 341
    .local v9, length:I
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3b
    .catchall {:try_start_1b .. :try_end_3b} :catchall_190
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_3b} :catch_1b2
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_3b} :catch_1a0

    .line 342
    .end local v7           #fileInputStream:Ljava/io/FileInputStream;
    .local v8, fileInputStream:Ljava/io/FileInputStream;
    const/4 v11, 0x0

    :try_start_3c
    invoke-virtual {v8, v1, v11, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v10

    .line 343
    .local v10, nread:I
    if-lez v10, :cond_53

    .line 344
    iget-object v11, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/Checkin$Events$Tag;->BATTERY_DISCHARGE_INFO:Landroid/provider/Checkin$Events$Tag;

    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v1, v14, v10}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v11, v12, v13}, Landroid/provider/Checkin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_53
    .catchall {:try_start_3c .. :try_end_53} :catchall_195
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_53} :catch_1b8
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_53} :catch_1a6

    .line 358
    :cond_53
    if-eqz v5, :cond_58

    .line 360
    :try_start_55
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_179

    .line 365
    :cond_58
    :goto_58
    if-eqz v8, :cond_5d

    .line 367
    :try_start_5a
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_183

    .line 372
    :cond_5d
    :goto_5d
    if-eqz v3, :cond_81

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_81

    .line 373
    sget-object v11, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed to delete temporary dumpsys file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .end local v3           #dumpFile:Ljava/io/File;
    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .end local v8           #fileInputStream:Ljava/io/FileInputStream;
    .end local v9           #length:I
    .end local v10           #nread:I
    :goto_7e
    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v1           #buffer:[B
    :cond_81
    return-void

    .line 351
    .restart local v1       #buffer:[B
    .restart local v2       #dumpFile:Ljava/io/File;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileInputStream:Ljava/io/FileInputStream;
    :catch_82
    move-exception v11

    move-object v6, v11

    .line 352
    .local v6, e:Landroid/os/RemoteException;
    :goto_84
    :try_start_84
    sget-object v11, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed to dump service \'batteryinfo\':"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catchall {:try_start_84 .. :try_end_9c} :catchall_10f

    .line 358
    if-eqz v4, :cond_a1

    .line 360
    :try_start_9e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_151

    .line 365
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_a1
    :goto_a1
    if-eqz v7, :cond_a6

    .line 367
    :try_start_a3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_15b

    .line 372
    :cond_a6
    :goto_a6
    if-eqz v2, :cond_81

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_81

    .line 373
    sget-object v11, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed to delete temporary dumpsys file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_7e

    .line 354
    :catch_c8
    move-exception v11

    move-object v6, v11

    .line 355
    .local v6, e:Ljava/io/IOException;
    :goto_ca
    :try_start_ca
    sget-object v11, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed to write dumpsys file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catchall {:try_start_ca .. :try_end_e2} :catchall_10f

    .line 358
    if-eqz v4, :cond_e7

    .line 360
    :try_start_e4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_165

    .line 365
    :cond_e7
    :goto_e7
    if-eqz v7, :cond_ec

    .line 367
    :try_start_e9
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_16f

    .line 372
    :cond_ec
    :goto_ec
    if-eqz v2, :cond_81

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_81

    .line 373
    sget-object v11, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed to delete temporary dumpsys file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_7e

    .line 358
    .end local v6           #e:Ljava/io/IOException;
    :catchall_10f
    move-exception v11

    :goto_110
    if-eqz v4, :cond_115

    .line 360
    :try_start_112
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_13f

    .line 365
    :cond_115
    :goto_115
    if-eqz v7, :cond_11a

    .line 367
    :try_start_117
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11a} :catch_148

    .line 372
    :cond_11a
    :goto_11a
    if-eqz v2, :cond_13e

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v12

    if-nez v12, :cond_13e

    .line 373
    sget-object v12, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "failed to delete temporary dumpsys file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_13e
    throw v11

    .line 361
    :catch_13f
    move-exception v6

    .line 362
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v12, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v13, "failed to close dumpsys output stream"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_115

    .line 368
    .end local v6           #e:Ljava/io/IOException;
    :catch_148
    move-exception v6

    .line 369
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v12, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v13, "failed to close dumpsys input stream"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11a

    .line 361
    .local v6, e:Landroid/os/RemoteException;
    :catch_151
    move-exception v6

    .line 362
    .local v6, e:Ljava/io/IOException;
    sget-object v11, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v12, "failed to close dumpsys output stream"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a1

    .line 368
    .end local v6           #e:Ljava/io/IOException;
    :catch_15b
    move-exception v6

    .line 369
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v11, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v12, "failed to close dumpsys input stream"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a6

    .line 361
    :catch_165
    move-exception v6

    .line 362
    sget-object v11, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v12, "failed to close dumpsys output stream"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e7

    .line 368
    :catch_16f
    move-exception v6

    .line 369
    sget-object v11, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v12, "failed to close dumpsys input stream"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ec

    .line 361
    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v9       #length:I
    .restart local v10       #nread:I
    :catch_179
    move-exception v6

    .line 362
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v11, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v12, "failed to close dumpsys output stream"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_58

    .line 368
    .end local v6           #e:Ljava/io/IOException;
    :catch_183
    move-exception v6

    .line 369
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v11, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v12, "failed to close dumpsys input stream"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5d

    .line 358
    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #fileInputStream:Ljava/io/FileInputStream;
    .end local v9           #length:I
    .end local v10           #nread:I
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    .restart local v7       #fileInputStream:Ljava/io/FileInputStream;
    :catchall_18d
    move-exception v11

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_110

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catchall_190
    move-exception v11

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_110

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .end local v7           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v9       #length:I
    :catchall_195
    move-exception v11

    move-object v7, v8

    .end local v8           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v7       #fileInputStream:Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_110

    .line 354
    .end local v2           #dumpFile:Ljava/io/File;
    .end local v9           #length:I
    .restart local v3       #dumpFile:Ljava/io/File;
    :catch_19b
    move-exception v11

    move-object v6, v11

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_ca

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catch_1a0
    move-exception v11

    move-object v6, v11

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_ca

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .end local v7           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v9       #length:I
    :catch_1a6
    move-exception v11

    move-object v6, v11

    move-object v7, v8

    .end local v8           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v7       #fileInputStream:Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_ca

    .line 351
    .end local v2           #dumpFile:Ljava/io/File;
    .end local v9           #length:I
    .restart local v3       #dumpFile:Ljava/io/File;
    :catch_1ad
    move-exception v11

    move-object v6, v11

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_84

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catch_1b2
    move-exception v11

    move-object v6, v11

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_84

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .end local v7           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    .restart local v8       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v9       #length:I
    :catch_1b8
    move-exception v11

    move-object v6, v11

    move-object v7, v8

    .end local v8           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v7       #fileInputStream:Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_84
.end method

.method private final logOutlier(J)V
    .registers 13
    .parameter "duration"

    .prologue
    .line 381
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 382
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v7, "battery_discharge_threshold"

    invoke-static {v0, v7}, Landroid/provider/Settings$Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, dischargeThresholdString:Ljava/lang/String;
    const-string v7, "battery_discharge_duration_threshold"

    invoke-static {v0, v7}, Landroid/provider/Settings$Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 387
    .local v5, durationThresholdString:Ljava/lang/String;
    if-eqz v2, :cond_2c

    if-eqz v5, :cond_2c

    .line 389
    :try_start_16
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 390
    .local v3, durationThreshold:J
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 391
    .local v1, dischargeThreshold:I
    cmp-long v7, p1, v3

    if-gtz v7, :cond_2c

    iget v7, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    sub-int/2addr v7, v8

    if-lt v7, v1, :cond_2c

    .line 394
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStats()V
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_2c} :catch_2d

    .line 406
    .end local v1           #dischargeThreshold:I
    .end local v3           #durationThreshold:J
    :cond_2c
    :goto_2c
    return-void

    .line 400
    :catch_2d
    move-exception v7

    move-object v6, v7

    .line 401
    .local v6, e:Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid DischargeThresholds GService string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method private native native_update()V
.end method

.method private final declared-synchronized update()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 180
    monitor-enter p0

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/BatteryService;->native_update()V

    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, logOutlier:Z
    const-wide/16 v0, 0x0

    .line 185
    .local v0, dischargeDuration:J
    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    const/4 v5, 0x4

    if-gt v4, v5, :cond_176

    move v4, v9

    :goto_11
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 186
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-eqz v4, :cond_179

    .line 187
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    .line 193
    :goto_1a
    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v4, v5, :cond_44

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v4, v5, :cond_44

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v4, v5, :cond_44

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v4, v5, :cond_44

    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v4, v5, :cond_44

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v4, v5, :cond_44

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-eq v4, v5, :cond_174

    .line 201
    :cond_44
    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v4, v5, :cond_88

    .line 202
    iget v4, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v4, :cond_18a

    .line 207
    iget-wide v4, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_88

    iget v4, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    if-eq v4, v5, :cond_88

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v0, v4, v6

    .line 209
    const/4 v3, 0x1

    .line 210
    const/16 v4, 0xaaa

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 213
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 221
    :cond_88
    :goto_88
    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v4, v5, :cond_a0

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v4, v5, :cond_a0

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v4, v5, :cond_a0

    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v4, v5, :cond_d4

    .line 225
    :cond_a0
    const/16 v4, 0xaa3

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    if-eqz v7, :cond_19a

    move v7, v9

    :goto_bd
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 229
    :cond_d4
    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v4, v5, :cond_e6

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v4, v5, :cond_e6

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-eq v4, v5, :cond_109

    .line 232
    :cond_e6
    const/16 v4, 0xaa2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 235
    :cond_109
    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-eq v4, v5, :cond_11a

    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I
    :try_end_111
    .catchall {:try_start_5 .. :try_end_111} :catchall_182

    if-nez v4, :cond_11a

    .line 240
    :try_start_113
    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v5, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-interface {v4, v5}, Lcom/android/internal/app/IBatteryStats;->recordCurrentLevel(I)V
    :try_end_11a
    .catchall {:try_start_113 .. :try_end_11a} :catchall_182
    .catch Landroid/os/RemoteException; {:try_start_113 .. :try_end_11a} :catch_1b7

    .line 245
    :cond_11a
    :goto_11a
    :try_start_11a
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v4, :cond_12f

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v4, :cond_12f

    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v4, :cond_12f

    .line 249
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v0, v4, v6

    .line 250
    const/4 v3, 0x1

    .line 256
    :cond_12f
    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v4, :cond_19d

    iget v4, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v4, :cond_19d

    .line 257
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 267
    .end local v2           #intent:Landroid/content/Intent;
    :cond_148
    :goto_148
    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iput v4, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 268
    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iput v4, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 269
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 270
    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iput v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 271
    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iput v4, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 272
    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    iput v4, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 273
    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iput v4, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 274
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    .line 276
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->sendIntent()V

    .line 279
    if-eqz v3, :cond_174

    cmp-long v4, v0, v10

    if-eqz v4, :cond_174

    .line 280
    invoke-direct {p0, v0, v1}, Lcom/android/server/BatteryService;->logOutlier(J)V
    :try_end_174
    .catchall {:try_start_11a .. :try_end_174} :catchall_182

    .line 283
    :cond_174
    monitor-exit p0

    return-void

    :cond_176
    move v4, v8

    .line 185
    goto/16 :goto_11

    .line 188
    :cond_179
    :try_start_179
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-eqz v4, :cond_185

    .line 189
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/BatteryService;->mPlugType:I
    :try_end_180
    .catchall {:try_start_179 .. :try_end_180} :catchall_182

    goto/16 :goto_1a

    .line 180
    .end local v0           #dischargeDuration:J
    .end local v3           #logOutlier:Z
    :catchall_182
    move-exception v4

    monitor-exit p0

    throw v4

    .line 191
    .restart local v0       #dischargeDuration:J
    .restart local v3       #logOutlier:Z
    :cond_185
    const/4 v4, 0x0

    :try_start_186
    iput v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_1a

    .line 215
    :cond_18a
    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v4, :cond_88

    .line 217
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 218
    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iput v4, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    goto/16 :goto_88

    :cond_19a
    move v7, v8

    .line 225
    goto/16 :goto_bd

    .line 261
    :cond_19d
    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v4, :cond_148

    iget v4, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v4, :cond_148

    .line 262
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .restart local v2       #intent:Landroid/content/Intent;
    const/high16 v4, 0x2000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1b6
    .catchall {:try_start_186 .. :try_end_1b6} :catchall_182

    goto :goto_148

    .line 241
    .end local v2           #intent:Landroid/content/Intent;
    :catch_1b7
    move-exception v4

    goto/16 :goto_11a
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_33

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump Battery service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    :goto_32
    return-void

    .line 431
    :cond_33
    monitor-enter p0

    .line 432
    :try_start_34
    const-string v0, "Current Battery Service state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AC powered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  USB powered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  health: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  present: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    const-string v0, "  scale: 100"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  voltage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  temperature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  technology: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    monitor-exit p0

    goto/16 :goto_32

    :catchall_119
    move-exception v0

    monitor-exit p0
    :try_end_11b
    .catchall {:try_start_34 .. :try_end_11b} :catchall_119

    throw v0
.end method

.method final getBatteryLevel()I
    .registers 2

    .prologue
    .line 174
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    return v0
.end method

.method final getPlugType()I
    .registers 2

    .prologue
    .line 162
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method final isPowered()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 139
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-ne v0, v1, :cond_f

    :cond_d
    move v0, v1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method final isPowered(I)Z
    .registers 6
    .parameter "plugTypeSet"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 145
    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-ne v1, v2, :cond_8

    move v1, v2

    .line 158
    :goto_7
    return v1

    .line 148
    :cond_8
    if-nez p1, :cond_c

    move v1, v3

    .line 149
    goto :goto_7

    .line 151
    :cond_c
    const/4 v0, 0x0

    .line 152
    .local v0, plugTypeBit:I
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-eqz v1, :cond_13

    .line 153
    or-int/lit8 v0, v0, 0x1

    .line 155
    :cond_13
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-eqz v1, :cond_19

    .line 156
    or-int/lit8 v0, v0, 0x2

    .line 158
    :cond_19
    and-int v1, p1, v0

    if-eqz v1, :cond_1f

    move v1, v2

    goto :goto_7

    :cond_1f
    move v1, v3

    goto :goto_7
.end method

.method public final sendIntent()V
    .registers 6

    .prologue
    .line 288
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 291
    :try_start_c
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v3, :cond_67

    const/4 v3, 0x1

    :goto_13
    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-interface {v2, v3, v4}, Lcom/android/internal/app/IBatteryStats;->setOnBattery(ZI)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_69

    .line 296
    :goto_18
    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->getIcon(I)I

    move-result v0

    .line 298
    .local v0, icon:I
    const-string v2, "status"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 299
    const-string v2, "health"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 300
    const-string v2, "present"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 301
    const-string v2, "level"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    const-string v2, "icon-small"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    const-string v2, "plugged"

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    const-string v2, "voltage"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    const-string v2, "temperature"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    const-string v2, "technology"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 321
    return-void

    .line 291
    .end local v0           #icon:I
    :cond_67
    const/4 v3, 0x0

    goto :goto_13

    .line 292
    :catch_69
    move-exception v2

    goto :goto_18
.end method
