.class Landroid/content/SyncManager;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncManager$6;,
        Landroid/content/SyncManager$SyncQueue;,
        Landroid/content/SyncManager$SyncHandler;,
        Landroid/content/SyncManager$SyncTimeTracker;,
        Landroid/content/SyncManager$ActiveSyncContext;,
        Landroid/content/SyncManager$SyncOperation;,
        Landroid/content/SyncManager$SyncPollAlarmReceiver;,
        Landroid/content/SyncManager$SyncAlarmIntentReceiver;,
        Landroid/content/SyncManager$SyncHandlerMessagePayload;
    }
.end annotation


# static fields
.field private static final ACTION_SYNC_ALARM:Ljava/lang/String; = "android.content.syncmanager.SYNC_ALARM"

.field private static final DEFAULT_MAX_SYNC_RETRY_TIME_IN_SECONDS:J = 0xe10L

.field private static final ERROR_NOTIFICATION_DELAY_MS:J = 0x927c0L

.field private static final HANDLE_SYNC_ALARM_WAKE_LOCK:Ljava/lang/String; = "SyncManagerHandleSyncAlarmWakeLock"

.field private static final INITIAL_SYNC_RETRY_TIME_IN_MS:J = 0x7530L

.field private static final LOCAL_SYNC_DELAY:J = 0x7530L

.field private static final MAX_SYNC_POLL_DELAY_SECONDS:I = 0x1fa40

.field private static final MAX_TIME_PER_SYNC:J = 0x493e0L

.field private static final MILLIS_IN_4WEEKS:J = 0x90321000L

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_HOUR:J = 0x36ee80L

.field private static final MILLIS_IN_WEEK:J = 0x240c8400L

.field private static final MIN_SYNC_POLL_DELAY_SECONDS:I = 0x15180

.field private static final SYNCMANAGER_PREFS_FILENAME:Ljava/lang/String; = "/data/system/syncmanager.prefs"

.field private static final SYNC_NOTIFICATION_DELAY:J = 0x7530L

.field private static final SYNC_POLL_ALARM:Ljava/lang/String; = "android.content.syncmanager.SYNC_POLL_ALARM"

.field private static final SYNC_WAKE_LOCK:Ljava/lang/String; = "SyncManagerSyncWakeLock"

.field private static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private mAccountMonitor:Landroid/accounts/AccountMonitor;

.field private volatile mAccounts:[Ljava/lang/String;

.field private mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

.field private mAlarmService:Landroid/app/AlarmManager;

.field private mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private volatile mDataConnectionIsConnected:Z

.field private volatile mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHeartbeatTime:J

.field private mNeedSyncActiveNotification:Z

.field private mNeedSyncErrorNotification:Z

.field private final mNotificationMgr:Landroid/app/NotificationManager;

.field private volatile mPackageManager:Landroid/content/pm/IPackageManager;

.field private mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusText:Ljava/lang/String;

.field private mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mStorageIsLow:Z

.field private final mSyncAlarmIntent:Landroid/app/PendingIntent;

.field private final mSyncHandler:Landroid/content/SyncManager$SyncHandler;

.field private final mSyncPollAlarmIntent:Landroid/app/PendingIntent;

.field private volatile mSyncPollInitialized:Z

.field private final mSyncQueue:Landroid/content/SyncManager$SyncQueue;

.field private final mSyncStorageEngine:Landroid/content/SyncStorageEngine;

.field private mSyncThread:Landroid/os/HandlerThread;

.field private volatile mSyncWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 13
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v9, "android.content.syncmanager.SYNC_ALARM"

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const-string v3, ""

    iput-object v3, p0, Landroid/content/SyncManager;->mStatusText:Ljava/lang/String;

    .line 123
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/content/SyncManager;->mHeartbeatTime:J

    .line 127
    iput-object v7, p0, Landroid/content/SyncManager;->mAccounts:[Ljava/lang/String;

    .line 131
    iput-boolean v6, p0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    .line 132
    iput-boolean v6, p0, Landroid/content/SyncManager;->mStorageIsLow:Z

    .line 135
    iput-object v7, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    .line 143
    iput-object v7, p0, Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    .line 146
    iput-boolean v6, p0, Landroid/content/SyncManager;->mNeedSyncErrorNotification:Z

    .line 148
    iput-boolean v6, p0, Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z

    .line 154
    new-instance v3, Landroid/content/SyncManager$1;

    invoke-direct {v3, p0}, Landroid/content/SyncManager$1;-><init>(Landroid/content/SyncManager;)V

    iput-object v3, p0, Landroid/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    new-instance v3, Landroid/content/SyncManager$2;

    invoke-direct {v3, p0}, Landroid/content/SyncManager$2;-><init>(Landroid/content/SyncManager;)V

    iput-object v3, p0, Landroid/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    new-instance v3, Landroid/content/SyncManager$3;

    invoke-direct {v3, p0}, Landroid/content/SyncManager$3;-><init>(Landroid/content/SyncManager;)V

    iput-object v3, p0, Landroid/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 235
    invoke-static {p1}, Landroid/content/SyncStorageEngine;->init(Landroid/content/Context;)V

    .line 236
    invoke-static {}, Landroid/content/SyncStorageEngine;->getSingleton()Landroid/content/SyncStorageEngine;

    move-result-object v3

    iput-object v3, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    .line 237
    new-instance v3, Landroid/content/SyncManager$SyncQueue;

    iget-object v4, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-direct {v3, v4}, Landroid/content/SyncManager$SyncQueue;-><init>(Landroid/content/SyncStorageEngine;)V

    iput-object v3, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncManager$SyncQueue;

    .line 239
    iput-object p1, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    .line 241
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "SyncHandlerThread"

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Landroid/content/SyncManager;->mSyncThread:Landroid/os/HandlerThread;

    .line 242
    iget-object v3, p0, Landroid/content/SyncManager;->mSyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 243
    new-instance v3, Landroid/content/SyncManager$SyncHandler;

    iget-object v4, p0, Landroid/content/SyncManager;->mSyncThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/SyncManager$SyncHandler;-><init>(Landroid/content/SyncManager;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    .line 245
    iput-object v7, p0, Landroid/content/SyncManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 247
    iget-object v3, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.content.syncmanager.SYNC_ALARM"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Landroid/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;

    .line 250
    iget-object v3, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.content.syncmanager.SYNC_POLL_ALARM"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Landroid/content/SyncManager;->mSyncPollAlarmIntent:Landroid/app/PendingIntent;

    .line 253
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Landroid/content/SyncManager;->mConnectivityIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 257
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    iget-object v3, p0, Landroid/content/SyncManager;->mStorageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 260
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 261
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 262
    iget-object v3, p0, Landroid/content/SyncManager;->mShutdownIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    if-nez p2, :cond_108

    .line 265
    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 267
    new-instance v3, Landroid/content/SyncManager$SyncAlarmIntentReceiver;

    invoke-direct {v3, p0}, Landroid/content/SyncManager$SyncAlarmIntentReceiver;-><init>(Landroid/content/SyncManager;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.content.syncmanager.SYNC_ALARM"

    invoke-direct {v4, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    :goto_cd
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 273
    .local v2, pm:Landroid/os/PowerManager;
    const-string v3, "SyncManagerSyncWakeLock"

    invoke-virtual {v2, v8, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Landroid/content/SyncManager;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 274
    iget-object v3, p0, Landroid/content/SyncManager;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 280
    const-string v3, "SyncManagerHandleSyncAlarmWakeLock"

    invoke-virtual {v2, v8, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 282
    iget-object v3, p0, Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v6}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 284
    iget-object v3, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    new-instance v4, Landroid/content/SyncManager$4;

    invoke-direct {v4, p0}, Landroid/content/SyncManager$4;-><init>(Landroid/content/SyncManager;)V

    invoke-virtual {v3, v8, v4}, Landroid/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    .line 292
    if-nez p2, :cond_107

    .line 293
    new-instance v1, Landroid/content/SyncManager$5;

    invoke-direct {v1, p0}, Landroid/content/SyncManager$5;-><init>(Landroid/content/SyncManager;)V

    .line 325
    .local v1, listener:Landroid/accounts/AccountMonitorListener;
    new-instance v3, Landroid/accounts/AccountMonitor;

    invoke-direct {v3, p1, v1}, Landroid/accounts/AccountMonitor;-><init>(Landroid/content/Context;Landroid/accounts/AccountMonitorListener;)V

    iput-object v3, p0, Landroid/content/SyncManager;->mAccountMonitor:Landroid/accounts/AccountMonitor;

    .line 327
    .end local v1           #listener:Landroid/accounts/AccountMonitorListener;
    :cond_107
    return-void

    .line 270
    .end local v2           #pm:Landroid/os/PowerManager;
    :cond_108
    iput-object v7, p0, Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    goto :goto_cd
.end method

.method static synthetic access$000(Landroid/content/SyncManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/content/SyncManager;->ensureContentResolver()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/SyncManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Landroid/content/SyncManager;->mStorageIsLow:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/content/SyncManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/content/SyncManager;->sendSyncAlarmMessage()V

    return-void
.end method

.method static synthetic access$102(Landroid/content/SyncManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Landroid/content/SyncManager;->mStorageIsLow:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/content/SyncManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/content/SyncManager;->handleSyncPollAlarm()V

    return-void
.end method

.method static synthetic access$1500(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncManager$SyncQueue;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/content/SyncManager;Landroid/content/SyncManager$SyncOperation;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->rescheduleImmediately(Landroid/content/SyncManager$SyncOperation;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/content/SyncManager;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->setStatusText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/content/SyncManager;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/SyncManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/content/SyncManager;->sendCheckAlarmsMessage()V

    return-void
.end method

.method static synthetic access$2000(Landroid/content/SyncManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/content/SyncManager;->isSyncEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Landroid/content/SyncManager;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/content/SyncManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/content/SyncManager;Landroid/content/SyncManager$SyncOperation;)J
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/content/SyncManager;->rescheduleWithDelay(Landroid/content/SyncManager$SyncOperation;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2300(Landroid/content/SyncManager;)Landroid/app/NotificationManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/content/SyncManager;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/content/SyncManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z

    return v0
.end method

.method static synthetic access$2402(Landroid/content/SyncManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Landroid/content/SyncManager;->mNeedSyncActiveNotification:Z

    return p1
.end method

.method static synthetic access$2500(Landroid/content/SyncManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Landroid/content/SyncManager;->mNeedSyncErrorNotification:Z

    return v0
.end method

.method static synthetic access$2502(Landroid/content/SyncManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Landroid/content/SyncManager;->mNeedSyncErrorNotification:Z

    return p1
.end method

.method static synthetic access$2600(Landroid/content/SyncManager;)Landroid/content/SyncManager$SyncHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/content/SyncManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/content/SyncManager;->ensureAlarmService()V

    return-void
.end method

.method static synthetic access$2800(Landroid/content/SyncManager;)Landroid/app/PendingIntent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/content/SyncManager;)Landroid/app/AlarmManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/SyncManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    return v0
.end method

.method static synthetic access$302(Landroid/content/SyncManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    return p1
.end method

.method static synthetic access$400(Landroid/content/SyncManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/content/SyncManager;->initializeSyncPoll()V

    return-void
.end method

.method static synthetic access$500(Landroid/content/SyncManager;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/content/SyncManager;->mAccounts:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Landroid/content/SyncManager;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Landroid/content/SyncManager;->mAccounts:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    return-object v0
.end method

.method static synthetic access$602(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncManager$ActiveSyncContext;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    return-object p1
.end method

.method static synthetic access$700(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    return-void
.end method

.method static synthetic access$800(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/SyncManager;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/content/SyncManager;->mHandleAlarmWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private dumpDayStatistic(Ljava/io/PrintWriter;Landroid/content/SyncStorageEngine$DayStats;)V
    .registers 9
    .parameter "pw"
    .parameter "ds"

    .prologue
    const-string v5, " for "

    const-string v4, " avg="

    .line 1170
    const-string v0, "Success ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1171
    iget v0, p2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    if-lez v0, :cond_2a

    .line 1172
    const-string v0, " for "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-direct {p0, p1, v0, v1}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1173
    const-string v0, " avg="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    iget v2, p2, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1175
    :cond_2a
    const-string v0, ") Failure ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1176
    iget v0, p2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    if-lez v0, :cond_50

    .line 1177
    const-string v0, " for "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-direct {p0, p1, v0, v1}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1178
    const-string v0, " avg="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p2, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    iget v2, p2, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-direct {p0, p1, v0, v1}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1180
    :cond_50
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1181
    return-void
.end method

.method private dumpTimeSec(Ljava/io/PrintWriter;J)V
    .registers 8
    .parameter "pw"
    .parameter "time"

    .prologue
    .line 1165
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    const-wide/16 v0, 0x64

    div-long v0, p2, v0

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1166
    const/16 v0, 0x73

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1167
    return-void
.end method

.method private ensureAlarmService()V
    .registers 3

    .prologue
    .line 462
    iget-object v0, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    .line 463
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    .line 465
    :cond_10
    return-void
.end method

.method private ensureContentResolver()V
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Landroid/content/SyncManager;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_c

    .line 457
    iget-object v0, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 459
    :cond_c
    return-void
.end method

.method static formatTime(J)Ljava/lang/String;
    .registers 4
    .parameter "time"

    .prologue
    .line 1020
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1021
    .local v0, tobj:Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1022
    const-string v1, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 495
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, countryCode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    move-object v1, v0

    .line 500
    :goto_b
    return-object v1

    :cond_c
    const-string v1, "NULL"

    goto :goto_b
.end method

.method private static getOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 485
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, operatorCode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    move-object v1, v0

    .line 490
    :goto_b
    return-object v1

    :cond_c
    const-string v1, "NULL"

    goto :goto_b
.end method

.method private getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 3

    .prologue
    .line 660
    iget-object v1, p0, Landroid/content/SyncManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v1, :cond_10

    .line 661
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 662
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Landroid/content/SyncManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 664
    .end local v0           #b:Landroid/os/IBinder;
    :cond_10
    iget-object v1, p0, Landroid/content/SyncManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object v1
.end method

.method private handleSyncPollAlarm()V
    .registers 10

    .prologue
    const-string v8, "SyncManager"

    .line 388
    const-wide/32 v4, 0x15180

    const-wide/32 v6, 0x1fa40

    invoke-direct {p0, v4, v5, v6, v7}, Landroid/content/SyncManager;->jitterize(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v0, v4, v6

    .line 389
    .local v0, delayMs:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v2, v4, v0

    .line 391
    .local v2, nextRelativePollTimeMs:J
    const-string v4, "SyncManager"

    const/4 v4, 0x2

    invoke-static {v8, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_37

    const-string v4, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSyncPollAlarm: delay "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v0

    invoke-direct {p0, v4, v5}, Landroid/content/SyncManager;->writeSyncPollTime(J)V

    .line 397
    invoke-direct {p0, v2, v3}, Landroid/content/SyncManager;->scheduleSyncPollAlarm(J)V

    .line 400
    const/4 v4, 0x0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/content/SyncManager;->scheduleSync(Landroid/net/Uri;Landroid/os/Bundle;J)V

    .line 401
    return-void
.end method

.method private declared-synchronized initializeSyncPoll()V
    .registers 16

    .prologue
    const-string v11, "SyncManager"

    .line 330
    monitor-enter p0

    :try_start_3
    iget-boolean v11, p0, Landroid/content/SyncManager;->mSyncPollInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_63

    if-eqz v11, :cond_9

    .line 359
    :goto_7
    monitor-exit p0

    return-void

    .line 331
    :cond_9
    const/4 v11, 0x1

    :try_start_a
    iput-boolean v11, p0, Landroid/content/SyncManager;->mSyncPollInitialized:Z

    .line 333
    iget-object v11, p0, Landroid/content/SyncManager;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/SyncManager$SyncPollAlarmReceiver;

    invoke-direct {v12, p0}, Landroid/content/SyncManager$SyncPollAlarmReceiver;-><init>(Landroid/content/SyncManager;)V

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "android.content.syncmanager.SYNC_POLL_ALARM"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 336
    invoke-direct {p0}, Landroid/content/SyncManager;->readSyncPollTime()J

    move-result-wide v0

    .line 338
    .local v0, absoluteAlarmTime:J
    const-string v11, "SyncManager"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_42

    .line 339
    const-string v11, "SyncManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "initializeSyncPoll: absoluteAlarmTime is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 346
    .local v2, absoluteNow:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 347
    .local v9, relativeNow:J
    move-wide v7, v9

    .line 348
    .local v7, relativeAlarmTime:J
    cmp-long v11, v0, v2

    if-lez v11, :cond_5f

    .line 349
    sub-long v4, v0, v2

    .line 350
    .local v4, delayInMs:J
    const v6, 0x7b98a00

    .line 351
    .local v6, maxDelayInMs:I
    const-wide/32 v11, 0x7b98a00

    cmp-long v11, v4, v11

    if-lez v11, :cond_5e

    .line 352
    const-wide/32 v4, 0x7b98a00

    .line 354
    :cond_5e
    add-long/2addr v7, v4

    .line 358
    .end local v4           #delayInMs:J
    .end local v6           #maxDelayInMs:I
    :cond_5f
    invoke-direct {p0, v7, v8}, Landroid/content/SyncManager;->scheduleSyncPollAlarm(J)V
    :try_end_62
    .catchall {:try_start_a .. :try_end_62} :catchall_63

    goto :goto_7

    .line 330
    .end local v0           #absoluteAlarmTime:J
    .end local v2           #absoluteNow:J
    .end local v7           #relativeAlarmTime:J
    .end local v9           #relativeNow:J
    :catchall_63
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method private isSyncEnabled()Z
    .registers 3

    .prologue
    .line 480
    const-string v0, "yes"

    const-string v1, "ro.config.sync"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private jitterize(JJ)J
    .registers 10
    .parameter "minValue"
    .parameter "maxValue"

    .prologue
    .line 377
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 378
    .local v0, random:Ljava/util/Random;
    sub-long v1, p3, p1

    .line 379
    .local v1, spread:J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_1a

    .line 380
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "the difference between the maxValue and the minValue must be less than 2147483647"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 383
    :cond_1a
    long-to-int v3, v1

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, p1

    return-wide v3
.end method

.method private populateProvidersList(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)V
    .registers 12
    .parameter "url"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 626
    .local p2, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/content/SyncManager;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 627
    .local v3, packageManager:Landroid/content/pm/IPackageManager;
    if-nez p1, :cond_a

    .line 628
    invoke-interface {v3, p2, p3}, Landroid/content/pm/IPackageManager;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    .line 648
    .end local v3           #packageManager:Landroid/content/pm/IPackageManager;
    :cond_9
    :goto_9
    return-void

    .line 630
    .restart local v3       #packageManager:Landroid/content/pm/IPackageManager;
    :cond_a
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, authority:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 632
    .local v2, info:Landroid/content/pm/ProviderInfo;
    if-eqz v2, :cond_9

    .line 634
    iget-object v5, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 635
    .local v4, providerNames:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 636
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_9

    .line 641
    .end local v0           #authority:Ljava/lang/String;
    .end local v2           #info:Landroid/content/pm/ProviderInfo;
    .end local v3           #packageManager:Landroid/content/pm/IPackageManager;
    .end local v4           #providerNames:[Ljava/lang/String;
    :catch_35
    move-exception v5

    move-object v1, v5

    .line 644
    .local v1, ex:Landroid/os/RemoteException;
    const-string v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error trying to get the ProviderInfo for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 645
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 646
    invoke-interface {p3}, Ljava/util/List;->clear()V

    goto :goto_9
.end method

.method private readSyncPollTime()J
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    const-string v9, "error closing file "

    const-string v8, "SyncManager"

    .line 425
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/system/syncmanager.prefs"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    .local v1, f:Ljava/io/File;
    const/4 v2, 0x0

    .line 429
    .local v2, str:Ljava/io/DataInputStream;
    :try_start_e
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_9f
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_18} :catch_3d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_65

    .line 430
    .end local v2           #str:Ljava/io/DataInputStream;
    .local v3, str:Ljava/io/DataInputStream;
    :try_start_18
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_c0
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1b} :catch_c7
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_c3

    move-result-wide v4

    .line 436
    if-eqz v3, :cond_21

    .line 438
    :try_start_1e
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_23

    :cond_21
    :goto_21
    move-object v2, v3

    .line 444
    .end local v3           #str:Ljava/io/DataInputStream;
    .restart local v2       #str:Ljava/io/DataInputStream;
    :goto_22
    return-wide v4

    .line 439
    .end local v2           #str:Ljava/io/DataInputStream;
    .restart local v3       #str:Ljava/io/DataInputStream;
    :catch_23
    move-exception v0

    .line 440
    .local v0, e:Ljava/io/IOException;
    const-string v6, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error closing file "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 431
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #str:Ljava/io/DataInputStream;
    .restart local v2       #str:Ljava/io/DataInputStream;
    :catch_3d
    move-exception v4

    move-object v0, v4

    .line 432
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_3f
    const-wide/16 v4, 0x0

    :try_start_41
    invoke-direct {p0, v4, v5}, Landroid/content/SyncManager;->writeSyncPollTime(J)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_9f

    .line 436
    if-eqz v2, :cond_49

    .line 438
    :try_start_46
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4b

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_49
    :goto_49
    move-wide v4, v10

    .line 444
    goto :goto_22

    .line 439
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    :catch_4b
    move-exception v0

    .line 440
    .local v0, e:Ljava/io/IOException;
    const-string v4, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error closing file "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49

    .line 433
    .end local v0           #e:Ljava/io/IOException;
    :catch_65
    move-exception v4

    move-object v0, v4

    .line 434
    .restart local v0       #e:Ljava/io/IOException;
    :goto_67
    :try_start_67
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error reading file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_67 .. :try_end_7f} :catchall_9f

    .line 436
    if-eqz v2, :cond_49

    .line 438
    :try_start_81
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_49

    .line 439
    :catch_85
    move-exception v0

    .line 440
    const-string v4, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error closing file "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49

    .line 436
    .end local v0           #e:Ljava/io/IOException;
    :catchall_9f
    move-exception v4

    :goto_a0
    if-eqz v2, :cond_a5

    .line 438
    :try_start_a2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a6

    .line 441
    :cond_a5
    :goto_a5
    throw v4

    .line 439
    :catch_a6
    move-exception v0

    .line 440
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error closing file "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a5

    .line 436
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #str:Ljava/io/DataInputStream;
    .restart local v3       #str:Ljava/io/DataInputStream;
    :catchall_c0
    move-exception v4

    move-object v2, v3

    .end local v3           #str:Ljava/io/DataInputStream;
    .restart local v2       #str:Ljava/io/DataInputStream;
    goto :goto_a0

    .line 433
    .end local v2           #str:Ljava/io/DataInputStream;
    .restart local v3       #str:Ljava/io/DataInputStream;
    :catch_c3
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #str:Ljava/io/DataInputStream;
    .restart local v2       #str:Ljava/io/DataInputStream;
    goto :goto_67

    .line 431
    .end local v2           #str:Ljava/io/DataInputStream;
    .restart local v3       #str:Ljava/io/DataInputStream;
    :catch_c7
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #str:Ljava/io/DataInputStream;
    .restart local v2       #str:Ljava/io/DataInputStream;
    goto/16 :goto_3f
.end method

.method private rescheduleImmediately(Landroid/content/SyncManager$SyncOperation;)V
    .registers 5
    .parameter "syncOperation"

    .prologue
    .line 729
    new-instance v0, Landroid/content/SyncManager$SyncOperation;

    invoke-direct {v0, p1}, Landroid/content/SyncManager$SyncOperation;-><init>(Landroid/content/SyncManager$SyncOperation;)V

    .line 730
    .local v0, rescheduledSyncOperation:Landroid/content/SyncManager$SyncOperation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncManager$SyncOperation;->setDelay(J)V

    .line 731
    invoke-virtual {p0, v0}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncManager$SyncOperation;)V

    .line 732
    return-void
.end method

.method private rescheduleWithDelay(Landroid/content/SyncManager$SyncOperation;)J
    .registers 13
    .parameter "syncOperation"

    .prologue
    const-wide/16 v9, 0x3e8

    .line 737
    iget-wide v5, p1, Landroid/content/SyncManager$SyncOperation;->delay:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_34

    .line 739
    const-wide/16 v5, 0x7530

    const-wide/32 v7, 0x80e8

    invoke-direct {p0, v5, v6, v7, v8}, Landroid/content/SyncManager;->jitterize(JJ)J

    move-result-wide v2

    .line 747
    .local v2, newDelayInMs:J
    :goto_13
    invoke-direct {p0}, Landroid/content/SyncManager;->ensureContentResolver()V

    .line 748
    iget-object v5, p0, Landroid/content/SyncManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "sync_max_retry_delay_in_seconds"

    const-wide/16 v7, 0xe10

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 751
    .local v0, maxSyncRetryTimeInSeconds:J
    mul-long v5, v0, v9

    cmp-long v5, v2, v5

    if-lez v5, :cond_28

    .line 752
    mul-long v2, v0, v9

    .line 755
    :cond_28
    new-instance v4, Landroid/content/SyncManager$SyncOperation;

    invoke-direct {v4, p1}, Landroid/content/SyncManager$SyncOperation;-><init>(Landroid/content/SyncManager$SyncOperation;)V

    .line 756
    .local v4, rescheduledSyncOperation:Landroid/content/SyncManager$SyncOperation;
    invoke-virtual {v4, v2, v3}, Landroid/content/SyncManager$SyncOperation;->setDelay(J)V

    .line 757
    invoke-virtual {p0, v4}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncManager$SyncOperation;)V

    .line 758
    return-wide v2

    .line 743
    .end local v0           #maxSyncRetryTimeInSeconds:J
    .end local v2           #newDelayInMs:J
    .end local v4           #rescheduledSyncOperation:Landroid/content/SyncManager$SyncOperation;
    :cond_34
    iget-wide v5, p1, Landroid/content/SyncManager$SyncOperation;->delay:J

    const-wide/16 v7, 0x2

    mul-long v2, v5, v7

    .restart local v2       #newDelayInMs:J
    goto :goto_13
.end method

.method private scheduleSyncPollAlarm(J)V
    .registers 8
    .parameter "relativeAlarmTime"

    .prologue
    const/4 v3, 0x2

    const-string v4, "SyncManager"

    .line 362
    const-string v0, "SyncManager"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 363
    const-string v0, "SyncManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleSyncPollAlarm: relativeAlarmTime is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", now is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delay is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_41
    invoke-direct {p0}, Landroid/content/SyncManager;->ensureAlarmService()V

    .line 368
    iget-object v0, p0, Landroid/content/SyncManager;->mAlarmService:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/content/SyncManager;->mSyncPollAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 370
    return-void
.end method

.method private sendCheckAlarmsMessage()V
    .registers 3

    .prologue
    const-string v1, "SyncManager"

    .line 692
    const-string v0, "SyncManager"

    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "SyncManager"

    const-string v0, "sending MESSAGE_CHECK_ALARMS"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_12
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/SyncManager$SyncHandler;->sendEmptyMessage(I)Z

    .line 694
    return-void
.end method

.method private sendSyncAlarmMessage()V
    .registers 4

    .prologue
    const/4 v1, 0x2

    const-string v2, "SyncManager"

    .line 687
    const-string v0, "SyncManager"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "SyncManager"

    const-string v0, "sending MESSAGE_SYNC_ALARM"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_12
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v0, v1}, Landroid/content/SyncManager$SyncHandler;->sendEmptyMessage(I)Z

    .line 689
    return-void
.end method

.method private sendSyncFinishedOrCanceledMessage(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V
    .registers 6
    .parameter "syncContext"
    .parameter "syncResult"

    .prologue
    const-string v2, "SyncManager"

    .line 698
    const-string v1, "SyncManager"

    const/4 v1, 0x2

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "SyncManager"

    const-string v1, "sending MESSAGE_SYNC_FINISHED"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_12
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v1}, Landroid/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 700
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 701
    new-instance v1, Landroid/content/SyncManager$SyncHandlerMessagePayload;

    invoke-direct {v1, p0, p1, p2}, Landroid/content/SyncManager$SyncHandlerMessagePayload;-><init>(Landroid/content/SyncManager;Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 702
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    invoke-virtual {v1, v0}, Landroid/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 703
    return-void
.end method

.method private setStatusText(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 621
    iput-object p1, p0, Landroid/content/SyncManager;->mStatusText:Ljava/lang/String;

    .line 622
    return-void
.end method

.method private writeSyncPollTime(J)V
    .registers 12
    .parameter "when"

    .prologue
    const-string v4, "error writing to file "

    const-string v8, "error closing file "

    const-string v7, "SyncManager"

    .line 404
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/system/syncmanager.prefs"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .local v1, f:Ljava/io/File;
    const/4 v2, 0x0

    .line 407
    .local v2, str:Ljava/io/DataOutputStream;
    :try_start_e
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_b2
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_18} :catch_3d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_77

    .line 408
    .end local v2           #str:Ljava/io/DataOutputStream;
    .local v3, str:Ljava/io/DataOutputStream;
    :try_start_18
    invoke-virtual {v3, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_d3
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1b} :catch_da
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_d6

    .line 414
    if-eqz v3, :cond_df

    .line 416
    :try_start_1d
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_22

    move-object v2, v3

    .line 422
    .end local v3           #str:Ljava/io/DataOutputStream;
    .restart local v2       #str:Ljava/io/DataOutputStream;
    :cond_21
    :goto_21
    return-void

    .line 417
    .end local v2           #str:Ljava/io/DataOutputStream;
    .restart local v3       #str:Ljava/io/DataOutputStream;
    :catch_22
    move-exception v0

    .line 418
    .local v0, e:Ljava/io/IOException;
    const-string v4, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error closing file "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 419
    .end local v3           #str:Ljava/io/DataOutputStream;
    .restart local v2       #str:Ljava/io/DataOutputStream;
    goto :goto_21

    .line 409
    .end local v0           #e:Ljava/io/IOException;
    :catch_3d
    move-exception v4

    move-object v0, v4

    .line 410
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_3f
    :try_start_3f
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error writing to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_3f .. :try_end_57} :catchall_b2

    .line 414
    if-eqz v2, :cond_21

    .line 416
    :try_start_59
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_21

    .line 417
    :catch_5d
    move-exception v0

    .line 418
    .local v0, e:Ljava/io/IOException;
    const-string v4, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error closing file "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 411
    .end local v0           #e:Ljava/io/IOException;
    :catch_77
    move-exception v4

    move-object v0, v4

    .line 412
    .restart local v0       #e:Ljava/io/IOException;
    :goto_79
    :try_start_79
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error writing to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91
    .catchall {:try_start_79 .. :try_end_91} :catchall_b2

    .line 414
    if-eqz v2, :cond_21

    .line 416
    :try_start_93
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_21

    .line 417
    :catch_97
    move-exception v0

    .line 418
    const-string v4, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error closing file "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 414
    .end local v0           #e:Ljava/io/IOException;
    :catchall_b2
    move-exception v4

    :goto_b3
    if-eqz v2, :cond_b8

    .line 416
    :try_start_b5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_b9

    .line 419
    :cond_b8
    :goto_b8
    throw v4

    .line 417
    :catch_b9
    move-exception v0

    .line 418
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error closing file "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b8

    .line 414
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #str:Ljava/io/DataOutputStream;
    .restart local v3       #str:Ljava/io/DataOutputStream;
    :catchall_d3
    move-exception v4

    move-object v2, v3

    .end local v3           #str:Ljava/io/DataOutputStream;
    .restart local v2       #str:Ljava/io/DataOutputStream;
    goto :goto_b3

    .line 411
    .end local v2           #str:Ljava/io/DataOutputStream;
    .restart local v3       #str:Ljava/io/DataOutputStream;
    :catch_d6
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #str:Ljava/io/DataOutputStream;
    .restart local v2       #str:Ljava/io/DataOutputStream;
    goto :goto_79

    .line 409
    .end local v2           #str:Ljava/io/DataOutputStream;
    .restart local v3       #str:Ljava/io/DataOutputStream;
    :catch_da
    move-exception v4

    move-object v0, v4

    move-object v2, v3

    .end local v3           #str:Ljava/io/DataOutputStream;
    .restart local v2       #str:Ljava/io/DataOutputStream;
    goto/16 :goto_3f

    .end local v2           #str:Ljava/io/DataOutputStream;
    .restart local v3       #str:Ljava/io/DataOutputStream;
    :cond_df
    move-object v2, v3

    .end local v3           #str:Ljava/io/DataOutputStream;
    .restart local v2       #str:Ljava/io/DataOutputStream;
    goto/16 :goto_21
.end method


# virtual methods
.method public cancelActiveSync(Landroid/net/Uri;)V
    .registers 5
    .parameter "uri"

    .prologue
    .line 768
    iget-object v0, p0, Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    .line 769
    .local v0, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    if-eqz v0, :cond_14

    .line 771
    if-eqz p1, :cond_15

    .line 772
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncManager$SyncOperation;

    iget-object v2, v2, Landroid/content/SyncManager$SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 779
    :cond_14
    :goto_14
    return-void

    .line 776
    :cond_15
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    goto :goto_14
.end method

.method public clearScheduledSyncOperations(Landroid/net/Uri;)V
    .registers 6
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 830
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncManager$SyncQueue;

    monitor-enter v0

    .line 831
    :try_start_4
    iget-object v1, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncManager$SyncQueue;

    const/4 v2, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    :cond_d
    invoke-virtual {v1, v2, v3}, Landroid/content/SyncManager$SyncQueue;->clear(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    monitor-exit v0

    .line 833
    return-void

    .line 832
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 5
    .parameter "fd"
    .parameter "pw"

    .prologue
    .line 1012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1013
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p2, v0}, Landroid/content/SyncManager;->dumpSyncState(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;)V

    .line 1014
    invoke-direct {p0}, Landroid/content/SyncManager;->isSyncEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1015
    invoke-virtual {p0, p2, v0}, Landroid/content/SyncManager;->dumpSyncHistory(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;)V

    .line 1017
    :cond_11
    return-void
.end method

.method protected dumpSyncHistory(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;)V
    .registers 23
    .parameter "pw"
    .parameter "sb"

    .prologue
    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/SyncStorageEngine;->getDayStatistics()[Landroid/content/SyncStorageEngine$DayStats;

    move-result-object v9

    .line 1185
    .local v9, dses:[Landroid/content/SyncStorageEngine$DayStats;
    if-eqz v9, :cond_124

    const/16 v16, 0x0

    aget-object v16, v9, v16

    if-eqz v16, :cond_124

    .line 1186
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1187
    const-string v16, "Sync Statistics"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1188
    const-string v16, "  Today:  "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v16, 0x0

    aget-object v16, v9, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Landroid/content/SyncStorageEngine$DayStats;)V

    .line 1189
    const/16 v16, 0x0

    aget-object v16, v9, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/SyncStorageEngine$DayStats;->day:I

    move v14, v0

    .line 1194
    .local v14, today:I
    const/4 v10, 0x1

    .local v10, i:I
    :goto_3e
    const/16 v16, 0x6

    move v0, v10

    move/from16 v1, v16

    if-gt v0, v1, :cond_52

    move-object v0, v9

    array-length v0, v0

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_52

    .line 1195
    aget-object v8, v9, v10

    .line 1196
    .local v8, ds:Landroid/content/SyncStorageEngine$DayStats;
    if-nez v8, :cond_95

    .line 1205
    .end local v8           #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_52
    move v15, v14

    .line 1206
    .local v15, weekDay:I
    :cond_53
    :goto_53
    move-object v0, v9

    array-length v0, v0

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_124

    .line 1207
    const/4 v5, 0x0

    .line 1208
    .local v5, aggr:Landroid/content/SyncStorageEngine$DayStats;
    add-int/lit8 v15, v15, -0x7

    .line 1209
    :goto_5f
    move-object v0, v9

    array-length v0, v0

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-ge v0, v1, :cond_6d

    .line 1210
    aget-object v8, v9, v10

    .line 1211
    .restart local v8       #ds:Landroid/content/SyncStorageEngine$DayStats;
    if-nez v8, :cond_c7

    .line 1212
    array-length v10, v9

    .line 1227
    .end local v8           #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_6d
    if-eqz v5, :cond_53

    .line 1228
    const-string v16, "  Week-"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-int v16, v14, v15

    div-int/lit8 v16, v16, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v16, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1229
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Landroid/content/SyncStorageEngine$DayStats;)V

    goto :goto_53

    .line 1197
    .end local v5           #aggr:Landroid/content/SyncStorageEngine$DayStats;
    .end local v15           #weekDay:I
    .restart local v8       #ds:Landroid/content/SyncStorageEngine$DayStats;
    :cond_95
    move-object v0, v8

    iget v0, v0, Landroid/content/SyncStorageEngine$DayStats;->day:I

    move/from16 v16, v0

    sub-int v7, v14, v16

    .line 1198
    .local v7, delta:I
    const/16 v16, 0x6

    move v0, v7

    move/from16 v1, v16

    if-gt v0, v1, :cond_52

    .line 1200
    const-string v16, "  Day-"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v16, ":  "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1201
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Landroid/content/SyncManager;->dumpDayStatistic(Ljava/io/PrintWriter;Landroid/content/SyncStorageEngine$DayStats;)V

    .line 1194
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3e

    .line 1215
    .end local v7           #delta:I
    .restart local v5       #aggr:Landroid/content/SyncStorageEngine$DayStats;
    .restart local v15       #weekDay:I
    :cond_c7
    move-object v0, v8

    iget v0, v0, Landroid/content/SyncStorageEngine$DayStats;->day:I

    move/from16 v16, v0

    sub-int v7, v15, v16

    .line 1216
    .restart local v7       #delta:I
    const/16 v16, 0x6

    move v0, v7

    move/from16 v1, v16

    if-gt v0, v1, :cond_6d

    .line 1217
    add-int/lit8 v10, v10, 0x1

    .line 1219
    if-nez v5, :cond_de

    .line 1220
    new-instance v5, Landroid/content/SyncStorageEngine$DayStats;

    .end local v5           #aggr:Landroid/content/SyncStorageEngine$DayStats;
    invoke-direct {v5, v15}, Landroid/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 1222
    .restart local v5       #aggr:Landroid/content/SyncStorageEngine$DayStats;
    :cond_de
    move-object v0, v5

    iget v0, v0, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    move/from16 v16, v0

    move-object v0, v8

    iget v0, v0, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Landroid/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1223
    move-object v0, v5

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    move-wide/from16 v16, v0

    move-object v0, v8

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object v2, v5

    iput-wide v0, v2, Landroid/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1224
    move-object v0, v5

    iget v0, v0, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    move/from16 v16, v0

    move-object v0, v8

    iget v0, v0, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Landroid/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1225
    move-object v0, v5

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    move-wide/from16 v16, v0

    move-object v0, v8

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object v2, v5

    iput-wide v0, v2, Landroid/content/SyncStorageEngine$DayStats;->failureTime:J

    goto/16 :goto_5f

    .line 1234
    .end local v5           #aggr:Landroid/content/SyncStorageEngine$DayStats;
    .end local v7           #delta:I
    .end local v8           #ds:Landroid/content/SyncStorageEngine$DayStats;
    .end local v10           #i:I
    .end local v14           #today:I
    .end local v15           #weekDay:I
    :cond_124
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/SyncStorageEngine;->getSyncHistory()Ljava/util/ArrayList;

    move-result-object v12

    .line 1236
    .local v12, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$SyncHistoryItem;>;"
    if-eqz v12, :cond_291

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_291

    .line 1237
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1238
    const-string v16, "Recent Sync History"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1240
    .local v4, N:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_147
    if-ge v10, v4, :cond_291

    .line 1241
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/SyncStorageEngine$SyncHistoryItem;

    .line 1242
    .local v11, item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v16, v0

    move-object v0, v11

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/content/SyncStorageEngine;->getAuthority(I)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 1244
    .local v6, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    const-string v16, "  #"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v16, v10, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v16, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1245
    if-eqz v6, :cond_289

    move-object v0, v6

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_180
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1246
    const-string v16, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1247
    if-eqz v6, :cond_28d

    move-object v0, v6

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_197
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1248
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 1249
    .local v13, time:Landroid/text/format/Time;
    move-object v0, v11

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    move-wide/from16 v16, v0

    move-object v0, v13

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1250
    const-string v16, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v16, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object v0, v11

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->source:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1251
    const-string v16, " @ "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1252
    move-object v0, v11

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1253
    const-string v16, " for "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1254
    move-object v0, v11

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Landroid/content/SyncManager;->dumpTimeSec(Ljava/io/PrintWriter;J)V

    .line 1255
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1256
    move-object v0, v11

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->event:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_21d

    move-object v0, v11

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_21d

    move-object v0, v11

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_25c

    .line 1259
    :cond_21d
    const-string v16, "    event="

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v0, v11

    iget v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->event:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1260
    const-string v16, " upstreamActivity="

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v0, v11

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1261
    const-string v16, " downstreamActivity="

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v0, v11

    iget-wide v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 1263
    :cond_25c
    move-object v0, v11

    iget-object v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_285

    const-string v16, "success"

    move-object v0, v11

    iget-object v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_285

    .line 1265
    const-string v16, "    mesg="

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v0, v11

    iget-object v0, v0, Landroid/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1240
    :cond_285
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_147

    .line 1245
    .end local v13           #time:Landroid/text/format/Time;
    :cond_289
    const-string v16, "<no account>"

    goto/16 :goto_180

    .line 1247
    :cond_28d
    const-string v16, "<no account>"

    goto/16 :goto_197

    .line 1269
    .end local v4           #N:I
    .end local v6           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v10           #i:I
    .end local v11           #item:Landroid/content/SyncStorageEngine$SyncHistoryItem;
    :cond_291
    return-void
.end method

.method protected dumpSyncState(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;)V
    .registers 26
    .parameter "pw"
    .parameter "sb"

    .prologue
    .line 1026
    const-string v19, "sync enabled: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager;->isSyncEnabled()Z

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1027
    const-string v19, "data connected: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1028
    const-string v19, "memory low: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/SyncManager;->mStorageIsLow:Z

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mAccounts:[Ljava/lang/String;

    move-object v4, v0

    .line 1031
    .local v4, accounts:[Ljava/lang/String;
    const-string v19, "accounts: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1032
    if-eqz v4, :cond_2bf

    .line 1033
    move-object v0, v4

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1037
    :goto_5b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1038
    .local v12, now:J
    const-string v19, "now: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 1039
    const-string v19, "uptime: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v19, 0x3e8

    div-long v19, v12, v19

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1040
    const-string v19, " (HH:MM:SS)"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1041
    const-string v19, "time spent syncing: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1042
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/SyncManager$SyncTimeTracker;->timeSpentSyncing()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1044
    const-string v19, " (HH:MM:SS), sync "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncTimeTracker:Landroid/content/SyncManager$SyncTimeTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2ca

    const-string v19, ""

    :goto_d6
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    const-string v19, "in progress"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager$SyncHandler;->access$1200(Landroid/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v19

    if-eqz v19, :cond_2ce

    .line 1048
    const-string v19, "next alarm time: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager$SyncHandler;->access$1200(Landroid/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1049
    const-string v19, " ("

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/content/SyncManager$SyncHandler;->access$1200(Landroid/content/SyncManager$SyncHandler;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sub-long v19, v19, v12

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1051
    const-string v19, " (HH:MM:SS) from now)"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1056
    :goto_13d
    const-string v19, "active sync: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1058
    const-string v19, "notification info: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1059
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncHandler:Landroid/content/SyncManager$SyncHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/SyncManager$SyncHandler;->mSyncNotificationInfo:Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/SyncManager$SyncHandler$SyncNotificationInfo;->toString(Ljava/lang/StringBuilder;)V

    .line 1061
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncManager$SyncQueue;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1064
    :try_start_18a
    const-string v20, "sync queue: "

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1065
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncManager$SyncQueue;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/SyncManager$SyncQueue;->dump(Ljava/lang/StringBuilder;)V

    .line 1067
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1068
    monitor-exit v19
    :try_end_1b5
    .catchall {:try_start_18a .. :try_end_1b5} :catchall_2d9

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/SyncStorageEngine;->getActiveSync()Landroid/content/ActiveSyncInfo;

    move-result-object v5

    .line 1071
    .local v5, active:Landroid/content/ActiveSyncInfo;
    if-eqz v5, :cond_2e4

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v19, v0

    move-object v0, v5

    iget v0, v0, Landroid/content/ActiveSyncInfo;->authorityId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/SyncStorageEngine;->getAuthority(I)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 1074
    .local v6, authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    move-object v0, v5

    iget-wide v0, v0, Landroid/content/ActiveSyncInfo;->startTime:J

    move-wide/from16 v19, v0

    sub-long v19, v12, v19

    const-wide/16 v21, 0x3e8

    div-long v8, v19, v21

    .line 1075
    .local v8, durationInSeconds:J
    const-string v19, "Active sync: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1076
    if-eqz v6, :cond_2dc

    move-object v0, v6

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Ljava/lang/String;

    move-object/from16 v19, v0

    :goto_1eb
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    const-string v19, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1078
    if-eqz v6, :cond_2e0

    move-object v0, v6

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object/from16 v19, v0

    :goto_202
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1079
    const-string v19, ", duration is "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1080
    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1085
    .end local v6           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v8           #durationInSeconds:J
    :goto_21d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/SyncStorageEngine;->getPendingOperations()Ljava/util/ArrayList;

    move-result-object v15

    .line 1087
    .local v15, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$PendingOperation;>;"
    if-eqz v15, :cond_2ef

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_2ef

    .line 1088
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1089
    const-string v19, "Pending Syncs"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1091
    .local v3, N:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_240
    if-ge v10, v3, :cond_2ef

    .line 1092
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/SyncStorageEngine$PendingOperation;

    .line 1093
    .local v14, op:Landroid/content/SyncStorageEngine$PendingOperation;
    const-string v19, "  #"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v19, ": account="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1094
    move-object v0, v14

    iget-object v0, v0, Landroid/content/SyncStorageEngine$PendingOperation;->account:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v19, " authority="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1095
    move-object v0, v14

    iget-object v0, v0, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1096
    move-object v0, v14

    iget-object v0, v0, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2bc

    move-object v0, v14

    iget-object v0, v0, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/Bundle;->size()I

    move-result v19

    if-lez v19, :cond_2bc

    .line 1097
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1098
    move-object v0, v14

    iget-object v0, v0, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/content/SyncManager$SyncOperation;->access$1300(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 1099
    const-string v19, "    extras: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1091
    :cond_2bc
    add-int/lit8 v10, v10, 0x1

    goto :goto_240

    .line 1035
    .end local v3           #N:I
    .end local v5           #active:Landroid/content/ActiveSyncInfo;
    .end local v10           #i:I
    .end local v12           #now:J
    .end local v14           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    .end local v15           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$PendingOperation;>;"
    :cond_2bf
    const-string v19, "none"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5b

    .line 1045
    .restart local v12       #now:J
    :cond_2ca
    const-string v19, "not "

    goto/16 :goto_d6

    .line 1053
    :cond_2ce
    const-string v19, "no alarm is scheduled (there had better not be any pending syncs)"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_13d

    .line 1068
    :catchall_2d9
    move-exception v20

    :try_start_2da
    monitor-exit v19
    :try_end_2db
    .catchall {:try_start_2da .. :try_end_2db} :catchall_2d9

    throw v20

    .line 1076
    .restart local v5       #active:Landroid/content/ActiveSyncInfo;
    .restart local v6       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .restart local v8       #durationInSeconds:J
    :cond_2dc
    const-string v19, "<no account>"

    goto/16 :goto_1eb

    .line 1078
    :cond_2e0
    const-string v19, "<no account>"

    goto/16 :goto_202

    .line 1082
    .end local v6           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v8           #durationInSeconds:J
    :cond_2e4
    const-string v19, "No sync is in progress."

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_21d

    .line 1104
    .restart local v15       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$PendingOperation;>;"
    :cond_2ef
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 1105
    .local v16, processedAccounts:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/SyncStorageEngine;->getSyncStatus()Ljava/util/ArrayList;

    move-result-object v18

    .line 1107
    .local v18, statuses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStatusInfo;>;"
    if-eqz v18, :cond_4e5

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_4e5

    .line 1108
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1109
    const-string v19, "Sync Status"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1110
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1111
    .restart local v3       #N:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_317
    if-ge v10, v3, :cond_4e5

    .line 1112
    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/SyncStatusInfo;

    .line 1113
    .local v17, status:Landroid/content/SyncStatusInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/SyncStatusInfo;->authorityId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/SyncStorageEngine;->getAuthority(I)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 1115
    .restart local v6       #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v6, :cond_33f

    .line 1116
    iget-object v7, v6, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Ljava/lang/String;

    .line 1118
    .local v7, curAccount:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_342

    .line 1111
    .end local v7           #curAccount:Ljava/lang/String;
    :cond_33f
    add-int/lit8 v10, v10, 0x1

    goto :goto_317

    .line 1122
    .restart local v7       #curAccount:Ljava/lang/String;
    :cond_342
    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1124
    const-string v19, "  Account "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v0, v6

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1125
    const-string v19, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1126
    move v11, v10

    .local v11, j:I
    :goto_367
    if-ge v11, v3, :cond_33f

    .line 1127
    move-object/from16 v0, v18

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #status:Landroid/content/SyncStatusInfo;
    check-cast v17, Landroid/content/SyncStatusInfo;

    .line 1128
    .restart local v17       #status:Landroid/content/SyncStatusInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/SyncStatusInfo;->authorityId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/SyncStorageEngine;->getAuthority(I)Landroid/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 1129
    move-object v0, v6

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->account:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_393

    .line 1126
    :goto_390
    add-int/lit8 v11, v11, 0x1

    goto :goto_367

    .line 1132
    :cond_393
    const-string v19, "    "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v0, v6

    iget-object v0, v0, Landroid/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1133
    const-string v19, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1134
    const-string v19, "      count: local="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1135
    const-string v19, " poll="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1136
    const-string v19, " server="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1137
    const-string v19, " user="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1138
    const-string v19, " total="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/SyncStatusInfo;->numSyncs:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1139
    const-string v19, "      total duration: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1140
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1142
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_47f

    .line 1143
    const-string v19, "      SUCCESS: source="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1144
    sget-object v19, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1146
    const-string v19, " time="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1147
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_390

    .line 1149
    :cond_47f
    const-string v19, "      FAILURE: source="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1150
    sget-object v19, Landroid/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    move/from16 v20, v0

    aget-object v19, v19, v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1152
    const-string v19, " initialTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1153
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1154
    const-string v19, " lastTime="

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1155
    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Landroid/content/SyncManager;->formatTime(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1156
    const-string v19, "      message: "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_390

    .line 1162
    .end local v3           #N:I
    .end local v6           #authority:Landroid/content/SyncStorageEngine$AuthorityInfo;
    .end local v7           #curAccount:Ljava/lang/String;
    .end local v10           #i:I
    .end local v11           #j:I
    .end local v17           #status:Landroid/content/SyncStatusInfo;
    :cond_4e5
    return-void
.end method

.method public getActiveSyncContext()Landroid/content/SyncManager$ActiveSyncContext;
    .registers 2

    .prologue
    .line 448
    iget-object v0, p0, Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    return-object v0
.end method

.method public getSyncStorageEngine()Landroid/content/SyncStorageEngine;
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    return-object v0
.end method

.method public getSyncingAccount()Ljava/lang/String;
    .registers 3

    .prologue
    .line 468
    iget-object v0, p0, Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    .line 469
    .local v0, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    if-eqz v0, :cond_9

    iget-object v1, v0, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncManager$SyncOperation;

    iget-object v1, v1, Landroid/content/SyncManager$SyncOperation;->account:Ljava/lang/String;

    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method maybeRescheduleSync(Landroid/content/SyncResult;Landroid/content/SyncManager$SyncOperation;)V
    .registers 14
    .parameter "syncResult"
    .parameter "previousSyncOperation"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const-string v10, "upload"

    const-string v6, "SyncManager"

    .line 836
    const-string v4, "SyncManager"

    const/4 v4, 0x3

    invoke-static {v6, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    .line 837
    .local v2, isLoggable:Z
    if-eqz v2, :cond_32

    .line 838
    const-string v4, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encountered error(s) during the sync: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_32
    invoke-virtual {p1}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 848
    if-eqz v2, :cond_41

    .line 849
    const-string v4, "SyncManager"

    const-string v4, "retrying sync operation immediately because even though it had an error it achieved some success"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_41
    invoke-direct {p0, p2}, Landroid/content/SyncManager;->rescheduleImmediately(Landroid/content/SyncManager$SyncOperation;)V

    .line 877
    :cond_44
    :goto_44
    return-void

    .line 853
    :cond_45
    iget-object v4, p2, Landroid/content/SyncManager$SyncOperation;->extras:Landroid/os/Bundle;

    const-string v5, "upload"

    invoke-virtual {v4, v10, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 855
    new-instance v3, Landroid/content/SyncManager$SyncOperation;

    invoke-direct {v3, p2}, Landroid/content/SyncManager$SyncOperation;-><init>(Landroid/content/SyncManager$SyncOperation;)V

    .line 856
    .local v3, newSyncOperation:Landroid/content/SyncManager$SyncOperation;
    iget-object v4, v3, Landroid/content/SyncManager$SyncOperation;->extras:Landroid/os/Bundle;

    const-string v5, "upload"

    invoke-virtual {v4, v10, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 857
    invoke-virtual {v3, v8, v9}, Landroid/content/SyncManager$SyncOperation;->setDelay(J)V

    .line 859
    const-string v4, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retrying sync operation as a two-way sync because an upload-only sync encountered an error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-virtual {p0, v3}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncManager$SyncOperation;)V

    goto :goto_44

    .line 863
    .end local v3           #newSyncOperation:Landroid/content/SyncManager$SyncOperation;
    :cond_7a
    invoke-virtual {p1}, Landroid/content/SyncResult;->hasSoftError()Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 864
    invoke-direct {p0, p2}, Landroid/content/SyncManager;->rescheduleWithDelay(Landroid/content/SyncManager$SyncOperation;)J

    move-result-wide v0

    .line 865
    .local v0, delay:J
    cmp-long v4, v0, v8

    if-ltz v4, :cond_44

    .line 866
    if-eqz v2, :cond_44

    .line 867
    const-string v4, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retrying sync operation in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "it encountered a soft error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 873
    .end local v0           #delay:J
    :cond_b3
    const-string v4, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not retrying sync operation because the error is a hard error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44
.end method

.method public scheduleLocalSync(Landroid/net/Uri;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 651
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 652
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "upload"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 653
    const-wide/16 v1, 0x7530

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/content/SyncManager;->scheduleSync(Landroid/net/Uri;Landroid/os/Bundle;J)V

    .line 654
    return-void
.end method

.method public scheduleSync(Landroid/net/Uri;Landroid/os/Bundle;J)V
    .registers 29
    .parameter "url"
    .parameter "extras"
    .parameter "delay"

    .prologue
    .line 534
    const-string v4, "SyncManager"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    .line 535
    .local v18, isLoggable:Z
    if-eqz v18, :cond_40

    .line 536
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scheduleSync: delay "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_58

    const-string v6, "(null)"

    :goto_27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", extras "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p2, :cond_5b

    const-string v6, "(null)"

    :goto_35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_40
    invoke-direct/range {p0 .. p0}, Landroid/content/SyncManager;->isSyncEnabled()Z

    move-result v4

    if-nez v4, :cond_5e

    .line 543
    if-eqz v18, :cond_4f

    .line 544
    const-string v4, "SyncManager"

    const-string v5, "not syncing because sync is disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_4f
    const-string v4, "Sync is disabled."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/SyncManager;->setStatusText(Ljava/lang/String;)V

    .line 618
    .end local p1
    :cond_57
    :goto_57
    return-void

    .restart local p1
    :cond_58
    move-object/from16 v6, p1

    .line 536
    goto :goto_27

    :cond_5b
    move-object/from16 v6, p2

    goto :goto_35

    .line 550
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mAccounts:[Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_6d

    const-string v4, "The accounts aren\'t known yet."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/SyncManager;->setStatusText(Ljava/lang/String;)V

    .line 551
    :cond_6d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/SyncManager;->mDataConnectionIsConnected:Z

    move v4, v0

    if-nez v4, :cond_7c

    const-string v4, "No data connection"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/SyncManager;->setStatusText(Ljava/lang/String;)V

    .line 552
    :cond_7c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/SyncManager;->mStorageIsLow:Z

    move v4, v0

    if-eqz v4, :cond_8b

    const-string v4, "Memory low"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/SyncManager;->setStatusText(Ljava/lang/String;)V

    .line 554
    :cond_8b
    if-nez p2, :cond_92

    new-instance p2, Landroid/os/Bundle;

    .end local p2
    invoke-direct/range {p2 .. p2}, Landroid/os/Bundle;-><init>()V

    .line 556
    .restart local p2
    :cond_92
    const-string v4, "expedited"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 557
    .local v14, expedited:Ljava/lang/Boolean;
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 558
    const-wide/16 p3, -0x1

    .line 562
    :cond_a9
    const-string v4, "account"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 563
    .local v11, accountFromExtras:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10c

    .line 564
    const/4 v4, 0x1

    new-array v12, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v11, v12, v4

    .line 585
    .local v12, accounts:[Ljava/lang/String;
    :cond_be
    const-string v4, "upload"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 586
    .local v23, uploadOnly:Z
    const-string v4, "force"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 589
    .local v15, force:Z
    if-eqz v23, :cond_134

    .line 590
    const/4 v6, 0x1

    .line 601
    .local v6, source:I
    :goto_d7
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v20, names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v22, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/content/SyncManager;->populateProvidersList(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)V

    .line 605
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v21

    .line 606
    .local v21, numProviders:I
    const/16 v16, 0x0

    .end local p1
    .local v16, i:I
    :goto_f2
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_57

    .line 607
    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    move v4, v0

    if-nez v4, :cond_13e

    .line 606
    :cond_109
    add-int/lit8 v16, v16, 0x1

    goto :goto_f2

    .line 568
    .end local v6           #source:I
    .end local v12           #accounts:[Ljava/lang/String;
    .end local v15           #force:Z
    .end local v16           #i:I
    .end local v20           #names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v21           #numProviders:I
    .end local v22           #providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v23           #uploadOnly:Z
    .restart local p1
    :cond_10c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/SyncManager;->mAccounts:[Ljava/lang/String;

    move-object v12, v0

    .line 569
    .restart local v12       #accounts:[Ljava/lang/String;
    if-nez v12, :cond_11e

    .line 571
    if-eqz v18, :cond_57

    .line 572
    const-string v4, "SyncManager"

    const-string v5, "scheduleSync: no accounts yet, dropping"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_57

    .line 576
    :cond_11e
    array-length v4, v12

    if-nez v4, :cond_be

    .line 577
    if-eqz v18, :cond_12a

    .line 578
    const-string v4, "SyncManager"

    const-string v5, "scheduleSync: no accounts configured, dropping"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_12a
    const-string v4, "No accounts are configured."

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/SyncManager;->setStatusText(Ljava/lang/String;)V

    goto/16 :goto_57

    .line 591
    .restart local v15       #force:Z
    .restart local v23       #uploadOnly:Z
    :cond_134
    if-eqz v15, :cond_138

    .line 592
    const/4 v6, 0x3

    .restart local v6       #source:I
    goto :goto_d7

    .line 593
    .end local v6           #source:I
    :cond_138
    if-nez p1, :cond_13c

    .line 594
    const/4 v6, 0x2

    .restart local v6       #source:I
    goto :goto_d7

    .line 598
    .end local v6           #source:I
    :cond_13c
    const/4 v6, 0x0

    .restart local v6       #source:I
    goto :goto_d7

    .line 608
    .end local p1
    .restart local v16       #i:I
    .restart local v20       #names:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21       #numProviders:I
    .restart local v22       #providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :cond_13e
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 609
    .local v7, name:Ljava/lang/String;
    move-object v13, v12

    .local v13, arr$:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_14f
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_109

    aget-object v5, v13, v17

    .line 610
    .local v5, account:Ljava/lang/String;
    new-instance v4, Landroid/content/SyncManager$SyncOperation;

    move-object/from16 v8, p2

    move-wide/from16 v9, p3

    invoke-direct/range {v4 .. v10}, Landroid/content/SyncManager$SyncOperation;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;J)V

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/SyncManager;->scheduleSyncOperation(Landroid/content/SyncManager$SyncOperation;)V

    .line 613
    const-string v4, "calendar"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_109

    .line 609
    add-int/lit8 v17, v17, 0x1

    goto :goto_14f
.end method

.method public scheduleSyncOperation(Landroid/content/SyncManager$SyncOperation;)V
    .registers 15
    .parameter "syncOperation"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v7, "SyncManager"

    .line 789
    iget-wide v5, p1, Landroid/content/SyncManager$SyncOperation;->delay:J

    cmp-long v5, v5, v11

    if-gez v5, :cond_64

    move v2, v9

    .line 790
    .local v2, expedited:Z
    :goto_e
    iget-object v1, p0, Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;

    .line 791
    .local v1, activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    if-eqz v2, :cond_34

    if-eqz v1, :cond_34

    .line 792
    iget-object v5, v1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncManager$SyncOperation;

    iget-wide v5, v5, Landroid/content/SyncManager$SyncOperation;->delay:J

    cmp-long v5, v5, v11

    if-gez v5, :cond_66

    move v0, v9

    .line 793
    .local v0, activeIsExpedited:Z
    :goto_1d
    iget-object v5, v1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncManager$SyncOperation;

    iget-object v5, v5, Landroid/content/SyncManager$SyncOperation;->key:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/SyncManager$SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 798
    .local v3, hasSameKey:Z
    if-nez v0, :cond_34

    if-nez v3, :cond_34

    .line 799
    iget-object v5, v1, Landroid/content/SyncManager$ActiveSyncContext;->mSyncOperation:Landroid/content/SyncManager$SyncOperation;

    invoke-direct {p0, v5}, Landroid/content/SyncManager;->rescheduleImmediately(Landroid/content/SyncManager$SyncOperation;)V

    .line 800
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5}, Landroid/content/SyncManager;->sendSyncFinishedOrCanceledMessage(Landroid/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    .line 806
    .end local v0           #activeIsExpedited:Z
    .end local v3           #hasSameKey:Z
    :cond_34
    iget-object v5, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncManager$SyncQueue;

    monitor-enter v5

    .line 807
    :try_start_37
    iget-object v6, p0, Landroid/content/SyncManager;->mSyncQueue:Landroid/content/SyncManager$SyncQueue;

    invoke-virtual {v6, p1}, Landroid/content/SyncManager$SyncQueue;->add(Landroid/content/SyncManager$SyncOperation;)Z

    move-result v4

    .line 808
    .local v4, operationEnqueued:Z
    monitor-exit v5
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_68

    .line 810
    if-eqz v4, :cond_6b

    .line 811
    const-string v5, "SyncManager"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 812
    const-string v5, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scheduleSyncOperation: enqueued "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_60
    invoke-direct {p0}, Landroid/content/SyncManager;->sendCheckAlarmsMessage()V

    .line 821
    :cond_63
    :goto_63
    return-void

    .end local v1           #activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    .end local v2           #expedited:Z
    .end local v4           #operationEnqueued:Z
    :cond_64
    move v2, v8

    .line 789
    goto :goto_e

    .restart local v1       #activeSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    .restart local v2       #expedited:Z
    :cond_66
    move v0, v8

    .line 792
    goto :goto_1d

    .line 808
    :catchall_68
    move-exception v6

    :try_start_69
    monitor-exit v5
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v6

    .line 816
    .restart local v4       #operationEnqueued:Z
    :cond_6b
    const-string v5, "SyncManager"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 817
    const-string v5, "SyncManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scheduleSyncOperation: dropping duplicate sync operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63
.end method

.method public startSync(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 5
    .parameter "url"
    .parameter "extras"

    .prologue
    .line 678
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/content/SyncManager;->scheduleSync(Landroid/net/Uri;Landroid/os/Bundle;J)V

    .line 679
    return-void
.end method

.method public updateHeartbeatTime()V
    .registers 3

    .prologue
    .line 682
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncManager;->mHeartbeatTime:J

    .line 683
    iget-object v0, p0, Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v0}, Landroid/content/SyncStorageEngine;->reportActiveChange()V

    .line 684
    return-void
.end method
