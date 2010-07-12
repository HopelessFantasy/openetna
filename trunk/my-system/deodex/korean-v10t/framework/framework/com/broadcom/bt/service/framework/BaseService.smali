.class public abstract Lcom/broadcom/bt/service/framework/BaseService;
.super Ljava/lang/Object;
.source "BaseService.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IBtService;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mIsStarted:Z

.field protected mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    .line 22
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1

    .prologue
    .line 63
    return-void
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public init()V
    .registers 1

    .prologue
    .line 51
    return-void
.end method

.method public declared-synchronized onStateChangeEvent(Z)V
    .registers 5
    .parameter "started"

    .prologue
    .line 36
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    if-eqz v0, :cond_e

    .line 37
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-eqz v0, :cond_20

    .line 38
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStart()V

    .line 43
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/framework/BaseService;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_29

    const/4 v2, 0x2

    :goto_17
    invoke-static {v1, v2}, Lcom/broadcom/android/bluetooth/server/BluetoothIntentExtHelper;->createBtSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_26

    .line 47
    monitor-exit p0

    return-void

    .line 40
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStop()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_26

    goto :goto_e

    .line 36
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0

    .line 43
    :cond_29
    const/4 v2, 0x1

    goto :goto_17
.end method

.method public declared-synchronized removeStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 32
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 33
    monitor-exit p0

    return-void

    .line 32
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 28
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 29
    monitor-exit p0

    return-void

    .line 28
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .registers 1

    .prologue
    .line 55
    return-void
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 59
    return-void
.end method
