.class public Lcom/lge/hiddenmenu/module_test/ChargingTest;
.super Landroid/app/Activity;
.source "ChargingTest.java"


# static fields
.field private static final EVENT_TICK:I = 0x1

.field private static IsInit:Z = false

.field public static final Item:Ljava/lang/String; = "Time\t\tBar#\tSOC(%)\tCable\tmVolt\tTemp\tHealth"

.field private static SavingBattLogStatus:I

.field private static etm_writer:Ljava/io/BufferedWriter;

.field private static file1:Ljava/io/File;

.field private static final fn:[Ljava/lang/String;


# instance fields
.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenStats:Landroid/os/IPowerManager;

.field public t:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 44
    sput v2, Lcom/lge/hiddenmenu/module_test/ChargingTest;->SavingBattLogStatus:I

    .line 47
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/BattLog.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->file1:Ljava/io/File;

    .line 49
    sput-boolean v2, Lcom/lge/hiddenmenu/module_test/ChargingTest;->IsInit:Z

    .line 50
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/data/anr/BattLogStatus.txt"

    aput-object v1, v0, v2

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

    sput-object v0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->fn:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    new-instance v0, Lcom/lge/hiddenmenu/module_test/ChargingTest$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/module_test/ChargingTest$1;-><init>(Lcom/lge/hiddenmenu/module_test/ChargingTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/lge/hiddenmenu/module_test/ChargingTest$2;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/module_test/ChargingTest$2;-><init>(Lcom/lge/hiddenmenu/module_test/ChargingTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 349
    return-void
.end method

.method public static GetStatus()Z
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 300
    sget v0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->SavingBattLogStatus:I

    if-ne v0, v1, :cond_7

    move v0, v1

    .line 304
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/module_test/ChargingTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/lge/hiddenmenu/module_test/ChargingTest;->updateBatteryStats()V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->IsInit:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    sput-boolean p0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->IsInit:Z

    return p0
.end method

.method static synthetic access$202(Ljava/io/BufferedWriter;)Ljava/io/BufferedWriter;
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    sput-object p0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->etm_writer:Ljava/io/BufferedWriter;

    return-object p0
.end method

.method static synthetic access$300()Ljava/io/File;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->file1:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$402(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    sput p0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->SavingBattLogStatus:I

    return p0
.end method

.method private updateBatteryStats()V
    .registers 16

    .prologue
    .line 250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 251
    .local v10, uptime:J
    sget v12, Lcom/lge/hiddenmenu/module_test/ChargingTest;->SavingBattLogStatus:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_be

    .line 252
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 253
    .local v4, c:Ljava/util/Calendar;
    const/16 v12, 0xb

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 254
    .local v6, mHour:I
    const/16 v12, 0xc

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 255
    .local v7, mMinute:I
    const/16 v12, 0xd

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 257
    .local v8, mSecond:I
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/lge/hiddenmenu/module_test/ChargingTest;->ReadIntFromFile(I)I

    move-result v0

    .line 258
    .local v0, BattCapa:I
    const/4 v12, 0x2

    invoke-virtual {p0, v12}, Lcom/lge/hiddenmenu/module_test/ChargingTest;->ReadIntFromFile(I)I

    move-result v12

    div-int/lit16 v2, v12, 0x3e8

    .line 259
    .local v2, BattVolt:I
    const/4 v12, 0x3

    invoke-virtual {p0, v12}, Lcom/lge/hiddenmenu/module_test/ChargingTest;->ReadIntFromFile(I)I

    move-result v1

    .line 260
    .local v1, BattTemp:I
    const/4 v5, 0x0

    .line 263
    .local v5, mBatteryBarCnt:I
    const/4 v12, 0x4

    invoke-virtual {p0, v12}, Lcom/lge/hiddenmenu/module_test/ChargingTest;->ReadIntFromFile(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_bf

    .line 265
    const-string v3, "AC"

    .line 274
    .local v3, CableSt:Ljava/lang/String;
    :goto_3b
    if-ltz v0, :cond_cf

    const/4 v12, 0x4

    if-gt v0, v12, :cond_cf

    .line 275
    const/4 v5, 0x0

    .line 289
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

    const-string v13, "    "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "      "

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

    invoke-virtual {p0, v13}, Lcom/lge/hiddenmenu/module_test/ChargingTest;->ReadStringFromFile(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 293
    .local v9, sTemp:Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/lge/hiddenmenu/module_test/ChargingTest;->WriteStringToFile(Ljava/lang/String;)V

    .line 295
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
    :cond_be
    return-void

    .line 266
    .restart local v0       #BattCapa:I
    .restart local v1       #BattTemp:I
    .restart local v2       #BattVolt:I
    .restart local v4       #c:Ljava/util/Calendar;
    .restart local v5       #mBatteryBarCnt:I
    .restart local v6       #mHour:I
    .restart local v7       #mMinute:I
    .restart local v8       #mSecond:I
    :cond_bf
    const/4 v12, 0x5

    invoke-virtual {p0, v12}, Lcom/lge/hiddenmenu/module_test/ChargingTest;->ReadIntFromFile(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_cb

    .line 268
    const-string v3, "USB"

    .restart local v3       #CableSt:Ljava/lang/String;
    goto/16 :goto_3b

    .line 271
    .end local v3           #CableSt:Ljava/lang/String;
    :cond_cb
    const-string v3, "None"

    .restart local v3       #CableSt:Ljava/lang/String;
    goto/16 :goto_3b

    .line 276
    :cond_cf
    const/4 v12, 0x4

    if-le v0, v12, :cond_d9

    const/16 v12, 0xe

    if-gt v0, v12, :cond_d9

    .line 277
    const/4 v5, 0x1

    goto/16 :goto_41

    .line 278
    :cond_d9
    const/16 v12, 0xe

    if-le v0, v12, :cond_e4

    const/16 v12, 0x1d

    if-gt v0, v12, :cond_e4

    .line 279
    const/4 v5, 0x2

    goto/16 :goto_41

    .line 280
    :cond_e4
    const/16 v12, 0x1d

    if-le v0, v12, :cond_ef

    const/16 v12, 0x31

    if-gt v0, v12, :cond_ef

    .line 281
    const/4 v5, 0x3

    goto/16 :goto_41

    .line 282
    :cond_ef
    const/16 v12, 0x31

    if-le v0, v12, :cond_fa

    const/16 v12, 0x45

    if-gt v0, v12, :cond_fa

    .line 283
    const/4 v5, 0x4

    goto/16 :goto_41

    .line 284
    :cond_fa
    const/16 v12, 0x45

    if-le v0, v12, :cond_105

    const/16 v12, 0x59

    if-gt v0, v12, :cond_105

    .line 285
    const/4 v5, 0x5

    goto/16 :goto_41

    .line 286
    :cond_105
    const/16 v12, 0x59

    if-le v0, v12, :cond_41

    const/16 v12, 0x64

    if-gt v0, v12, :cond_41

    .line 287
    const/4 v5, 0x6

    goto/16 :goto_41
.end method


# virtual methods
.method public ReadIntFromFile(I)I
    .registers 8
    .parameter "FileName"

    .prologue
    .line 310
    const/4 v3, 0x0

    .line 312
    .local v3, result:I
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    sget-object v5, Lcom/lge/hiddenmenu/module_test/ChargingTest;->fn:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 313
    .local v2, inReader:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, in:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 315
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_1b

    .line 321
    .end local v1           #in:Ljava/lang/String;
    .end local v2           #inReader:Ljava/io/BufferedReader;
    :goto_1a
    return v3

    .line 317
    :catch_1b
    move-exception v4

    move-object v0, v4

    .line 319
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a
.end method

.method public ReadStringFromFile(I)Ljava/lang/String;
    .registers 7
    .parameter "FileName"

    .prologue
    .line 326
    const-string v2, "--"

    .line 328
    .local v2, result:Ljava/lang/String;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    sget-object v4, Lcom/lge/hiddenmenu/module_test/ChargingTest;->fn:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 329
    .local v1, inReader:Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 330
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_17} :catch_18

    .line 336
    .end local v1           #inReader:Ljava/io/BufferedReader;
    :goto_17
    return-object v2

    .line 332
    :catch_18
    move-exception v3

    move-object v0, v3

    .line 334
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17
.end method

.method public WriteStringToFile(Ljava/lang/String;)V
    .registers 6
    .parameter "data"

    .prologue
    .line 343
    :try_start_0
    sget-object v1, Lcom/lge/hiddenmenu/module_test/ChargingTest;->etm_writer:Ljava/io/BufferedWriter;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 344
    sget-object v1, Lcom/lge/hiddenmenu/module_test/ChargingTest;->etm_writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 345
    sget-object v1, Lcom/lge/hiddenmenu/module_test/ChargingTest;->etm_writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    .line 349
    :goto_14
    return-void

    .line 346
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 347
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 164
    const v2, 0x7f030006

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/module_test/ChargingTest;->setContentView(I)V

    .line 166
    const v2, 0x7f070017

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/module_test/ChargingTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->t:Landroid/widget/TextView;

    .line 169
    :try_start_14
    sget-object v2, Lcom/lge/hiddenmenu/module_test/ChargingTest;->file1:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 170
    iget-object v2, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->t:Landroid/widget/TextView;

    const-string v3, " File is created "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_23} :catch_4b

    .line 180
    :goto_23
    const v2, 0x7f070019

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/module_test/ChargingTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 181
    .local v0, checkbox:Landroid/widget/CheckBox;
    new-instance v2, Lcom/lge/hiddenmenu/module_test/ChargingTest$3;

    invoke-direct {v2, p0, v0}, Lcom/lge/hiddenmenu/module_test/ChargingTest$3;-><init>(Lcom/lge/hiddenmenu/module_test/ChargingTest;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->mIntentFilter:Landroid/content/IntentFilter;

    .line 197
    iget-object v2, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    return-void

    .line 172
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_43
    :try_start_43
    iget-object v2, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->t:Landroid/widget/TextView;

    const-string v3, " File aleady exists "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4a} :catch_4b

    goto :goto_23

    .line 174
    :catch_4b
    move-exception v2

    move-object v1, v2

    .line 176
    .local v1, e:Ljava/io/IOException;
    iget-object v2, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->t:Landroid/widget/TextView;

    const-string v3, " Fail to access micro SD card"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 243
    :try_start_3
    sget-object v0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->etm_writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_9

    .line 247
    :goto_8
    return-void

    .line 244
    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 236
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 219
    const-string v0, "ChargingTest"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 220
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->mScreenStats:Landroid/os/IPowerManager;

    .line 221
    iget-object v0, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 223
    iget-object v0, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/lge/hiddenmenu/module_test/ChargingTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    return-void
.end method
