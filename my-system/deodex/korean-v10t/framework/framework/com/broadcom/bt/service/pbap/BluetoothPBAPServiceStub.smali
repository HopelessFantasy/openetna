.class public Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;
.super Lcom/broadcom/bt/service/pbap/IBluetoothPBAP$Stub;
.source "BluetoothPBAPServiceStub.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IServiceStateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPBAPServiceStub"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

.field private mSvcStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/broadcom/bt/service/pbap/IBluetoothPBAP$Stub;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;->mSvcStarted:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;->mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    .line 69
    iput-object p1, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;->mContext:Landroid/content/Context;

    .line 70
    const-string v0, "bluetooth_pbs"

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    iput-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;->mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    .line 71
    iget-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;->mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    if-eqz v0, :cond_21

    .line 72
    iget-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;->mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    invoke-virtual {v0, p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->setStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;->mSvcStarted:Z

    .line 75
    :cond_21
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;->finish()V

    .line 95
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;->mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    if-eqz v0, :cond_10

    .line 87
    iget-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;->mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    invoke-virtual {v0, p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->removeStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;->mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;->mSvcStarted:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 91
    :cond_10
    monitor-exit p0

    return-void

    .line 86
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;->mSvcStarted:Z

    .line 78
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;->mSvcStarted:Z

    .line 82
    return-void
.end method

.method public declared-synchronized pbapServerAccessRsp(BZLjava/lang/String;)V
    .registers 5
    .parameter "op_code"
    .parameter "access"
    .parameter "filename"

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;->mSvcStarted:Z

    if-eqz v0, :cond_a

    .line 136
    iget-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;->mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->pbapServerAccessRsp(BZLjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 138
    :cond_a
    monitor-exit p0

    return-void

    .line 135
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pbapServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "password"
    .parameter "userId"

    .prologue
    .line 128
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;->mSvcStarted:Z

    if-eqz v0, :cond_a

    .line 129
    iget-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;->mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->pbapServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 131
    :cond_a
    monitor-exit p0

    return-void

    .line 128
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
