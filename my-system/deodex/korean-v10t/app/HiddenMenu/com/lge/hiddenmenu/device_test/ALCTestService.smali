.class public Lcom/lge/hiddenmenu/device_test/ALCTestService;
.super Landroid/app/Service;
.source "ALCTestService.java"


# static fields
.field private static final DBG:Z = true

.field private static IB_NOTIFICATIONS:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "ALCTestService"


# instance fields
.field private final fn:Ljava/lang/String;

.field private final mBinder:Landroid/os/IBinder;

.field private mChecked:Ljava/lang/Boolean;

.field private mCondition:Landroid/os/ConditionVariable;

.field protected mHandler:Landroid/os/Handler;

.field private mLevel:I

.field private mNM:Landroid/app/NotificationManager;

.field private mState:I

.field private mTask:Ljava/lang/Runnable;

.field private notifyingThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const v0, 0x7f03002a

    sput v0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->IB_NOTIFICATIONS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->mHandler:Landroid/os/Handler;

    .line 71
    iput v1, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->mState:I

    .line 72
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->mChecked:Ljava/lang/Boolean;

    .line 74
    iput v1, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->mLevel:I

    .line 77
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/class/backlight/adam-bl/alc_brightness"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->fn:Ljava/lang/String;

    .line 122
    new-instance v0, Lcom/lge/hiddenmenu/device_test/ALCTestService$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/ALCTestService$1;-><init>(Lcom/lge/hiddenmenu/device_test/ALCTestService;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->mTask:Ljava/lang/Runnable;

    .line 287
    new-instance v0, Lcom/lge/hiddenmenu/device_test/ALCTestService$2;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/ALCTestService$2;-><init>(Lcom/lge/hiddenmenu/device_test/ALCTestService;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/device_test/ALCTestService;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->mChecked:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/device_test/ALCTestService;)Landroid/app/NotificationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->mNM:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 58
    sget v0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->IB_NOTIFICATIONS:I

    return v0
.end method


# virtual methods
.method public ReadIntFromFile()I
    .registers 7

    .prologue
    .line 176
    const/4 v3, 0x0

    .line 178
    .local v3, result:I
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->fn:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x8

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 179
    .local v2, inReader:Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, in:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_18

    move-result v3

    .line 185
    .end local v1           #in:Ljava/lang/String;
    .end local v2           #inReader:Ljava/io/BufferedReader;
    :goto_17
    return v3

    .line 181
    :catch_18
    move-exception v4

    move-object v0, v4

    .line 183
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 154
    const-string v0, "ALCTestService"

    const-string v1, "[SHADOW] ALCTestService::onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 6

    .prologue
    const-string v4, "ALCTestService"

    .line 83
    const-string v0, "ALCTestService"

    const-string v0, "[SHADOW] -START- ALCTestService::onCreate"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/ALCTestService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->mNM:Landroid/app/NotificationManager;

    .line 90
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->mTask:Ljava/lang/Runnable;

    const-string v3, "ALCTestService"

    invoke-direct {v0, v1, v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->notifyingThread:Ljava/lang/Thread;

    .line 91
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->mCondition:Landroid/os/ConditionVariable;

    .line 92
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->mChecked:Ljava/lang/Boolean;

    .line 93
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->notifyingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 97
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->mChecked:Ljava/lang/Boolean;

    .line 105
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ALCTestService;->stopSelf()V

    .line 111
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->mNM:Landroid/app/NotificationManager;

    sget v1, Lcom/lge/hiddenmenu/device_test/ALCTestService;->IB_NOTIFICATIONS:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 114
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/ALCTestService;->mCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 119
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 170
    return-void
.end method

.method protected showNotification()V
    .registers 12

    .prologue
    const v10, 0x7f0801d3

    const/4 v9, 0x0

    .line 207
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/lge/hiddenmenu/device_test/ALCTestService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 209
    .local v4, nm:Landroid/app/NotificationManager;
    const/4 v0, 0x0

    .line 210
    .local v0, brightness:I
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/ALCTestService;->ReadIntFromFile()I

    move-result v0

    .line 213
    const-string v2, "Brightness"

    .line 214
    .local v2, from:Ljava/lang/CharSequence;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Brightness::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, message:Ljava/lang/CharSequence;
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v9, v7, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 221
    .local v1, contentIntent:Landroid/app/PendingIntent;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v9

    invoke-virtual {p0, v10, v7}, Lcom/lge/hiddenmenu/device_test/ALCTestService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, tickerText:Ljava/lang/String;
    new-instance v5, Landroid/app/Notification;

    const v7, 0x7f020002

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v5, v7, v6, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 228
    .local v5, notif:Landroid/app/Notification;
    invoke-virtual {v5, p0, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 241
    invoke-virtual {v4, v10, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 242
    return-void
.end method

.method protected showNotification(I)V
    .registers 13
    .parameter "level"

    .prologue
    const v10, 0x7f0801d3

    const/4 v9, 0x0

    .line 248
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/lge/hiddenmenu/device_test/ALCTestService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 250
    .local v4, nm:Landroid/app/NotificationManager;
    move v0, p1

    .line 254
    .local v0, brightness:I
    const-string v2, "Brightness"

    .line 255
    .local v2, from:Ljava/lang/CharSequence;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Brightness::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, message:Ljava/lang/CharSequence;
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/lge/hiddenmenu/device_test/ALCProximityTest;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v9, v7, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 262
    .local v1, contentIntent:Landroid/app/PendingIntent;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v9

    invoke-virtual {p0, v10, v7}, Lcom/lge/hiddenmenu/device_test/ALCTestService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, tickerText:Ljava/lang/String;
    new-instance v5, Landroid/app/Notification;

    const v7, 0x7f020002

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v5, v7, v6, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 269
    .local v5, notif:Landroid/app/Notification;
    invoke-virtual {v5, p0, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 282
    invoke-virtual {v4, v10, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 283
    return-void
.end method
