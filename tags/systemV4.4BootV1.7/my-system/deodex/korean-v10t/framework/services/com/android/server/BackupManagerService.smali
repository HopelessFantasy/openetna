.class Lcom/android/server/BackupManagerService;
.super Landroid/backup/IBackupManager$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$RestoreSession;,
        Lcom/android/server/BackupManagerService$PerformClearThread;,
        Lcom/android/server/BackupManagerService$PerformRestoreThread;,
        Lcom/android/server/BackupManagerService$PerformBackupThread;,
        Lcom/android/server/BackupManagerService$ClearDataObserver;,
        Lcom/android/server/BackupManagerService$BackupHandler;,
        Lcom/android/server/BackupManagerService$RunBackupReceiver;,
        Lcom/android/server/BackupManagerService$ClearParams;,
        Lcom/android/server/BackupManagerService$RestoreParams;,
        Lcom/android/server/BackupManagerService$BackupRequest;
    }
.end annotation


# static fields
.field private static final BACKUP_INTERVAL:J = 0x36ee80L

.field private static final DEBUG:Z = true

.field private static final FIRST_BACKUP_INTERVAL:J = 0x2932e00L

.field private static final MSG_RUN_BACKUP:I = 0x1

.field private static final MSG_RUN_CLEAR:I = 0x4

.field private static final MSG_RUN_FULL_BACKUP:I = 0x2

.field private static final MSG_RUN_RESTORE:I = 0x3

.field private static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field private static final RUN_BACKUP_ACTION:Ljava/lang/String; = "_backup_run_"

.field private static final TAG:Ljava/lang/String; = "BackupManagerService"

.field static final TIMEOUT_INTERVAL:J = 0x2710L


# instance fields
.field private mActiveRestoreSession:Lcom/android/server/BackupManagerService$RestoreSession;

.field private mActivityManager:Landroid/app/IActivityManager;

.field private final mAgentConnectLock:Ljava/lang/Object;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

.field private final mBackupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBaseStateDir:Ljava/io/File;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClearDataLock:Ljava/lang/Object;

.field private volatile mClearingData:Z

.field private mConnectedAgent:Landroid/app/IBackupAgent;

.field private volatile mConnecting:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentTransport:Ljava/lang/String;

.field private mDataDir:Ljava/io/File;

.field private mEnabled:Z

.field mGoogleConnection:Landroid/content/ServiceConnection;

.field private mGoogleTransport:Lcom/android/internal/backup/IBackupTransport;

.field private mJournal:Ljava/io/File;

.field private mJournalDir:Ljava/io/File;

.field private mJournalStream:Ljava/io/RandomAccessFile;

.field private mLocalTransport:Lcom/android/internal/backup/IBackupTransport;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPendingBackups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            "Lcom/android/server/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProvisioned:Z

.field private final mQueueLock:Ljava/lang/Object;

.field private mRunBackupFilter:Landroid/content/IntentFilter;

.field private mRunBackupIntent:Landroid/app/PendingIntent;

.field private mRunBackupReceiver:Landroid/content/BroadcastReceiver;

.field private final mTransports:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/backup/IBackupTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mWakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 15
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v12, "backup"

    const-string v11, "_backup_run_"

    .line 185
    invoke-direct {p0}, Landroid/backup/IBackupManager$Stub;-><init>()V

    .line 106
    new-instance v5, Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-direct {v5, p0, v8}, Lcom/android/server/BackupManagerService$BackupHandler;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    .line 111
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 128
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 135
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 141
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 146
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 150
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    .line 333
    new-instance v5, Lcom/android/server/BackupManagerService$1;

    invoke-direct {v5, p0}, Lcom/android/server/BackupManagerService$1;-><init>(Lcom/android/server/BackupManagerService;)V

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 373
    new-instance v5, Lcom/android/server/BackupManagerService$2;

    invoke-direct {v5, p0}, Lcom/android/server/BackupManagerService$2;-><init>(Lcom/android/server/BackupManagerService;)V

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mGoogleConnection:Landroid/content/ServiceConnection;

    .line 186
    iput-object p1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 188
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 190
    const-string v5, "alarm"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 191
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "backup_enabled"

    invoke-static {v5, v6, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_171

    move v0, v9

    .line 197
    .local v0, areEnabled:Z
    :goto_78
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "backup_provisioned"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_174

    move v5, v9

    :goto_85
    iput-boolean v5, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    .line 199
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "backup"

    invoke-direct {v5, v6, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 200
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mDataDir:Ljava/io/File;

    .line 202
    new-instance v5, Lcom/android/server/BackupManagerService$RunBackupReceiver;

    invoke-direct {v5, p0, v8}, Lcom/android/server/BackupManagerService$RunBackupReceiver;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mRunBackupFilter:Landroid/content/IntentFilter;

    .line 204
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mRunBackupFilter:Landroid/content/IntentFilter;

    const-string v6, "_backup_run_"

    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mRunBackupFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    new-instance v1, Landroid/content/Intent;

    const-string v5, "_backup_run_"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v1, backupIntent:Landroid/content/Intent;
    const/high16 v5, 0x4000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 211
    invoke-static {p1, v9, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    .line 214
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string v7, "pending"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    .line 215
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 216
    invoke-direct {p0}, Lcom/android/server/BackupManagerService;->makeJournalLocked()V

    .line 221
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v5

    .line 222
    const/4 v6, 0x0

    :try_start_df
    invoke-virtual {p0, v6}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLocked(Ljava/lang/String;)V

    .line 223
    monitor-exit v5
    :try_end_e3
    .catchall {:try_start_df .. :try_end_e3} :catchall_177

    .line 228
    new-instance v5, Lcom/android/internal/backup/LocalTransport;

    invoke-direct {v5, p1}, Lcom/android/internal/backup/LocalTransport;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mLocalTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 229
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/android/internal/backup/LocalTransport;

    invoke-direct {v4, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v4, localName:Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mLocalTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-direct {p0, v5, v6}, Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    .line 232
    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mGoogleTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "backup_transport"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 235
    const-string v5, ""

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_114

    .line 236
    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 238
    :cond_114
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting with transport "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.google.android.backup"

    const-string v8, "com.google.android.backup.BackupTransportService"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 246
    .local v3, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mGoogleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v3, v5, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 250
    invoke-direct {p0}, Lcom/android/server/BackupManagerService;->parseLeftoverJournals()V

    .line 254
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 255
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v5, "package"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 258
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v6, "backup"

    invoke-virtual {v5, v9, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 264
    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService;->setBackupEnabled(Z)V

    .line 265
    return-void

    .end local v0           #areEnabled:Z
    .end local v1           #backupIntent:Landroid/content/Intent;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #localName:Landroid/content/ComponentName;
    :cond_171
    move v0, v10

    .line 194
    goto/16 :goto_78

    .restart local v0       #areEnabled:Z
    :cond_174
    move v5, v10

    .line 197
    goto/16 :goto_85

    .line 223
    .restart local v1       #backupIntent:Landroid/content/Intent;
    :catchall_177
    move-exception v6

    :try_start_178
    monitor-exit v5
    :try_end_179
    .catchall {:try_start_178 .. :try_end_179} :catchall_177

    throw v6
.end method

.method static synthetic access$1000(Lcom/android/server/BackupManagerService;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/BackupManagerService;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/BackupManagerService;)Ljava/io/RandomAccessFile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mJournalStream:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/BackupManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/BackupManagerService;->makeJournalLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/BackupManagerService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/BackupManagerService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/server/BackupManagerService;->mClearingData:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/BackupManagerService;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/BackupManagerService;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/BackupManagerService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/BackupManagerService;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mDataDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/BackupManagerService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/BackupManagerService;)Lcom/android/server/BackupManagerService$RestoreSession;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$RestoreSession;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$RestoreSession;)Lcom/android/server/BackupManagerService$RestoreSession;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$RestoreSession;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/BackupManagerService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/BackupManagerService;)Lcom/android/server/BackupManagerService$BackupHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/BackupManagerService;)Landroid/util/SparseArray;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/BackupManagerService;)Lcom/android/internal/backup/IBackupTransport;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mGoogleTransport:Lcom/android/internal/backup/IBackupTransport;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/BackupManagerService;->mGoogleTransport:Lcom/android/internal/backup/IBackupTransport;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/BackupManagerService;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/BackupManagerService;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    return-object v0
.end method

.method private addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, targetPkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v7, "BackupManagerService"

    .line 472
    const-string v5, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " backup participants:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 474
    .local v1, p:Landroid/content/pm/PackageInfo;
    const-string v5, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " agent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 479
    .end local v1           #p:Landroid/content/pm/PackageInfo;
    :cond_69
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6d
    :goto_6d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 480
    .local v2, pkg:Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_83

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 481
    :cond_83
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 482
    .local v4, uid:I
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 483
    .local v3, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v3, :cond_9b

    .line 484
    new-instance v3, Ljava/util/HashSet;

    .end local v3           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 485
    .restart local v3       #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 487
    :cond_9b
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 490
    .end local v2           #pkg:Landroid/content/pm/PackageInfo;
    .end local v3           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v4           #uid:I
    :cond_a1
    return-void
.end method

.method private allAgentPackages()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    const/16 v3, 0x40

    .line 546
    .local v3, flags:I
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 547
    .local v4, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 548
    .local v0, N:I
    const/4 v5, 0x1

    sub-int v1, v0, v5

    .end local p0
    .local v1, a:I
    :goto_f
    if-ltz v1, :cond_29

    .line 549
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 550
    .local v2, app:Landroid/content/pm/ApplicationInfo;
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_23

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v5, :cond_26

    .line 552
    :cond_23
    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 548
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 555
    .end local v2           #app:Landroid/content/pm/ApplicationInfo;
    :cond_29
    return-object v4
.end method

.method private getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .registers 7
    .parameter "transportName"

    .prologue
    .line 575
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v1

    .line 576
    :try_start_3
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/backup/IBackupTransport;

    .line 577
    .local v0, transport:Lcom/android/internal/backup/IBackupTransport;
    if-nez v0, :cond_25

    .line 578
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested unavailable transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_25
    monitor-exit v1

    return-object v0

    .line 581
    .end local v0           #transport:Lcom/android/internal/backup/IBackupTransport;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v2
.end method

.method private makeJournalLocked()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 286
    :try_start_1
    const-string v1, "journal"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    .line 287
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    const-string v3, "rwd"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/BackupManagerService;->mJournalStream:Ljava/io/RandomAccessFile;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_17} :catch_18

    .line 293
    :goto_17
    return-void

    .line 288
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 289
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Unable to write backup journals"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iput-object v4, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    .line 291
    iput-object v4, p0, Lcom/android/server/BackupManagerService;->mJournalStream:Ljava/io/RandomAccessFile;

    goto :goto_17
.end method

.method private parseLeftoverJournals()V
    .registers 11

    .prologue
    const-string v7, "BackupManagerService"

    .line 296
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    if-eqz v7, :cond_5a

    .line 297
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 298
    .local v0, allJournals:[Ljava/io/File;
    move-object v1, v0

    .local v1, arr$:[Ljava/io/File;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_f
    if-ge v3, v5, :cond_5a

    aget-object v2, v1, v3

    .line 299
    .local v2, f:Ljava/io/File;
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    invoke-virtual {v2, v7}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v7

    if-eqz v7, :cond_4d

    .line 304
    :try_start_1b
    const-string v7, "BackupManagerService"

    const-string v8, "Found stale backup journal, scheduling:"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v7, "r"

    invoke-direct {v4, v2, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 307
    .local v4, in:Ljava/io/RandomAccessFile;
    :goto_29
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 308
    .local v6, packageName:Ljava/lang/String;
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    + "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p0, v6}, Lcom/android/server/BackupManagerService;->dataChanged(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_1b .. :try_end_48} :catchall_55
    .catch Ljava/io/EOFException; {:try_start_1b .. :try_end_48} :catch_49
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_48} :catch_50

    goto :goto_29

    .line 311
    .end local v4           #in:Ljava/io/RandomAccessFile;
    .end local v6           #packageName:Ljava/lang/String;
    :catch_49
    move-exception v7

    .line 317
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 298
    :cond_4d
    :goto_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 313
    :catch_50
    move-exception v7

    .line 317
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_4d

    :catchall_55
    move-exception v7

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v7

    .line 322
    .end local v0           #allJournals:[Ljava/io/File;
    .end local v1           #arr$:[Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_5a
    return-void
.end method

.method private registerTransport(Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .registers 7
    .parameter "name"
    .parameter "transport"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v0

    .line 327
    :try_start_3
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    monitor-exit v0

    .line 330
    return-void

    .line 329
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private removePackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .registers 13
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, agents:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v9, "BackupManagerService"

    .line 515
    const-string v7, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removePackageParticipantsLockedInner ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") removing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " entries"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 518
    .local v3, p:Landroid/content/pm/PackageInfo;
    const-string v7, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 521
    .end local v3           #p:Landroid/content/pm/PackageInfo;
    :cond_57
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1           #i$:Ljava/util/Iterator;
    :cond_5b
    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 522
    .local v4, pkg:Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_71

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 523
    :cond_71
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 524
    .local v6, uid:I
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 525
    .local v5, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v5, :cond_5b

    .line 528
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_83
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 529
    .local v0, entry:Landroid/content/pm/ApplicationInfo;
    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 530
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 534
    .end local v0           #entry:Landroid/content/pm/ApplicationInfo;
    :cond_9c
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v7

    if-nez v7, :cond_5b

    .line 535
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_5b

    .line 540
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #pkg:Landroid/content/pm/PackageInfo;
    .end local v5           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v6           #uid:I
    :cond_a8
    return-void
.end method

.method private signaturesMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .registers 13
    .parameter "storedSigs"
    .parameter "deviceSigs"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 846
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signaturesMatch(): stored="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " device="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    if-eqz p1, :cond_29

    array-length v5, p1

    if-nez v5, :cond_30

    :cond_29
    if-eqz p2, :cond_2e

    array-length v5, p2

    if-nez v5, :cond_30

    :cond_2e
    move v5, v9

    .line 874
    :goto_2f
    return v5

    .line 852
    :cond_30
    if-eqz p1, :cond_34

    if-nez p2, :cond_36

    :cond_34
    move v5, v8

    .line 853
    goto :goto_2f

    .line 859
    :cond_36
    array-length v4, p1

    .line 860
    .local v4, nStored:I
    array-length v3, p2

    .line 862
    .local v3, nDevice:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_39
    if-ge v0, v4, :cond_54

    .line 863
    const/4 v2, 0x0

    .line 864
    .local v2, match:Z
    const/4 v1, 0x0

    .local v1, j:I
    :goto_3d
    if-ge v1, v3, :cond_4a

    .line 865
    aget-object v5, p1, v0

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 866
    const/4 v2, 0x1

    .line 870
    :cond_4a
    if-nez v2, :cond_51

    move v5, v8

    .line 871
    goto :goto_2f

    .line 864
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 862
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .end local v1           #j:I
    .end local v2           #match:Z
    :cond_54
    move v5, v9

    .line 874
    goto :goto_2f
.end method

.method private startBackupAlarmsLocked(J)V
    .registers 10
    .parameter "delayBeforeFirstBackup"

    .prologue
    .line 1366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v2, v0, p1

    .line 1367
    .local v2, when:J
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    const-wide/32 v4, 0x36ee80

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1369
    return-void
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .registers 6
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 1243
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mJournalStream:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_a

    .line 1245
    :try_start_5
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mJournalStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_b

    .line 1252
    :cond_a
    :goto_a
    return-void

    .line 1246
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1247
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Error writing to backup journal"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mJournalStream:Ljava/io/RandomAccessFile;

    .line 1249
    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    goto :goto_a
.end method


# virtual methods
.method addPackageParticipantsLocked(Ljava/lang/String;)V
    .registers 6
    .parameter "packageName"

    .prologue
    .line 464
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPackageParticipantsLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-direct {p0}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    .line 466
    .local v0, targetApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 467
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 8
    .parameter "packageName"
    .parameter "agentBinder"

    .prologue
    const-string v1, "BackupManagerService"

    .line 1429
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1430
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_3f

    .line 1431
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "agentConnected pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " agent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v0

    .line 1433
    .local v0, agent:Landroid/app/IBackupAgent;
    iput-object v0, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 1434
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    .line 1439
    .end local v0           #agent:Landroid/app/IBackupAgent;
    :goto_38
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1440
    monitor-exit v1

    .line 1441
    return-void

    .line 1436
    :cond_3f
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-system process uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " claiming agent connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 1440
    :catchall_62
    move-exception v2

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_5 .. :try_end_64} :catchall_62

    throw v2
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .registers 6
    .parameter "packageName"

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1449
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_18

    .line 1450
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 1451
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    .line 1456
    :goto_11
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1457
    monitor-exit v0

    .line 1458
    return-void

    .line 1453
    :cond_18
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system process uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " claiming agent disconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1457
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public backupNow()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v4, "BackupManagerService"

    .line 1304
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "backupNow"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string v1, "BackupManagerService"

    const-string v1, "Scheduling immediate backup pass"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1309
    :try_start_15
    const-string v2, "BackupManagerService"

    const-string v3, "sending immediate backup broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_2d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_15 .. :try_end_21} :catch_23

    .line 1315
    :goto_21
    :try_start_21
    monitor-exit v1

    .line 1316
    return-void

    .line 1311
    :catch_23
    move-exception v2

    move-object v0, v2

    .line 1313
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "BackupManagerService"

    const-string v3, "run-backup intent cancelled!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 1315
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :catchall_2d
    move-exception v2

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public beginRestoreSession(Ljava/lang/String;)Landroid/backup/IRestoreSession;
    .registers 5
    .parameter "transport"

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "beginRestoreSession"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    monitor-enter p0

    .line 1465
    :try_start_a
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$RestoreSession;

    if-eqz v0, :cond_18

    .line 1466
    const-string v0, "BackupManagerService"

    const-string v1, "Restore session requested but one already active"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    const/4 v0, 0x0

    monitor-exit p0

    .line 1471
    :goto_17
    return-object v0

    .line 1469
    :cond_18
    new-instance v0, Lcom/android/server/BackupManagerService$RestoreSession;

    invoke-direct {v0, p0, p1}, Lcom/android/server/BackupManagerService$RestoreSession;-><init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$RestoreSession;

    .line 1470
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_23

    .line 1471
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$RestoreSession;

    goto :goto_17

    .line 1470
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;
    .registers 14
    .parameter "app"
    .parameter "mode"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v4, "BackupManagerService"

    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, agent:Landroid/app/IBackupAgent;
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v4

    .line 588
    const/4 v5, 0x1

    :try_start_9
    iput-boolean v5, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    .line 589
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_77

    .line 591
    :try_start_e
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v5, p1, p2}, Landroid/app/IActivityManager;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 592
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "awaiting agent for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    add-long v2, v5, v7

    .line 598
    .local v2, timeoutMark:J
    :goto_36
    iget-boolean v5, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    if-eqz v5, :cond_53

    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_53

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_41
    .catchall {:try_start_e .. :try_end_41} :catchall_77
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_41} :catch_7a

    move-result-wide v5

    cmp-long v5, v5, v2

    if-gez v5, :cond_53

    .line 600
    :try_start_46
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_77
    .catch Ljava/lang/InterruptedException; {:try_start_46 .. :try_end_4d} :catch_4e
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4d} :catch_7a

    goto :goto_36

    .line 601
    :catch_4e
    move-exception v5

    move-object v1, v5

    .line 603
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_50
    monitor-exit v4
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_77

    move-object v4, v9

    .line 618
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #timeoutMark:J
    :goto_52
    return-object v4

    .line 608
    .restart local v2       #timeoutMark:J
    :cond_53
    :try_start_53
    iget-boolean v5, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    if-ne v5, v10, :cond_72

    .line 609
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timeout waiting for agent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_53 .. :try_end_6f} :catchall_77
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_6f} :catch_7a

    .line 610
    :try_start_6f
    monitor-exit v4
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_77

    move-object v4, v9

    goto :goto_52

    .line 612
    :cond_72
    :try_start_72
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_74
    .catchall {:try_start_72 .. :try_end_74} :catchall_77
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_74} :catch_7a

    .line 617
    .end local v2           #timeoutMark:J
    :cond_74
    :goto_74
    :try_start_74
    monitor-exit v4

    move-object v4, v0

    .line 618
    goto :goto_52

    .line 617
    :catchall_77
    move-exception v5

    monitor-exit v4
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_77

    throw v5

    .line 614
    :catch_7a
    move-exception v5

    goto :goto_74
.end method

.method clearApplicationDataSynchronous(Ljava/lang/String;)V
    .registers 12
    .parameter "packageName"

    .prologue
    const-string v8, "BackupManagerService"

    .line 625
    :try_start_2
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 626
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_4b

    .line 627
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allowClearUserData=false so not wiping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_29} :catch_2a

    .line 653
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_29
    return-void

    .line 631
    :catch_2a
    move-exception v5

    move-object v0, v5

    .line 632
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tried to clear data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 636
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #info:Landroid/content/pm/PackageInfo;
    :cond_4b
    new-instance v2, Lcom/android/server/BackupManagerService$ClearDataObserver;

    invoke-direct {v2, p0}, Lcom/android/server/BackupManagerService$ClearDataObserver;-><init>(Lcom/android/server/BackupManagerService;)V

    .line 638
    .local v2, observer:Lcom/android/server/BackupManagerService$ClearDataObserver;
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    monitor-enter v5

    .line 639
    const/4 v6, 0x1

    :try_start_54
    iput-boolean v6, p0, Lcom/android/server/BackupManagerService;->mClearingData:Z

    .line 640
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, p1, v2}, Landroid/content/pm/PackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long v3, v6, v8

    .line 644
    .local v3, timeoutMark:J
    :goto_63
    iget-boolean v6, p0, Lcom/android/server/BackupManagerService;->mClearingData:Z

    if-eqz v6, :cond_80

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_6a
    .catchall {:try_start_54 .. :try_end_6a} :catchall_7d

    move-result-wide v6

    cmp-long v6, v6, v3

    if-gez v6, :cond_80

    .line 646
    :try_start_6f
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_7d
    .catch Ljava/lang/InterruptedException; {:try_start_6f .. :try_end_76} :catch_77

    goto :goto_63

    .line 647
    :catch_77
    move-exception v6

    move-object v0, v6

    .line 649
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v6, 0x0

    :try_start_7a
    iput-boolean v6, p0, Lcom/android/server/BackupManagerService;->mClearingData:Z

    goto :goto_63

    .line 652
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v3           #timeoutMark:J
    :catchall_7d
    move-exception v6

    monitor-exit v5
    :try_end_7f
    .catchall {:try_start_7a .. :try_end_7f} :catchall_7d

    throw v6

    .restart local v3       #timeoutMark:J
    :cond_80
    :try_start_80
    monitor-exit v5
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7d

    goto :goto_29
.end method

.method public clearBackupData(Ljava/lang/String;)V
    .registers 16
    .parameter "packageName"

    .prologue
    const-string v13, "BackupManagerService"

    .line 1256
    const-string v9, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "clearBackupData() of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :try_start_1a
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v10, 0x40

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_21} :catch_81

    move-result-object v6

    .line 1268
    .local v6, info:Landroid/content/pm/PackageInfo;
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_a2

    .line 1270
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 1286
    .local v2, apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    :cond_41
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_45
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_80

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1287
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 1288
    const-string v9, "BackupManagerService"

    const-string v9, "Found the app - running clear process"

    invoke-static {v13, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1291
    :try_start_63
    iget-object v10, p0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1292
    iget-object v10, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v11, 0x4

    new-instance v12, Lcom/android/server/BackupManagerService$ClearParams;

    iget-object v13, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v13

    invoke-direct {v12, p0, v13, v6}, Lcom/android/server/BackupManagerService$ClearParams;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v10, v11, v12}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 1294
    .local v7, msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v10, v7}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1295
    monitor-exit v9
    :try_end_80
    .catchall {:try_start_63 .. :try_end_80} :catchall_c7

    .line 1299
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    .end local v2           #apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #info:Landroid/content/pm/PackageInfo;
    .end local v7           #msg:Landroid/os/Message;
    :cond_80
    :goto_80
    return-void

    .line 1260
    :catch_81
    move-exception v9

    move-object v3, v9

    .line 1261
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No such package \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' - not clearing backup data"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 1274
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #info:Landroid/content/pm/PackageInfo;
    :cond_a2
    const-string v9, "BackupManagerService"

    const-string v9, "Privileged caller, allowing clear of other apps"

    invoke-static {v13, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1276
    .restart local v2       #apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1277
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_b5
    if-ge v4, v0, :cond_41

    .line 1278
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashSet;

    .line 1279
    .local v8, s:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v8, :cond_c4

    .line 1280
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1277
    :cond_c4
    add-int/lit8 v4, v4, 0x1

    goto :goto_b5

    .line 1295
    .end local v0           #N:I
    .end local v4           #i:I
    .end local v8           #s:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v1       #app:Landroid/content/pm/ApplicationInfo;
    .restart local v5       #i$:Ljava/util/Iterator;
    :catchall_c7
    move-exception v10

    :try_start_c8
    monitor-exit v9
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    throw v10
.end method

.method public dataChanged(Ljava/lang/String;)V
    .registers 16
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1195
    iget-object v10, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_b1

    .line 1197
    iget-object v10, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashSet;

    .line 1210
    .local v9, targets:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    :cond_1f
    if-eqz v9, :cond_d1

    .line 1211
    iget-object v10, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1213
    :try_start_24
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_cf

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1216
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_28

    .line 1219
    new-instance v7, Lcom/android/server/BackupManagerService$BackupRequest;

    const/4 v11, 0x0

    invoke-direct {v7, p0, v1, v11}, Lcom/android/server/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/BackupManagerService;Landroid/content/pm/ApplicationInfo;Z)V

    .line 1220
    .local v7, req:Lcom/android/server/BackupManagerService$BackupRequest;
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v11, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_28

    .line 1224
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V

    .line 1227
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v6

    .line 1228
    .local v6, numKeys:I
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Now awaiting backup for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " participants:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object v11, p0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_7b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_28

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 1230
    .local v2, b:Lcom/android/server/BackupManagerService$BackupRequest;
    const-string v11, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    + "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " agent="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    .line 1236
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    .end local v2           #b:Lcom/android/server/BackupManagerService$BackupRequest;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #numKeys:I
    .end local v7           #req:Lcom/android/server/BackupManagerService$BackupRequest;
    :catchall_ae
    move-exception v11

    monitor-exit v10
    :try_end_b0
    .catchall {:try_start_24 .. :try_end_b0} :catchall_ae

    throw v11

    .line 1201
    .end local v9           #targets:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    :cond_b1
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1202
    .restart local v9       #targets:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v10, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1203
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_bd
    if-ge v3, v0, :cond_1f

    .line 1204
    iget-object v10, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashSet;

    .line 1205
    .local v8, s:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v8, :cond_cc

    .line 1206
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1203
    :cond_cc
    add-int/lit8 v3, v3, 0x1

    goto :goto_bd

    .line 1236
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v8           #s:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    :cond_cf
    :try_start_cf
    monitor-exit v10
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ae

    .line 1240
    :goto_d0
    return-void

    .line 1238
    :cond_d1
    const-string v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dataChanged but no participant pkg=\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 22
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object v15, v0

    monitor-enter v15

    .line 1549
    :try_start_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1551
    .local v8, oldId:J
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Backup Manager is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8f

    const-string v17, "enabled"

    :goto_1f
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " / "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    move/from16 v17, v0

    if-nez v17, :cond_92

    const-string v17, "not "

    :goto_33
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "provisioned"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1553
    const-string v16, "Available transports:"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1554
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v4

    .local v4, arr$:[Ljava/lang/String;
    array-length v7, v4

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_57
    if-ge v6, v7, :cond_9a

    aget-object v13, v4, v6

    .line 1555
    .local v13, t:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_95

    const-string v16, "  * "

    move-object/from16 v10, v16

    .line 1556
    .local v10, pad:Ljava/lang/String;
    :goto_6e
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1554
    add-int/lit8 v6, v6, 0x1

    goto :goto_57

    .line 1551
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v10           #pad:Ljava/lang/String;
    .end local v13           #t:Ljava/lang/String;
    :cond_8f
    const-string v17, "disabled"

    goto :goto_1f

    :cond_92
    const-string v17, ""

    goto :goto_33

    .line 1555
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v13       #t:Ljava/lang/String;
    :cond_95
    const-string v16, "    "

    move-object/from16 v10, v16

    goto :goto_6e

    .line 1558
    .end local v13           #t:Ljava/lang/String;
    :cond_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1559
    .local v2, N:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Participants: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1560
    const/4 v5, 0x0

    .end local v6           #i$:I
    .local v5, i:I
    :goto_c2
    if-ge v5, v2, :cond_124

    .line 1561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 1562
    .local v14, uid:I
    const-string v16, "  uid: "

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1563
    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashSet;

    .line 1565
    .local v11, participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_f3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_121

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 1566
    .local v3, app:Landroid/content/pm/ApplicationInfo;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "    "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f3

    .line 1575
    .end local v2           #N:I
    .end local v3           #app:Landroid/content/pm/ApplicationInfo;
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #len$:I
    .end local v8           #oldId:J
    .end local v11           #participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v14           #uid:I
    :catchall_11e
    move-exception v16

    monitor-exit v15
    :try_end_120
    .catchall {:try_start_6 .. :try_end_120} :catchall_11e

    throw v16

    .line 1560
    .restart local v2       #N:I
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v7       #len$:I
    .restart local v8       #oldId:J
    .restart local v11       #participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v14       #uid:I
    :cond_121
    add-int/lit8 v5, v5, 0x1

    goto :goto_c2

    .line 1569
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v11           #participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v14           #uid:I
    :cond_124
    :try_start_124
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Pending: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_156
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_180

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 1571
    .local v12, req:Lcom/android/server/BackupManagerService$BackupRequest;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "    "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_156

    .line 1574
    .end local v12           #req:Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_180
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1575
    monitor-exit v15
    :try_end_184
    .catchall {:try_start_124 .. :try_end_184} :catchall_11e

    .line 1576
    return-void
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getCurrentTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "... getCurrentTransport() returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    return-object v0
.end method

.method public isBackupEnabled()Z
    .registers 4

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "isBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    return v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .registers 8

    .prologue
    .line 1387
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    const-string v6, "listAllTransports"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const/4 v3, 0x0

    .line 1390
    .local v3, list:[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1391
    .local v2, known:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1392
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 1393
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 1397
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    :cond_33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_42

    .line 1398
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 1399
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1401
    :cond_42
    return-object v3
.end method

.method removePackageParticipantsLocked(Ljava/lang/String;)V
    .registers 7
    .parameter "packageName"

    .prologue
    .line 495
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePackageParticipantsLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz p1, :cond_2f

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .restart local v0       #allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/16 v1, 0x40

    .line 501
    .local v1, flags:I
    :try_start_22
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2b} :catch_34

    .line 509
    .end local v1           #flags:I
    :goto_2b
    invoke-direct {p0, p1, v0}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 510
    return-void

    .line 507
    :cond_2f
    invoke-direct {p0}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    goto :goto_2b

    .line 502
    .restart local v1       #flags:I
    :catch_34
    move-exception v2

    goto :goto_2b
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "transport"

    .prologue
    const-string v1, "BackupManagerService"

    .line 1408
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "selectBackupTransport"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v1

    .line 1411
    const/4 v0, 0x0

    .line 1412
    .local v0, prevTransport:Ljava/lang/String;
    :try_start_f
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 1413
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 1414
    iput-object p1, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 1415
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_transport"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1417
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectBackupTransport() set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :goto_4a
    monitor-exit v1

    return-object v0

    .line 1420
    :cond_4c
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to select unavailable transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 1423
    :catchall_65
    move-exception v2

    monitor-exit v1
    :try_end_67
    .catchall {:try_start_f .. :try_end_67} :catchall_65

    throw v2
.end method

.method public setBackupEnabled(Z)V
    .registers 6
    .parameter "enable"

    .prologue
    .line 1320
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "setBackupEnabled"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    .line 1324
    .local v0, wasEnabled:Z
    monitor-enter p0

    .line 1325
    :try_start_c
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "backup_enabled"

    if-eqz p1, :cond_30

    const/4 v3, 0x1

    :goto_17
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1327
    iput-boolean p1, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    .line 1328
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_32

    .line 1330
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1331
    if-eqz p1, :cond_35

    if-nez v0, :cond_35

    :try_start_24
    iget-boolean v2, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v2, :cond_35

    .line 1333
    const-wide/32 v2, 0x36ee80

    invoke-direct {p0, v2, v3}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V

    .line 1338
    :cond_2e
    :goto_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_3f

    .line 1339
    return-void

    .line 1325
    :cond_30
    const/4 v3, 0x0

    goto :goto_17

    .line 1328
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1

    .line 1334
    :cond_35
    if-nez p1, :cond_2e

    .line 1336
    :try_start_37
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_2e

    .line 1338
    :catchall_3f
    move-exception v2

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_37 .. :try_end_41} :catchall_3f

    throw v2
.end method

.method public setBackupProvisioned(Z)V
    .registers 6
    .parameter "available"

    .prologue
    .line 1343
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "setBackupProvisioned"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    .line 1347
    .local v0, wasProvisioned:Z
    monitor-enter p0

    .line 1348
    :try_start_c
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "backup_provisioned"

    if-eqz p1, :cond_30

    const/4 v3, 0x1

    :goto_17
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1350
    iput-boolean p1, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    .line 1351
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_32

    .line 1353
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1354
    if-eqz p1, :cond_35

    if-nez v0, :cond_35

    :try_start_24
    iget-boolean v2, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_35

    .line 1356
    const-wide/32 v2, 0x2932e00

    invoke-direct {p0, v2, v3}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V

    .line 1362
    :cond_2e
    :goto_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_46

    .line 1363
    return-void

    .line 1348
    :cond_30
    const/4 v3, 0x0

    goto :goto_17

    .line 1351
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1

    .line 1357
    :cond_35
    if-nez p1, :cond_2e

    .line 1359
    :try_start_37
    const-string v2, "BackupManagerService"

    const-string v3, "Backup service no longer provisioned"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_2e

    .line 1362
    :catchall_46
    move-exception v2

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_37 .. :try_end_48} :catchall_46

    throw v2
.end method

.method updatePackageParticipantsLocked(Ljava/lang/String;)V
    .registers 6
    .parameter "packageName"

    .prologue
    const-string v3, "BackupManagerService"

    .line 561
    if-nez p1, :cond_c

    .line 562
    const-string v1, "BackupManagerService"

    const-string v1, "updatePackageParticipants called with null package name"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :goto_b
    return-void

    .line 565
    :cond_c
    const-string v1, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePackageParticipantsLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-direct {p0}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    .line 569
    .local v0, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 570
    invoke-direct {p0, p1, v0}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_b
.end method
