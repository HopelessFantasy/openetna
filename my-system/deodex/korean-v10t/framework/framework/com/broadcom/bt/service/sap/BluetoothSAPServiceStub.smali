.class public Lcom/broadcom/bt/service/sap/BluetoothSAPServiceStub;
.super Lcom/broadcom/bt/service/sap/IBluetoothSAP$Stub;
.source "BluetoothSAPServiceStub.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IServiceStateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothSAPServiceStub"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

.field private mSvcStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/IBluetoothSAP$Stub;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPServiceStub;->mSvcStarted:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    .line 66
    iput-object p1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPServiceStub;->mContext:Landroid/content/Context;

    .line 67
    const-string v0, "bluetooth_sap"

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    iput-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    .line 68
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    if-eqz v0, :cond_21

    .line 69
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    invoke-virtual {v0, p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->setStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPServiceStub;->mSvcStarted:Z

    .line 72
    :cond_21
    return-void
.end method


# virtual methods
.method public declared-synchronized accessRsp(IZLjava/lang/String;)V
    .registers 4
    .parameter "op_code"
    .parameter "access"
    .parameter "fileName"

    .prologue
    .line 105
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public callExampleFunction()V
    .registers 1

    .prologue
    .line 125
    return-void
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPServiceStub;->finish()V

    .line 92
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 2

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    if-eqz v0, :cond_10

    .line 84
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    invoke-virtual {v0, p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->removeStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPServiceStub;->mSvcStarted:Z
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

.method public onStart()V
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPServiceStub;->mSvcStarted:Z

    .line 75
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPServiceStub;->mSvcStarted:Z

    .line 79
    return-void
.end method

.method public registerCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPServiceStub;->mSvcStarted:Z

    if-eqz v0, :cond_9

    .line 109
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->registerCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V

    .line 111
    :cond_9
    return-void
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPServiceStub;->mSvcStarted:Z

    if-eqz v0, :cond_9

    .line 115
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->unregisterCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V

    .line 117
    :cond_9
    return-void
.end method
