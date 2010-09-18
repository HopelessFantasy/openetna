.class public Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;
.super Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub;
.source "BluetoothDUNServiceStub.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IServiceStateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothDUNServiceStub"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

.field private mSvcStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvcStarted:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    .line 69
    iput-object p1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mContext:Landroid/content/Context;

    .line 70
    const-string v0, "bluetooth_dun"

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    .line 71
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    if-eqz v0, :cond_21

    .line 72
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-virtual {v0, p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->setStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvcStarted:Z

    .line 75
    :cond_21
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->finish()V

    .line 95
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    if-eqz v0, :cond_10

    .line 87
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-virtual {v0, p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->removeStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvcStarted:Z
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

.method public getAllPortStatus()Landroid/os/Bundle;
    .registers 8

    .prologue
    .line 116
    new-instance v0, Landroid/os/Bundle;

    const/4 v5, 0x3

    invoke-direct {v0, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 117
    .local v0, b:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-virtual {v5}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->getAllPortStatus()Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 118
    .local v3, status:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Byte;Ljava/lang/Byte;>;"
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 119
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Byte;>;"
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 121
    .local v2, key:Ljava/lang/Byte;
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    .line 122
    .local v4, val:Ljava/lang/Byte;
    if-eqz v4, :cond_14

    .line 123
    invoke-virtual {v2}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_14

    .line 126
    .end local v2           #key:Ljava/lang/Byte;
    .end local v4           #val:Ljava/lang/Byte;
    :cond_34
    return-object v0
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvcStarted:Z

    .line 78
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvcStarted:Z

    .line 82
    return-void
.end method

.method public registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvcStarted:Z

    if-eqz v0, :cond_9

    .line 105
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V

    .line 107
    :cond_9
    return-void
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvcStarted:Z

    if-eqz v0, :cond_9

    .line 111
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNServiceStub;->mSvc:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V

    .line 113
    :cond_9
    return-void
.end method
