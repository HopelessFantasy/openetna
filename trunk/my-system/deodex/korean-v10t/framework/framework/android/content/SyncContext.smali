.class public Landroid/content/SyncContext;
.super Ljava/lang/Object;
.source "SyncContext.java"


# static fields
.field private static final HEARTBEAT_SEND_INTERVAL_IN_MS:J = 0x3e8L


# instance fields
.field private mLastHeartbeatSendTime:J

.field private mSyncContext:Landroid/content/ISyncContext;


# direct methods
.method public constructor <init>(Landroid/content/ISyncContext;)V
    .registers 4
    .parameter "syncContextInterface"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/SyncContext;->mLastHeartbeatSendTime:J

    .line 34
    return-void
.end method


# virtual methods
.method public getISyncContext()Landroid/content/ISyncContext;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    return-object v0
.end method

.method public onFinished(Landroid/content/SyncResult;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 64
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    invoke-interface {v0, p1}, Landroid/content/ISyncContext;->onFinished(Landroid/content/SyncResult;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 68
    :goto_5
    return-void

    .line 65
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setStatusText(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/content/SyncContext;->updateHeartbeat()V

    .line 44
    return-void
.end method

.method public updateHeartbeat()V
    .registers 7

    .prologue
    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 53
    .local v0, now:J
    iget-wide v2, p0, Landroid/content/SyncContext;->mLastHeartbeatSendTime:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_e

    .line 60
    :goto_d
    return-void

    .line 55
    :cond_e
    :try_start_e
    iput-wide v0, p0, Landroid/content/SyncContext;->mLastHeartbeatSendTime:J

    .line 56
    iget-object v2, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    invoke-interface {v2}, Landroid/content/ISyncContext;->sendHeartbeat()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_d

    .line 57
    :catch_16
    move-exception v2

    goto :goto_d
.end method
