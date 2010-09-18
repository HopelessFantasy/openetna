.class public Lcom/lge/ota/KTRegiActivity;
.super Lcom/lge/ota/OTAActivity;
.source "KTRegiActivity.java"


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x3

.field public static final KT_OTAOPENMODE_MESSAGE_SENT_ACTION:Ljava/lang/String; = "com.lge.ota.KT_OTAOPENMODE_MESSAGE_SENT"

.field private static final TAG:Ljava/lang/String; = "KTRegiActivity"

.field private static time1:Ljava/util/Date;

.field private static time2:Ljava/util/Date;


# instance fields
.field private ad:Landroid/app/AlertDialog$Builder;

.field private ad2:Landroid/app/AlertDialog$Builder;

.field private ad3:Landroid/app/AlertDialog$Builder;

.field private adg:Landroid/app/AlertDialog;

.field private checkReg:Z

.field private checkService:Z

.field private checkTimer:Z

.field private filter:Landroid/content/IntentFilter;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mainThreadRunnable:Ljava/lang/Runnable;

.field private pwrMngr:Landroid/os/PowerManager;

.field private setupTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/lge/ota/OTAActivity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/ota/KTRegiActivity;->adg:Landroid/app/AlertDialog;

    .line 61
    iput-boolean v1, p0, Lcom/lge/ota/KTRegiActivity;->checkTimer:Z

    .line 63
    iput-boolean v1, p0, Lcom/lge/ota/KTRegiActivity;->checkReg:Z

    .line 71
    new-instance v0, Lcom/lge/ota/KTRegiActivity$1;

    invoke-direct {v0, p0}, Lcom/lge/ota/KTRegiActivity$1;-><init>(Lcom/lge/ota/KTRegiActivity;)V

    iput-object v0, p0, Lcom/lge/ota/KTRegiActivity;->mHandler:Landroid/os/Handler;

    .line 514
    new-instance v0, Lcom/lge/ota/KTRegiActivity$11;

    invoke-direct {v0, p0}, Lcom/lge/ota/KTRegiActivity$11;-><init>(Lcom/lge/ota/KTRegiActivity;)V

    iput-object v0, p0, Lcom/lge/ota/KTRegiActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/ota/KTRegiActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lge/ota/KTRegiActivity;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/ota/KTRegiActivity;)Landroid/os/PowerManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->pwrMngr:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/ota/KTRegiActivity;)Landroid/app/AlertDialog$Builder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->ad:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/ota/KTRegiActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/lge/ota/KTRegiActivity;->checkService:Z

    return v0
.end method

.method static synthetic access$302(Lcom/lge/ota/KTRegiActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/lge/ota/KTRegiActivity;->checkService:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lge/ota/KTRegiActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->adg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lge/ota/KTRegiActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lge/ota/KTRegiActivity;->adg:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lge/ota/KTRegiActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/lge/ota/KTRegiActivity;->checkReg:Z

    return v0
.end method

.method static synthetic access$502(Lcom/lge/ota/KTRegiActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/lge/ota/KTRegiActivity;->checkReg:Z

    return p1
.end method

.method static synthetic access$600(Lcom/lge/ota/KTRegiActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lge/ota/KTRegiActivity;->saveOpendayFile()V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/ota/KTRegiActivity;)Landroid/app/AlertDialog$Builder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->ad2:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/ota/KTRegiActivity;)Landroid/app/AlertDialog$Builder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->ad3:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 619
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    move v0, v2

    goto :goto_e
.end method

.method private onAirplaneModeChanged()V
    .registers 2

    .prologue
    .line 88
    invoke-static {p0}, Lcom/lge/ota/KTRegiActivity;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 90
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/lge/ota/KTRegiActivity;->setAirplaneMode(Landroid/content/Context;Z)V

    .line 92
    :cond_a
    return-void
.end method

.method private saveOpendayFile()V
    .registers 9

    .prologue
    .line 495
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy.MM.dd HH:mm:ss"

    sget-object v6, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v1, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 496
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 497
    .local v2, mDate:Ljava/util/Date;
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, open_day:Ljava/lang/String;
    :try_start_12
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    const-string v6, "/lgdrm/Openday"

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 502
    .local v4, out:Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v3, v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    .line 503
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 504
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V

    .line 505
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    .line 506
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "chmod 666 /lgdrm/Openday"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_38} :catch_39

    .line 512
    .end local v4           #out:Ljava/io/BufferedWriter;
    :goto_38
    return-void

    .line 508
    :catch_39
    move-exception v5

    move-object v0, v5

    .line 510
    .local v0, e:Ljava/io/IOException;
    const-string v5, "KTRegiActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "write failed: IOException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method

.method public static setAirplaneMode(Landroid/content/Context;Z)V
    .registers 10
    .parameter "context"
    .parameter "status"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "airplane_mode_on"

    const-string v6, "airplane mode active="

    const-string v5, "KTRegiActivity"

    .line 625
    if-eqz p1, :cond_3b

    .line 627
    const-string v1, "KTRegiActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "airplane mode active="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 629
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 631
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 641
    :goto_3a
    return-void

    .line 636
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3b
    const-string v1, "KTRegiActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "airplane mode active="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 638
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 639
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 640
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3a
.end method


# virtual methods
.method public KTF_RegiProcess()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 411
    const-string v0, "KTRegiActivity"

    const-string v1, "mode check start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-static {p0, v2}, Lcom/lge/ota/KTRegiActivity;->setAirplaneMode(Landroid/content/Context;Z)V

    .line 413
    iput-boolean v2, p0, Lcom/lge/ota/KTRegiActivity;->checkService:Z

    .line 414
    iput-boolean v2, p0, Lcom/lge/ota/KTRegiActivity;->checkReg:Z

    .line 416
    return-void
.end method

.method public OTAModeOFF()V
    .registers 4

    .prologue
    .line 403
    const-string v1, "KTRegiActivity"

    const-string v2, "OTAModeOFF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 405
    .local v0, smsManager:Landroid/telephony/SmsManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/SmsManager;->setOTAMode(ILandroid/os/Message;)I

    .line 407
    return-void
.end method

.method public OTAModeON()V
    .registers 4

    .prologue
    .line 394
    const-string v1, "KTRegiActivity"

    const-string v2, "OTAModeON"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 397
    .local v0, smsManager:Landroid/telephony/SmsManager;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/SmsManager;->setOTAMode(ILandroid/os/Message;)I

    .line 399
    return-void
.end method

.method public finish()V
    .registers 3

    .prologue
    .line 190
    const-string v0, "KTRegiActivity"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-super {p0}, Lcom/lge/ota/OTAActivity;->finish()V

    .line 194
    :try_start_a
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/ota/KTRegiActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_1d

    .line 199
    :goto_f
    :try_start_f
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_1b

    .line 202
    :goto_14
    invoke-virtual {p0}, Lcom/lge/ota/KTRegiActivity;->OTAModeOFF()V

    .line 203
    invoke-static {}, Lcom/lge/ota/OTAWakeLock;->release()V

    .line 204
    return-void

    .line 201
    :catch_1b
    move-exception v0

    goto :goto_14

    .line 196
    :catch_1d
    move-exception v0

    goto :goto_f
.end method

.method public isTimer()Z
    .registers 3

    .prologue
    const-string v1, "KTRegiActivity"

    .line 481
    iget-boolean v0, p0, Lcom/lge/ota/KTRegiActivity;->checkTimer:Z

    if-eqz v0, :cond_f

    .line 483
    const-string v0, "KTRegiActivity"

    const-string v0, "isTiming = true"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v0, 0x1

    .line 489
    :goto_e
    return v0

    .line 488
    :cond_f
    const-string v0, "KTRegiActivity"

    const-string v0, "isTiming = false"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f030009

    .line 97
    const-string v0, "KTRegiActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0, p1}, Lcom/lge/ota/OTAActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-static {p0}, Lcom/lge/ota/OTAWakeLock;->acquire(Landroid/content/Context;)V

    .line 102
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/lge/ota/KTRegiActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/ota/KTRegiActivity;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 103
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 104
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/lge/ota/KTRegiActivity;->filter:Landroid/content/IntentFilter;

    .line 108
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.REG_FAIL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.REG_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.KTOTA_WRITE_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.KTOTA_WRITE_FAIL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.OTA_IN_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.OTA_NO_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/lge/ota/KTRegiActivity;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/lge/ota/KTRegiActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/lge/ota/KTRegiActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/lge/ota/KTRegiActivity;->pwrMngr:Landroid/os/PowerManager;

    .line 123
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/ota/KTRegiActivity;->ad:Landroid/app/AlertDialog$Builder;

    .line 124
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/ota/KTRegiActivity;->ad2:Landroid/app/AlertDialog$Builder;

    .line 125
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/ota/KTRegiActivity;->ad3:Landroid/app/AlertDialog$Builder;

    .line 128
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->ad:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 129
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->ad:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f030007

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 130
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->ad:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f030003

    new-instance v2, Lcom/lge/ota/KTRegiActivity$2;

    invoke-direct {v2, p0}, Lcom/lge/ota/KTRegiActivity$2;-><init>(Lcom/lge/ota/KTRegiActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 138
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->ad:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f030004

    new-instance v2, Lcom/lge/ota/KTRegiActivity$3;

    invoke-direct {v2, p0}, Lcom/lge/ota/KTRegiActivity$3;-><init>(Lcom/lge/ota/KTRegiActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->ad:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/lge/ota/KTRegiActivity$4;

    invoke-direct {v1, p0}, Lcom/lge/ota/KTRegiActivity$4;-><init>(Lcom/lge/ota/KTRegiActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->ad2:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 154
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->ad2:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f030008

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 155
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->ad2:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f030002

    new-instance v2, Lcom/lge/ota/KTRegiActivity$5;

    invoke-direct {v2, p0}, Lcom/lge/ota/KTRegiActivity$5;-><init>(Lcom/lge/ota/KTRegiActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->ad2:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/lge/ota/KTRegiActivity$6;

    invoke-direct {v1, p0}, Lcom/lge/ota/KTRegiActivity$6;-><init>(Lcom/lge/ota/KTRegiActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->ad3:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 172
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->ad3:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/lge/ota/KTRegiActivity$7;

    invoke-direct {v1, p0}, Lcom/lge/ota/KTRegiActivity$7;-><init>(Lcom/lge/ota/KTRegiActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 180
    sput-object v4, Lcom/lge/ota/KTRegiActivity;->time1:Ljava/util/Date;

    .line 181
    sput-object v4, Lcom/lge/ota/KTRegiActivity;->time2:Ljava/util/Date;

    .line 183
    invoke-virtual {p0}, Lcom/lge/ota/KTRegiActivity;->OTAModeON()V

    .line 184
    invoke-virtual {p0}, Lcom/lge/ota/KTRegiActivity;->KTF_RegiProcess()V

    .line 185
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 209
    const-string v0, "KTRegiActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-super {p0}, Lcom/lge/ota/OTAActivity;->onStop()V

    .line 211
    sget-object v0, Lcom/lge/ota/KTRegiActivity;->time1:Ljava/util/Date;

    if-eqz v0, :cond_11

    .line 213
    invoke-virtual {p0}, Lcom/lge/ota/KTRegiActivity;->stopTimer()V

    .line 216
    :cond_11
    invoke-static {p0}, Lcom/lge/ota/KTRegiActivity;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 218
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/lge/ota/KTRegiActivity;->setAirplaneMode(Landroid/content/Context;Z)V

    .line 220
    :cond_1b
    invoke-virtual {p0}, Lcom/lge/ota/KTRegiActivity;->finish()V

    .line 221
    return-void
.end method

.method public sendKTOTAOpenModeMessage()V
    .registers 29

    .prologue
    .line 225
    const-string v10, "0000001005"

    .line 226
    .local v10, dests:Ljava/lang/String;
    const-string v27, " "

    .line 231
    .local v27, space:Ljava/lang/String;
    const/4 v7, 0x0

    .line 233
    .local v7, msgText:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v26

    .line 234
    .local v26, smsManagerDevice:Landroid/telephony/SmsManager;
    const-string v5, "KTRegiActivity"

    const-string v6, "[sendKTOTAOpenModeMessage] smsManagerDevice create"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v5, "phone"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/lge/ota/KTRegiActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telephony/TelephonyManager;

    .line 238
    .local v24, mTel:Landroid/telephony/TelephonyManager;
    if-nez v24, :cond_24

    .line 239
    const-string v5, "KTRegiActivity"

    const-string v6, "[sendKTOTAOpenModeMessage] mTel is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_24
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v22

    .line 242
    .local v22, mIMSI:Ljava/lang/String;
    if-nez v22, :cond_31

    .line 243
    const-string v5, "KTRegiActivity"

    const-string v6, "[sendKTOTAOpenModeMessage] getSubscriberId() is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_31
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v18

    .line 246
    .local v18, mICCID:Ljava/lang/String;
    if-nez v18, :cond_3e

    .line 247
    const-string v5, "KTRegiActivity"

    const-string v6, "[sendKTOTAOpenModeMessage] getSimSerialNumber() is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_3e
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v20

    .line 251
    .local v20, mIMEI:Ljava/lang/String;
    if-nez v20, :cond_4b

    .line 252
    const-string v5, "KTRegiActivity"

    const-string v6, "[sendKTOTAOpenModeMessage] getDeviceId() is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_4b
    const-string v5, "KTRegiActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sendKTOTAOpenModeMessage]IMSI : "

    .end local v7           #msgText:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :IMSI length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v5, "KTRegiActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sendKTOTAOpenModeMessage]ICCID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ICCID length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v5, "KTRegiActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sendKTOTAOpenModeMessage]IMEI : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :IMEI length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/16 v23, 0x0

    .line 260
    .local v23, mIMSI_15:Ljava/lang/String;
    const/16 v19, 0x0

    .line 261
    .local v19, mICCID_18:Ljava/lang/String;
    const/16 v21, 0x0

    .line 262
    .local v21, mIMEI_14:Ljava/lang/String;
    const-string v17, "00"

    .line 264
    .local v17, mEFtype_2:Ljava/lang/String;
    const/4 v13, 0x0

    .line 265
    .local v13, diff_IMSI:I
    const/4 v11, 0x0

    .line 266
    .local v11, diff_ICCID:I
    const/4 v12, 0x0

    .line 268
    .local v12, diff_IMEI:I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xf

    if-ge v5, v6, :cond_15c

    .line 270
    const/16 v5, 0xf

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v13, v5, v6

    .line 271
    const-string v5, "KTRegiActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sendKTOTAOpenModeMessage] IMSI is less than 15 - diff_IMSI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v14, 0x0

    .local v14, i:I
    :goto_fa
    if-ge v14, v13, :cond_108

    .line 274
    const-string v5, "0"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 272
    add-int/lit8 v14, v14, 0x1

    goto :goto_fa

    .line 276
    :cond_108
    move-object/from16 v23, v22

    .line 277
    const-string v5, "KTRegiActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sendKTOTAOpenModeMessage]mIMSI_15 is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .end local v14           #i:I
    :cond_125
    :goto_125
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x12

    if-ge v5, v6, :cond_218

    .line 294
    const/16 v5, 0x12

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v11, v5, v6

    .line 295
    const-string v5, "KTRegiActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sendKTOTAOpenModeMessage] ICCID is less than 18 - diff_ICCID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v15, 0x0

    .local v15, j:I
    :goto_14e
    if-ge v15, v11, :cond_1c0

    .line 298
    const-string v5, "0"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 296
    add-int/lit8 v15, v15, 0x1

    goto :goto_14e

    .line 279
    .end local v15           #j:I
    :cond_15c
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xf

    if-ne v5, v6, :cond_189

    .line 281
    const-string v5, "KTRegiActivity"

    const-string v6, "[sendKTOTAOpenModeMessage] IMSI is same as 15"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    move-object/from16 v23, v22

    .line 283
    const-string v5, "KTRegiActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sendKTOTAOpenModeMessage]mIMSI_15 is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_125

    .line 285
    :cond_189
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xf

    if-le v5, v6, :cond_125

    .line 287
    const-string v5, "KTRegiActivity"

    const-string v6, "[sendKTOTAOpenModeMessage] IMSI is more than 15"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v5, 0x0

    const/16 v6, 0xf

    move-object/from16 v0, v22

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 289
    const-string v5, "KTRegiActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sendKTOTAOpenModeMessage]mIMSI_15 is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_125

    .line 300
    .restart local v15       #j:I
    :cond_1c0
    move-object/from16 v19, v18

    .line 301
    const-string v5, "KTRegiActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sendKTOTAOpenModeMessage]mICCID_18 is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v15           #j:I
    :cond_1dd
    :goto_1dd
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xe

    if-ge v5, v6, :cond_342

    .line 318
    const/16 v5, 0xe

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v12, v5, v6

    .line 319
    const-string v5, "KTRegiActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sendKTOTAOpenModeMessage] IMEI is less than 14 - diff_IMEI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/16 v16, 0x0

    .local v16, k:I
    :goto_207
    move/from16 v0, v16

    move v1, v12

    if-ge v0, v1, :cond_27c

    .line 322
    const-string v5, "0"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 320
    add-int/lit8 v16, v16, 0x1

    goto :goto_207

    .line 303
    .end local v16           #k:I
    :cond_218
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x12

    if-ne v5, v6, :cond_245

    .line 305
    const-string v5, "KTRegiActivity"

    const-string v6, "[sendKTOTAOpenModeMessage] ICCID is same as 18"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    move-object/from16 v19, v18

    .line 307
    const-string v5, "KTRegiActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sendKTOTAOpenModeMessage]mICCID_18 is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1dd

    .line 309
    :cond_245
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x12

    if-le v5, v6, :cond_1dd

    .line 311
    const-string v5, "KTRegiActivity"

    const-string v6, "[sendKTOTAOpenModeMessage] ICCID is more than 18"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v5, 0x0

    const/16 v6, 0x12

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 313
    const-string v5, "KTRegiActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sendKTOTAOpenModeMessage]mICCID_18 is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1dd

    .line 324
    .restart local v16       #k:I
    :cond_27c
    move-object/from16 v21, v20

    .line 325
    const-string v5, "KTRegiActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sendKTOTAOpenModeMessage]mIMEI_14 is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v16           #k:I
    :cond_299
    :goto_299
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 341
    .restart local v7       #msgText:Ljava/lang/String;
    const-string v5, "KTRegiActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[sendKTOTAOpenModeMessage]Real msgText for KT OTA Submit-UD : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v5, "KTRegiActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[sendKTOTAOpenModeMessage]Real msgText length for KT OTA Submit-UD : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-instance v25, Landroid/content/Intent;

    const-string v5, "com.lge.ota.KT_OTAOPENMODE_MESSAGE_SENT"

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v25, sentIntent:Landroid/content/Intent;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v25

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 348
    .local v8, mSentIntents:Landroid/app/PendingIntent;
    new-instance v5, Lcom/lge/ota/KTRegiActivity$8;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/lge/ota/KTRegiActivity$8;-><init>(Lcom/lge/ota/KTRegiActivity;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v9, "com.lge.ota.KT_OTAOPENMODE_MESSAGE_SENT"

    invoke-direct {v6, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/lge/ota/KTRegiActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 385
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    .line 387
    .local v4, smsManager:Landroid/telephony/SmsManager;
    const-string v5, "0000001005"

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/telephony/SmsManager;->sendTextMessageKTOTAOpenMode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 389
    return-void

    .line 327
    .end local v4           #smsManager:Landroid/telephony/SmsManager;
    .end local v7           #msgText:Ljava/lang/String;
    .end local v8           #mSentIntents:Landroid/app/PendingIntent;
    .end local v25           #sentIntent:Landroid/content/Intent;
    :cond_342
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xe

    if-ne v5, v6, :cond_370

    .line 329
    const-string v5, "KTRegiActivity"

    const-string v6, "[sendKTOTAOpenModeMessage] IMEI is same as 14"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object/from16 v21, v20

    .line 331
    const-string v5, "KTRegiActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sendKTOTAOpenModeMessage]mIMEI_14 is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_299

    .line 333
    :cond_370
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xe

    if-le v5, v6, :cond_299

    .line 335
    const-string v5, "KTRegiActivity"

    const-string v6, "[sendKTOTAOpenModeMessage] IMEI is more than 14"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v5, 0x0

    const/16 v6, 0xe

    move-object/from16 v0, v20

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 337
    const-string v5, "KTRegiActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[sendKTOTAOpenModeMessage]mIMEI_14 is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_299
.end method

.method public startTimer()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x3e8

    .line 434
    sget-object v0, Lcom/lge/ota/KTRegiActivity;->time1:Ljava/util/Date;

    if-nez v0, :cond_2c

    .line 436
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/lge/ota/KTRegiActivity;->time1:Ljava/util/Date;

    .line 437
    const-string v0, "KTRegiActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time1 is="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/lge/ota/KTRegiActivity;->time1:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_2b
    :goto_2b
    return-void

    .line 441
    :cond_2c
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/lge/ota/KTRegiActivity;->time2:Ljava/util/Date;

    .line 443
    const-string v0, "Timer"

    sget-object v1, Lcom/lge/ota/KTRegiActivity;->time2:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sget-object v3, Lcom/lge/ota/KTRegiActivity;->time1:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    div-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    sget-object v0, Lcom/lge/ota/KTRegiActivity;->time2:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object v2, Lcom/lge/ota/KTRegiActivity;->time1:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    div-long/2addr v0, v5

    const-wide/16 v2, 0xb4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2b

    .line 446
    invoke-virtual {p0}, Lcom/lge/ota/KTRegiActivity;->stopTimer()V

    .line 447
    new-instance v0, Lcom/lge/ota/KTRegiActivity$10;

    invoke-direct {v0, p0}, Lcom/lge/ota/KTRegiActivity$10;-><init>(Lcom/lge/ota/KTRegiActivity;)V

    iput-object v0, p0, Lcom/lge/ota/KTRegiActivity;->mainThreadRunnable:Ljava/lang/Runnable;

    .line 462
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->mainThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/ota/KTRegiActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2b
.end method

.method public stopTimer()V
    .registers 3

    .prologue
    .line 469
    const-string v0, "KTRegiActivity"

    const-string v1, "3 minutes timer stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    sget-object v0, Lcom/lge/ota/KTRegiActivity;->time1:Ljava/util/Date;

    if-eqz v0, :cond_16

    .line 473
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->setupTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/ota/KTRegiActivity;->checkTimer:Z

    .line 475
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/ota/KTRegiActivity;->time1:Ljava/util/Date;

    .line 477
    :cond_16
    return-void
.end method

.method public timer()V
    .registers 7

    .prologue
    .line 420
    const-string v0, "KTRegiActivity"

    const-string v1, "3 minutes timer start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/ota/KTRegiActivity;->checkTimer:Z

    .line 422
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/lge/ota/KTRegiActivity;->setupTimer:Ljava/util/Timer;

    .line 423
    iget-object v0, p0, Lcom/lge/ota/KTRegiActivity;->setupTimer:Ljava/util/Timer;

    new-instance v1, Lcom/lge/ota/KTRegiActivity$9;

    invoke-direct {v1, p0}, Lcom/lge/ota/KTRegiActivity$9;-><init>(Lcom/lge/ota/KTRegiActivity;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 430
    return-void
.end method
