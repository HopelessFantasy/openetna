.class public Lcom/android/mms/transaction/StorageFullReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StorageFullReceiver.java"


# static fields
.field private static final NOTIFICATION_BACKLIGHT_TIME_OUT:I = 0x2710

.field private static mPowerManager:Landroid/os/PowerManager;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const v9, 0x7f070159

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "smma_fulltest"

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smma_fulltest"

    invoke-static {v5, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_a8

    const-string v5, "android.provider.Telephony.STORAGE_FULL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 52
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v4

    .line 53
    .local v4, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v4, v8}, Landroid/telephony/SmsManager;->setMEMemoryFull(Z)Z

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "smma_fulltest"

    invoke-static {v5, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, lowMemIntent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    const/high16 v5, 0x800

    invoke-static {p1, v7, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 69
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 70
    .local v2, notification:Landroid/app/Notification;
    const v5, 0x1080221

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 71
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 72
    const/4 v5, -0x1

    iput v5, v2, Landroid/app/Notification;->defaults:I

    .line 74
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f07015a

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, p1, v5, v6, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 79
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 80
    const v5, -0xff0100

    iput v5, v2, Landroid/app/Notification;->ledARGB:I

    .line 81
    const/16 v5, 0x1f4

    iput v5, v2, Landroid/app/Notification;->ledOnMS:I

    .line 82
    const/16 v5, 0x7d0

    iput v5, v2, Landroid/app/Notification;->ledOffMS:I

    .line 84
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/PowerManager;

    sput-object p0, Lcom/android/mms/transaction/StorageFullReceiver;->mPowerManager:Landroid/os/PowerManager;

    .line 86
    sget-object v5, Lcom/android/mms/transaction/StorageFullReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v5, :cond_90

    .line 87
    sget-object v5, Lcom/android/mms/transaction/StorageFullReceiver;->mPowerManager:Landroid/os/PowerManager;

    const v6, 0x3000001a

    const-string v7, "MMS Noti"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    sput-object v5, Lcom/android/mms/transaction/StorageFullReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 94
    :cond_90
    sget-object v5, Lcom/android/mms/transaction/StorageFullReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v5, :cond_9b

    .line 95
    sget-object v5, Lcom/android/mms/transaction/StorageFullReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 97
    :cond_9b
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 100
    .local v1, nm:Landroid/app/NotificationManager;
    const/16 v5, 0x37b

    invoke-virtual {v1, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 102
    .end local v0           #lowMemIntent:Landroid/content/Intent;
    .end local v1           #nm:Landroid/app/NotificationManager;
    .end local v2           #notification:Landroid/app/Notification;
    .end local v3           #pendingIntent:Landroid/app/PendingIntent;
    .end local v4           #smsManager:Landroid/telephony/SmsManager;
    :cond_a8
    return-void
.end method
