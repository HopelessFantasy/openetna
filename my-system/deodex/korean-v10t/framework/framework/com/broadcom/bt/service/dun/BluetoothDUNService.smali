.class public Lcom/broadcom/bt/service/dun/BluetoothDUNService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothDUNService.java"


# static fields
.field private static final DBG:Z = false

.field public static final PORT_STATE_CLOSED:B = 0x3t

.field public static final PORT_STATE_LISTENING:B = 0x1t

.field public static final PORT_STATE_OPENED:B = 0x2t

.field private static final TAG:Ljava/lang/String; = "BluetoothDUNService"


# instance fields
.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFinish:Z

.field private mNativeData:I

.field final mPortState:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 88
    invoke-static {}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->classInitNative()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    .line 72
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 93
    return-void
.end method

.method private static native classInitNative()V
.end method


# virtual methods
.method public native cleanupNative()V
.end method

.method public native disableNative()V
.end method

.method public native enableNative()V
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->finish()V

    .line 134
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 136
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 4

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsFinish:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    if-nez v1, :cond_f

    .line 116
    :try_start_5
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->cleanupNative()V

    .line 117
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->onStateChangeEvent(Z)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_c} :catch_11

    .line 121
    :goto_c
    const/4 v1, 0x1

    :try_start_d
    iput-boolean v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsFinish:Z
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_1b

    .line 123
    :cond_f
    monitor-exit p0

    return-void

    .line 118
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 119
    .local v0, t:Ljava/lang/Throwable;
    :try_start_13
    const-string v1, "BluetoothDUNService"

    const-string v2, "Unable to cleanup DUN service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1b

    goto :goto_c

    .line 114
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected getAllPortStatus()Ljava/util/LinkedHashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, status:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Byte;Ljava/lang/Byte;>;"
    iget-object v3, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 127
    :try_start_4
    iget-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/LinkedHashMap;

    move-object v1, v0

    .line 128
    monitor-exit v3

    .line 129
    return-object v1

    .line 128
    :catchall_10
    move-exception v2

    monitor-exit v3
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v2
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    const-string v0, "bluetooth_dun"

    return-object v0
.end method

.method public declared-synchronized init()V
    .registers 2

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->initNative()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mIsFinish:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 102
    monitor-exit p0

    return-void

    .line 100
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native initNative()V
.end method

.method protected onDisableEvent()V
    .registers 3

    .prologue
    .line 144
    const-string v0, "BluetoothDUNService"

    const-string v1, "onDisableEvent() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 146
    :try_start_a
    iget-object v1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 147
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_15

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->onStateChangeEvent(Z)V

    .line 150
    return-void

    .line 147
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method protected onEnableEvent()V
    .registers 3

    .prologue
    .line 139
    const-string v0, "BluetoothDUNService"

    const-string v1, "onEnableEvent() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->onStateChangeEvent(Z)V

    .line 141
    return-void
.end method

.method protected onPortStateChangeEvent(BB)V
    .registers 9
    .parameter "appId"
    .parameter "portState"

    .prologue
    .line 153
    iget-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 154
    :try_start_3
    iget-object v3, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mPortState:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_28

    .line 158
    iget-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 159
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    if-ge v1, v0, :cond_2b

    .line 161
    :try_start_1a
    iget-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;->onPortStateChangeEvent(BB)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_25} :catch_31

    .line 159
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 155
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_28
    move-exception v3

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v3

    .line 167
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_2b
    iget-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 168
    return-void

    .line 162
    :catch_31
    move-exception v2

    goto :goto_25
.end method

.method public registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 173
    if-eqz p1, :cond_7

    .line 174
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 176
    :cond_7
    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->enableNative()V

    .line 107
    return-void
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->disableNative()V

    .line 111
    return-void
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 179
    if-eqz p1, :cond_7

    .line 180
    iget-object v0, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 182
    :cond_7
    return-void
.end method
