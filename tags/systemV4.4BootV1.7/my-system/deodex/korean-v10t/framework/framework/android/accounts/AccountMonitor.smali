.class public Landroid/accounts/AccountMonitor;
.super Landroid/content/BroadcastReceiver;
.source "AccountMonitor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountMonitor$AccountUpdater;
    }
.end annotation


# instance fields
.field private mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private final mListener:Landroid/accounts/AccountMonitorListener;

.field private pending:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/AccountMonitorListener;)V
    .registers 6
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 44
    iput-boolean v1, p0, Landroid/accounts/AccountMonitor;->mClosed:Z

    .line 45
    iput v1, p0, Landroid/accounts/AccountMonitor;->pending:I

    .line 100
    if-nez p2, :cond_12

    .line 101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "listener is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_12
    iput-object p1, p0, Landroid/accounts/AccountMonitor;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Landroid/accounts/AccountMonitor;->mListener:Landroid/accounts/AccountMonitorListener;

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Landroid/accounts/AccountMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    invoke-direct {p0}, Landroid/accounts/AccountMonitor;->notifyListener()V

    .line 115
    return-void
.end method

.method static synthetic access$000(Landroid/accounts/AccountMonitor;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Landroid/accounts/AccountMonitor;->pending:I

    return v0
.end method

.method static synthetic access$006(Landroid/accounts/AccountMonitor;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Landroid/accounts/AccountMonitor;->pending:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/accounts/AccountMonitor;->pending:I

    return v0
.end method

.method static synthetic access$100(Landroid/accounts/AccountMonitor;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/accounts/AccountMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/accounts/AccountMonitor;)Landroid/accounts/AccountMonitorListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/accounts/AccountMonitor;->mListener:Landroid/accounts/AccountMonitorListener;

    return-object v0
.end method

.method private declared-synchronized notifyListener()V
    .registers 4

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/accounts/AccountMonitor;->pending:I

    if-nez v0, :cond_30

    .line 133
    iget-object v0, p0, Landroid/accounts/AccountMonitor;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/accounts/AccountsServiceConstants;->SERVICE_INTENT:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_30

    .line 136
    const-string v0, "AccountMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/accounts/AccountsServiceConstants;->SERVICE_INTENT:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (Missing service?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_30
    iget v0, p0, Landroid/accounts/AccountMonitor;->pending:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/accounts/AccountMonitor;->pending:I
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    .line 151
    monitor-exit p0

    return-void

    .line 131
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 169
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/accounts/AccountMonitor;->mClosed:Z

    if-nez v0, :cond_d

    .line 170
    iget-object v0, p0, Landroid/accounts/AccountMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/accounts/AccountMonitor;->mClosed:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 173
    :cond_d
    monitor-exit p0

    return-void

    .line 169
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/accounts/AccountMonitor;->close()V

    .line 160
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 161
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/accounts/AccountMonitor;->notifyListener()V

    .line 120
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 124
    new-instance v0, Landroid/accounts/AccountMonitor$AccountUpdater;

    invoke-direct {v0, p0, p2}, Landroid/accounts/AccountMonitor$AccountUpdater;-><init>(Landroid/accounts/AccountMonitor;Landroid/os/IBinder;)V

    invoke-virtual {v0}, Landroid/accounts/AccountMonitor$AccountUpdater;->start()V

    .line 125
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "className"

    .prologue
    .line 128
    return-void
.end method
