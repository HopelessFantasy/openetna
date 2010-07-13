.class public Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;
.super Landroid/app/Activity;
.source "GpsPhoneTestMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;
    }
.end annotation


# static fields
.field public static final GPS_FT_BEGIN:Ljava/lang/String; = "com.lge.gps.GPS_FT_BEGIN"

.field public static final GPS_FT_DATA:Ljava/lang/String; = "com.lge.gps.GPS_FT_DATA"


# instance fields
.field private GpsBeginReceiver:Landroid/content/BroadcastReceiver;

.field private GpsDataReceiver:Landroid/content/BroadcastReceiver;

.field private bAutoAllTest:Ljava/lang/Integer;

.field private mFailCount:I

.field public mFtStartTime:J

.field public mHandle:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mRunnable:Ljava/lang/Runnable;

.field public mSnrText:Ljava/lang/String;

.field public mSnrTextLast:Ljava/lang/String;

.field private mSnrTextView:Landroid/widget/TextView;

.field public mStartTime:J

.field public mStatusText:Ljava/lang/String;

.field public mStatusTextLast:Ljava/lang/String;

.field private mStatusTextView:Landroid/widget/TextView;

.field private mThread:Ljava/lang/Thread;

.field private mTime:I

.field private mTimeOut_start:J

.field public mTimeText:Ljava/lang/String;

.field public mTimeTextLast:Ljava/lang/String;

.field private mTimeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mStartTime:J

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mFtStartTime:J

    .line 35
    new-instance v0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;

    invoke-direct {v0, p0, v3}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;-><init>(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$1;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mHandle:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;

    .line 37
    iput v2, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mFailCount:I

    .line 38
    iput-object v3, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mLocationManager:Landroid/location/LocationManager;

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->bAutoAllTest:Ljava/lang/Integer;

    .line 127
    new-instance v0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$2;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$2;-><init>(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->GpsBeginReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    new-instance v0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$3;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$3;-><init>(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->GpsDataReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    return-void
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->updateCounter()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->resetFailCount()V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->resetTimeout()V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mSnrTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mTimeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mStatusTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkTimeout()V
    .registers 6

    .prologue
    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mTimeOut_start:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 106
    .local v0, t:I
    const/16 v1, 0xa

    if-lt v0, v1, :cond_39

    .line 107
    const-string v1, "GPS Test is not operating"

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mStatusText:Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->resetTimeout()V

    .line 109
    iget v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mFailCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mFailCount:I

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mFailCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mSnrText:Ljava/lang/String;

    .line 112
    :cond_39
    return-void
.end method

.method private resetFailCount()V
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mFailCount:I

    .line 115
    return-void
.end method

.method private resetTimeout()V
    .registers 3

    .prologue
    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mTimeOut_start:J

    .line 88
    return-void
.end method

.method private runCounter()V
    .registers 3

    .prologue
    .line 91
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mThread:Ljava/lang/Thread;

    .line 92
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 94
    :goto_e
    return-void

    .line 93
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method private startFt()V
    .registers 5

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_e

    .line 78
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-string v2, "gps_ft_start"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 79
    :cond_e
    return-void
.end method

.method private updateCounter()V
    .registers 7

    .prologue
    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 98
    .local v0, curTime:J
    iget-wide v2, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mFtStartTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mTime:I

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mTimeText:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->checkTimeout()V

    .line 101
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mHandle:Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$MainHandler;->sendEmptyMessage(I)Z

    .line 102
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->runCounter()V

    .line 103
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v2, 0x7f030014

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->setContentView(I)V

    .line 47
    const v2, 0x7f070077

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mSnrTextView:Landroid/widget/TextView;

    .line 48
    const v2, 0x7f070078

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mTimeTextView:Landroid/widget/TextView;

    .line 49
    const v2, 0x7f070079

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mStatusTextView:Landroid/widget/TextView;

    .line 51
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mTime:I

    .line 52
    new-instance v2, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$1;

    invoke-direct {v2, p0}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode$1;-><init>(Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;)V

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mRunnable:Ljava/lang/Runnable;

    .line 60
    const-string v2, "0.0"

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mSnrText:Ljava/lang/String;

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mSnrTextLast:Ljava/lang/String;

    .line 61
    const-string v2, "0 sec"

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mTimeText:Ljava/lang/String;

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mTimeTextLast:Ljava/lang/String;

    .line 62
    const-string v2, "GPS Test is preparing"

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mStatusText:Ljava/lang/String;

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mStatusTextLast:Ljava/lang/String;

    .line 64
    const-string v2, "location"

    invoke-virtual {p0, v2}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mLocationManager:Landroid/location/LocationManager;

    .line 65
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->runCounter()V

    .line 66
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->resetTimeout()V

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v0, beginFilter:Landroid/content/IntentFilter;
    const-string v2, "com.lge.gps.GPS_FT_BEGIN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->GpsBeginReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v2, v3}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v1, dataFilter:Landroid/content/IntentFilter;
    const-string v2, "com.lge.gps.GPS_FT_DATA"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->GpsDataReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v2, v3}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    return-void
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 83
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_11

    .line 84
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-string v2, "gps_ft_stop"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 85
    :cond_11
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    .line 170
    sparse-switch p1, :sswitch_data_6e

    .line 211
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    :goto_8
    return v7

    .line 172
    :sswitch_9
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 183
    const-string v7, "Back Key doesn\'t work in Auto All Test"

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 184
    .local v4, mToast1:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v7, v9

    .line 186
    goto :goto_8

    .line 190
    .end local v4           #mToast1:Landroid/widget/Toast;
    :sswitch_1c
    iget-object v7, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v9, :cond_6b

    .line 192
    const-string v5, "com.lge.hiddenmenu"

    .line 193
    .local v5, packageName:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 194
    .local v3, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 195
    .local v2, className:Ljava/lang/String;
    const/4 v6, 0x0

    .line 196
    .local v6, packageName2:Ljava/lang/String;
    const-string v1, "AutoAllTest"

    .line 197
    .local v1, ExtraName:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 199
    .local v0, AutoAllTest:Ljava/lang/Integer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".device_test"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 200
    const-string v2, "VibratorTest"

    .line 202
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->startActivity(Landroid/content/Intent;)V

    .line 207
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->finish()V

    .end local v0           #AutoAllTest:Ljava/lang/Integer;
    .end local v1           #ExtraName:Ljava/lang/String;
    .end local v2           #className:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #packageName2:Ljava/lang/String;
    :cond_6b
    move v7, v9

    .line 209
    goto :goto_8

    .line 170
    nop

    :sswitch_data_6e
    .sparse-switch
        0x4 -> :sswitch_9
        0x52 -> :sswitch_1c
    .end sparse-switch
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 119
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->startFt()V

    .line 122
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 123
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "AutoAllTest"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/GpsPhoneTestMode;->bAutoAllTest:Ljava/lang/Integer;

    .line 125
    return-void
.end method
