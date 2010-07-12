.class public Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;
.super Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;
.source "BluetoothFTPServiceStub.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IServiceStateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothFTPServiceStub"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

.field private mSvcStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvcStarted:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    .line 66
    iput-object p1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mContext:Landroid/content/Context;

    .line 67
    const-string v0, "bluetooth_ftp"

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    .line 68
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    if-eqz v0, :cond_21

    .line 69
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    invoke-virtual {v0, p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->setStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvcStarted:Z

    .line 72
    :cond_21
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->finish()V

    .line 92
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 2

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    if-eqz v0, :cond_10

    .line 84
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    invoke-virtual {v0, p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->removeStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvcStarted:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 88
    :cond_10
    monitor-exit p0

    return-void

    .line 83
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ftpServerAccessRsp(BZLjava/lang/String;)V
    .registers 5
    .parameter "op_code"
    .parameter "access"
    .parameter "fileName"

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvcStarted:Z

    if-eqz v0, :cond_a

    .line 132
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAccessRsp(BZLjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 134
    :cond_a
    monitor-exit p0

    return-void

    .line 131
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "password"
    .parameter "userId"

    .prologue
    .line 124
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvcStarted:Z

    if-eqz v0, :cond_a

    .line 125
    iget-object v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvc:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->ftpServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 127
    :cond_a
    monitor-exit p0

    return-void

    .line 124
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvcStarted:Z

    .line 75
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;->mSvcStarted:Z

    .line 79
    return-void
.end method
