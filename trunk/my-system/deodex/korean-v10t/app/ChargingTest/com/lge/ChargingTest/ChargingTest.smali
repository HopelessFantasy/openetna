.class public Lcom/lge/ChargingTest/ChargingTest;
.super Landroid/app/Activity;
.source "ChargingTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/ChargingTest/ChargingTest$ApplicationsIntentReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_TICK:I = 0x1

.field private static IsInit:Z = false

.field public static final Item:Ljava/lang/String; = "     Time\tBar#\tSOC(%)\tCable\tmVolt\tTemp\tHealth\r"

.field public static SavingBattLogStatus:I

.field private static bBatteryAlert:Z

.field public static etm_writer:Ljava/io/BufferedWriter;

.field public static file1:Ljava/io/File;

.field private static final fn:[Ljava/lang/String;


# instance fields
.field private final mApplicationsReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenStats:Landroid/os/IPowerManager;

.field public t:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 40
    sput v3, Lcom/lge/ChargingTest/ChargingTest;->SavingBattLogStatus:I

    .line 43
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/BattLog.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lge/ChargingTest/ChargingTest;->file1:Ljava/io/File;

    .line 44
    sput-boolean v3, Lcom/lge/ChargingTest/ChargingTest;->IsInit:Z

    .line 45
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/sdcard/BattLogStatus.txt"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "/sys/class/power_supply/battery/capacity"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/sys/class/power_supply/battery/batt_vol"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/sys/class/power_supply/battery/batt_temp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/sys/class/power_supply/ac/online"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/sys/class/power_supply/usb/online"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/sys/class/power_supply/battery/health"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/ChargingTest/ChargingTest;->fn:[Ljava/lang/String;

    .line 55
    sput-boolean v3, Lcom/lge/ChargingTest/ChargingTest;->bBatteryAlert:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    new-instance v0, Lcom/lge/ChargingTest/ChargingTest$ApplicationsIntentReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/ChargingTest/ChargingTest$ApplicationsIntentReceiver;-><init>(Lcom/lge/ChargingTest/ChargingTest;Lcom/lge/ChargingTest/ChargingTest$1;)V

    iput-object v0, p0, Lcom/lge/ChargingTest/ChargingTest;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    new-instance v0, Lcom/lge/ChargingTest/ChargingTest$1;

    invoke-direct {v0, p0}, Lcom/lge/ChargingTest/ChargingTest$1;-><init>(Lcom/lge/ChargingTest/ChargingTest;)V

    iput-object v0, p0, Lcom/lge/ChargingTest/ChargingTest;->mHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/lge/ChargingTest/ChargingTest$2;

    invoke-direct {v0, p0}, Lcom/lge/ChargingTest/ChargingTest$2;-><init>(Lcom/lge/ChargingTest/ChargingTest;)V

    iput-object v0, p0, Lcom/lge/ChargingTest/ChargingTest;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 368
    return-void
.end method

.method public static GetStatus()Z
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 322
    sget v0, Lcom/lge/ChargingTest/ChargingTest;->SavingBattLogStatus:I

    if-ne v0, v1, :cond_7

    move v0, v1

    .line 326
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static synthetic access$100(Lcom/lge/ChargingTest/ChargingTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/lge/ChargingTest/ChargingTest;->updateBatteryStats()V

    return-void
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/lge/ChargingTest/ChargingTest;->IsInit:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    sput-boolean p0, Lcom/lge/ChargingTest/ChargingTest;->IsInit:Z

    return p0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    sput-boolean p0, Lcom/lge/ChargingTest/ChargingTest;->bBatteryAlert:Z

    return p0
.end method

.method private registerIntentReceivers()V
    .registers 3

    .prologue
    .line 251
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 252
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "BATTERY_ALERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/lge/ChargingTest/ChargingTest;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lge/ChargingTest/ChargingTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 254
    return-void
.end method

.method private updateBatteryStats()V
    .registers 16

    .prologue
    .line 264
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 265
    .local v10, uptime:J
    sget v12, Lcom/lge/ChargingTest/ChargingTest;->SavingBattLogStatus:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_113

    .line 266
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 267
    .local v4, c:Ljava/util/Calendar;
    const/16 v12, 0xb

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 268
    .local v6, mHour:I
    const/16 v12, 0xc

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 269
    .local v7, mMinute:I
    const/16 v12, 0xd

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 271
    .local v8, mSecond:I
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/lge/ChargingTest/ChargingTest;->ReadIntFromFile(I)I

    move-result v0

    .line 272
    .local v0, BattCapa:I
    const/4 v12, 0x2

    invoke-virtual {p0, v12}, Lcom/lge/ChargingTest/ChargingTest;->ReadIntFromFile(I)I

    move-result v2

    .line 273
    .local v2, BattVolt:I
    const/4 v12, 0x3

    invoke-virtual {p0, v12}, Lcom/lge/ChargingTest/ChargingTest;->ReadIntFromFile(I)I

    move-result v12

    div-int/lit8 v1, v12, 0xa

    .line 274
    .local v1, BattTemp:I
    const/4 v5, 0x0

    .line 277
    .local v5, mBatteryBarCnt:I
    const/4 v12, 0x4

    invoke-virtual {p0, v12}, Lcom/lge/ChargingTest/ChargingTest;->ReadIntFromFile(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_114

    .line 279
    const-string v3, "AC"

    .line 288
    .local v3, CableSt:Ljava/lang/String;
    :goto_3b
    if-ltz v0, :cond_124

    const/4 v12, 0x4

    if-gt v0, v12, :cond_124

    .line 289
    const/4 v5, 0x0

    .line 303
    :cond_41
    :goto_41
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/16 v13, 0x3e8

    div-long v13, v10, v13

    invoke-static {v13, v14}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\t "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\t"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\t"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\t"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\t"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "C\t"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x6

    invoke-virtual {p0, v13}, Lcom/lge/ChargingTest/ChargingTest;->ReadStringFromFile(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\r"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 307
    .local v9, sTemp:Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/lge/ChargingTest/ChargingTest;->WriteStringToFile(Ljava/lang/String;)V

    .line 308
    sget-boolean v12, Lcom/lge/ChargingTest/ChargingTest;->bBatteryAlert:Z

    if-eqz v12, :cond_113

    .line 310
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/16 v13, 0x3e8

    div-long v13, v10, v13

    invoke-static {v13, v14}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "===> Battery Alert is shown!!!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\r"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 313
    invoke-virtual {p0, v9}, Lcom/lge/ChargingTest/ChargingTest;->WriteStringToFile(Ljava/lang/String;)V

    .line 314
    const/4 v12, 0x0

    sput-boolean v12, Lcom/lge/ChargingTest/ChargingTest;->bBatteryAlert:Z

    .line 317
    .end local v0           #BattCapa:I
    .end local v1           #BattTemp:I
    .end local v2           #BattVolt:I
    .end local v3           #CableSt:Ljava/lang/String;
    .end local v4           #c:Ljava/util/Calendar;
    .end local v5           #mBatteryBarCnt:I
    .end local v6           #mHour:I
    .end local v7           #mMinute:I
    .end local v8           #mSecond:I
    .end local v9           #sTemp:Ljava/lang/String;
    :cond_113
    return-void

    .line 280
    .restart local v0       #BattCapa:I
    .restart local v1       #BattTemp:I
    .restart local v2       #BattVolt:I
    .restart local v4       #c:Ljava/util/Calendar;
    .restart local v5       #mBatteryBarCnt:I
    .restart local v6       #mHour:I
    .restart local v7       #mMinute:I
    .restart local v8       #mSecond:I
    :cond_114
    const/4 v12, 0x5

    invoke-virtual {p0, v12}, Lcom/lge/ChargingTest/ChargingTest;->ReadIntFromFile(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_120

    .line 282
    const-string v3, "USB"

    .restart local v3       #CableSt:Ljava/lang/String;
    goto/16 :goto_3b

    .line 285
    .end local v3           #CableSt:Ljava/lang/String;
    :cond_120
    const-string v3, "None"

    .restart local v3       #CableSt:Ljava/lang/String;
    goto/16 :goto_3b

    .line 290
    :cond_124
    const/4 v12, 0x4

    if-le v0, v12, :cond_12e

    const/16 v12, 0xe

    if-gt v0, v12, :cond_12e

    .line 291
    const/4 v5, 0x1

    goto/16 :goto_41

    .line 292
    :cond_12e
    const/16 v12, 0xe

    if-le v0, v12, :cond_139

    const/16 v12, 0x1d

    if-gt v0, v12, :cond_139

    .line 293
    const/4 v5, 0x2

    goto/16 :goto_41

    .line 294
    :cond_139
    const/16 v12, 0x1d

    if-le v0, v12, :cond_144

    const/16 v12, 0x31

    if-gt v0, v12, :cond_144

    .line 295
    const/4 v5, 0x3

    goto/16 :goto_41

    .line 296
    :cond_144
    const/16 v12, 0x31

    if-le v0, v12, :cond_14f

    const/16 v12, 0x45

    if-gt v0, v12, :cond_14f

    .line 297
    const/4 v5, 0x4

    goto/16 :goto_41

    .line 298
    :cond_14f
    const/16 v12, 0x45

    if-le v0, v12, :cond_15a

    const/16 v12, 0x59

    if-gt v0, v12, :cond_15a

    .line 299
    const/4 v5, 0x5

    goto/16 :goto_41

    .line 300
    :cond_15a
    const/16 v12, 0x59

    if-le v0, v12, :cond_41

    const/16 v12, 0x64

    if-gt v0, v12, :cond_41

    .line 301
    const/4 v5, 0x6

    goto/16 :goto_41
.end method


# virtual methods
.method public ReadIntFromFile(I)I
    .registers 8
    .parameter "FileName"

    .prologue
    .line 332
    const/4 v3, 0x0

    .line 334
    .local v3, result:I
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    sget-object v5, Lcom/lge/ChargingTest/ChargingTest;->fn:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 335
    .local v2, inReader:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, in:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_18

    move-result v3

    .line 341
    .end local v1           #in:Ljava/lang/String;
    .end local v2           #inReader:Ljava/io/BufferedReader;
    :goto_17
    return v3

    .line 337
    :catch_18
    move-exception v4

    move-object v0, v4

    .line 339
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17
.end method

.method public ReadStringFromFile(I)Ljava/lang/String;
    .registers 7
    .parameter "FileName"

    .prologue
    .line 346
    const-string v2, "--"

    .line 348
    .local v2, result:Ljava/lang/String;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    sget-object v4, Lcom/lge/ChargingTest/ChargingTest;->fn:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 349
    .local v1, inReader:Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_15

    move-result-object v2

    .line 354
    .end local v1           #inReader:Ljava/io/BufferedReader;
    :goto_14
    return-object v2

    .line 350
    :catch_15
    move-exception v3

    move-object v0, v3

    .line 352
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14
.end method

.method public WriteStringToFile(Ljava/lang/String;)V
    .registers 6
    .parameter "data"

    .prologue
    .line 362
    :try_start_0
    sget-object v1, Lcom/lge/ChargingTest/ChargingTest;->etm_writer:Ljava/io/BufferedWriter;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 363
    sget-object v1, Lcom/lge/ChargingTest/ChargingTest;->etm_writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 364
    sget-object v1, Lcom/lge/ChargingTest/ChargingTest;->etm_writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    .line 368
    :goto_14
    return-void

    .line 365
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 366
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/lge/ChargingTest/ChargingTest;->setContentView(I)V

    .line 165
    const/high16 v2, 0x7f05

    invoke-virtual {p0, v2}, Lcom/lge/ChargingTest/ChargingTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/ChargingTest/ChargingTest;->t:Landroid/widget/TextView;

    .line 168
    :try_start_12
    sget-object v2, Lcom/lge/ChargingTest/ChargingTest;->file1:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 169
    iget-object v2, p0, Lcom/lge/ChargingTest/ChargingTest;->t:Landroid/widget/TextView;

    const-string v3, " File is created "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_21} :catch_4f

    .line 179
    :goto_21
    invoke-direct {p0}, Lcom/lge/ChargingTest/ChargingTest;->registerIntentReceivers()V

    .line 180
    const/4 v2, 0x0

    sput-boolean v2, Lcom/lge/ChargingTest/ChargingTest;->bBatteryAlert:Z

    .line 182
    const v2, 0x7f050002

    invoke-virtual {p0, v2}, Lcom/lge/ChargingTest/ChargingTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 183
    .local v0, checkbox:Landroid/widget/CheckBox;
    new-instance v2, Lcom/lge/ChargingTest/ChargingTest$3;

    invoke-direct {v2, p0, v0}, Lcom/lge/ChargingTest/ChargingTest$3;-><init>(Lcom/lge/ChargingTest/ChargingTest;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/lge/ChargingTest/ChargingTest;->mIntentFilter:Landroid/content/IntentFilter;

    .line 199
    iget-object v2, p0, Lcom/lge/ChargingTest/ChargingTest;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    return-void

    .line 171
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_47
    :try_start_47
    iget-object v2, p0, Lcom/lge/ChargingTest/ChargingTest;->t:Landroid/widget/TextView;

    const-string v3, " File aleady exists "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4e} :catch_4f

    goto :goto_21

    .line 173
    :catch_4f
    move-exception v2

    move-object v1, v2

    .line 175
    .local v1, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/lge/ChargingTest/ChargingTest;->t:Landroid/widget/TextView;

    const-string v3, " Fail to access micro SD card"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 258
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 260
    iget-object v0, p0, Lcom/lge/ChargingTest/ChargingTest;->mApplicationsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/ChargingTest/ChargingTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 261
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 238
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 221
    const-string v0, "ChargingTest"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/ChargingTest/ChargingTest;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 222
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/ChargingTest/ChargingTest;->mScreenStats:Landroid/os/IPowerManager;

    .line 223
    iget-object v0, p0, Lcom/lge/ChargingTest/ChargingTest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 225
    iget-object v0, p0, Lcom/lge/ChargingTest/ChargingTest;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/lge/ChargingTest/ChargingTest;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/lge/ChargingTest/ChargingTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    return-void
.end method
