.class public Lcom/broadcom/bt/service/sap/BluetoothSAPService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothSAPService.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BluetoothSAPService"


# instance fields
.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFinish:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 64
    invoke-static {}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->classInitNative()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 92
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupSapNativeDataNative()V
.end method

.method private native disableSapServerNative()V
.end method

.method private native enableDefaultSapServerNative()V
.end method

.method private native initSapNativeDataNative()V
.end method


# virtual methods
.method public declared-synchronized disableSapServer()V
    .registers 4

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->disableSapServerNative()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 107
    :goto_4
    monitor-exit p0

    return-void

    .line 104
    :catch_6
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothSAPService"

    const-string v2, "disableSapServerNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 103
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enableDefaultSapServer()V
    .registers 4

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->enableDefaultSapServerNative()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 121
    :goto_4
    monitor-exit p0

    return-void

    .line 118
    :catch_6
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothSAPService"

    const-string v2, "enableDefaultSapServerNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 117
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->finish()V

    .line 156
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 157
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 4

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mIsFinish:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v1, :cond_b

    .line 79
    :try_start_5
    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->cleanupSapNativeDataNative()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_16
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_d

    .line 84
    :goto_8
    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mIsFinish:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_16

    .line 86
    :cond_b
    monitor-exit p0

    return-void

    .line 81
    :catch_d
    move-exception v0

    .line 82
    .local v0, t:Ljava/lang/Throwable;
    :try_start_e
    const-string v1, "BluetoothSAPService"

    const-string v2, "Unable to cleanup DUN service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_8

    .line 76
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    const-string v0, "bluetooth_sap"

    return-object v0
.end method

.method public declared-synchronized init()V
    .registers 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->initSapNativeDataNative()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mIsFinish:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 71
    monitor-exit p0

    return-void

    .line 69
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCallbackOccurred()V
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 193
    return-void
.end method

.method protected onSapServerClosed()V
    .registers 3

    .prologue
    .line 150
    const-string v0, "BluetoothSAPService"

    const-string v1, "onSapServerClosed() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method protected onSapServerDisabled()V
    .registers 3

    .prologue
    .line 141
    const-string v0, "BluetoothSAPService"

    const-string v1, "onSapServerDisabled() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->onStateChangeEvent(Z)V

    .line 143
    return-void
.end method

.method protected onSapServerEnabled()V
    .registers 3

    .prologue
    .line 136
    const-string v0, "BluetoothSAPService"

    const-string v1, "onSapServerEnabled() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->onStateChangeEvent(Z)V

    .line 138
    return-void
.end method

.method protected onSapServerOpened()V
    .registers 3

    .prologue
    .line 145
    const-string v0, "BluetoothSAPService"

    const-string v1, "onSapServerOpened() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method public registerCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 164
    if-eqz p1, :cond_7

    .line 165
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 167
    :cond_7
    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->enableDefaultSapServer()V

    .line 128
    return-void
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->disableSapServer()V

    .line 133
    return-void
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 170
    if-eqz p1, :cond_7

    .line 171
    iget-object v0, p0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 173
    :cond_7
    return-void
.end method
