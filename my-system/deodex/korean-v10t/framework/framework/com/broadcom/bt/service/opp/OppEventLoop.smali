.class public Lcom/broadcom/bt/service/opp/OppEventLoop;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "OppEventLoop.java"

# interfaces
.implements Lcom/broadcom/bt/service/opp/OppConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/opp/OppEventLoop$AccessInvoker;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final TAG:Ljava/lang/String; = "OppEventLoop"


# instance fields
.field private isAccessGranted:Z

.field private mAccessInvoker:Lcom/broadcom/bt/service/opp/OppEventLoop$AccessInvoker;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/opp/IOppCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mInterrupted:Z

.field private mObexNativeData:I

.field private mService:Lcom/broadcom/bt/service/opp/OppService;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 73
    invoke-static {}, Lcom/broadcom/bt/service/opp/OppEventLoop;->classInitNative()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/broadcom/bt/service/opp/OppService;)V
    .registers 5
    .parameter "context"
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 68
    iput-boolean v1, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->isAccessGranted:Z

    .line 79
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 86
    iput-boolean v1, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mInterrupted:Z

    .line 466
    new-instance v0, Lcom/broadcom/bt/service/opp/OppEventLoop$AccessInvoker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/broadcom/bt/service/opp/OppEventLoop$AccessInvoker;-><init>(Lcom/broadcom/bt/service/opp/OppEventLoop;Lcom/broadcom/bt/service/opp/OppEventLoop$1;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mAccessInvoker:Lcom/broadcom/bt/service/opp/OppEventLoop$AccessInvoker;

    .line 90
    iput-object p2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mService:Lcom/broadcom/bt/service/opp/OppService;

    .line 91
    return-void
.end method

.method private native ObexEventLoopNative()V
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/opp/OppEventLoop;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->setObexEventLoopFilterNativeLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/opp/OppEventLoop;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/opp/OppEventLoop;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->ObexEventLoopNative()V

    return-void
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/opp/OppEventLoop;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->clearObexEventLoopFilterNative()V

    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native clearObexEventLoopFilterNative()V
.end method

.method private native clearObexEventLoopNative()V
.end method

.method private native initObexEventLoopNative()V
.end method

.method private native setObexEventLoopFilterNative()Z
.end method

.method private setObexEventLoopFilterNativeLocked()Z
    .registers 3

    .prologue
    .line 146
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_3
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->setObexEventLoopFilterNative()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 148
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    const-string v0, "bluetooth_opp_service"

    return-object v0
.end method

.method public init()V
    .registers 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/OppEventLoop;->initObexEventLoopNative()V

    .line 99
    return-void
.end method

.method public declared-synchronized onOpCreateVcard(ILjava/lang/String;)V
    .registers 8
    .parameter "status"
    .parameter "filePathName"

    .prologue
    .line 416
    monitor-enter p0

    :try_start_1
    const-string v2, "OppEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpCreateVcard ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_47

    move-result v0

    .line 419
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_30
    if-ge v1, v0, :cond_40

    .line 421
    :try_start_32
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpCreateVcard(ILjava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_47
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3d} :catch_4a

    .line 419
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 428
    :cond_40
    :try_start_40
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_47

    .line 429
    monitor-exit p0

    return-void

    .line 416
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_47
    move-exception v2

    monitor-exit p0

    throw v2

    .line 423
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_4a
    move-exception v2

    goto :goto_3d
.end method

.method public declared-synchronized onOpOwnerVcardNotSet(Ljava/lang/String;)V
    .registers 7
    .parameter "filePathName"

    .prologue
    .line 432
    monitor-enter p0

    :try_start_1
    const-string v2, "OppEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpOwnerVcardNotSet ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_3d

    move-result v0

    .line 435
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    if-ge v1, v0, :cond_36

    .line 437
    :try_start_28
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpOwnerVcardNotSet(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_3d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_33} :catch_40

    .line 435
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 444
    :cond_36
    :try_start_36
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3d

    .line 445
    monitor-exit p0

    return-void

    .line 432
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_3d
    move-exception v2

    monitor-exit p0

    throw v2

    .line 439
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_40
    move-exception v2

    goto :goto_33
.end method

.method public declared-synchronized onOpStoreVcard(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .parameter "status"
    .parameter "filePathName"
    .parameter "contactName"
    .parameter "storeId"

    .prologue
    const-string v2, ":"

    .line 449
    monitor-enter p0

    :try_start_3
    const-string v2, "OppEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpStoreVcard ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_5d

    move-result v0

    .line 453
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_46
    if-ge v1, v0, :cond_56

    .line 455
    :try_start_48
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpStoreVcard(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_5d
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_53} :catch_60

    .line 453
    :goto_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 462
    :cond_56
    :try_start_56
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_5d

    .line 463
    monitor-exit p0

    return-void

    .line 449
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_5d
    move-exception v2

    monitor-exit p0

    throw v2

    .line 457
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_60
    move-exception v2

    goto :goto_53
.end method

.method public declared-synchronized onOpcClose(I)V
    .registers 8
    .parameter "status"

    .prologue
    .line 209
    monitor-enter p0

    :try_start_1
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOpcClose ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v2, Landroid/content/Intent;

    const-string v3, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 212
    const-string v3, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 214
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 218
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_57

    move-result v0

    .line 219
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_40
    if-ge v1, v0, :cond_50

    .line 221
    :try_start_42
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcClose(I)V
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_57
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_4d} :catch_5a

    .line 219
    :goto_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 227
    :cond_50
    :try_start_50
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_57

    .line 228
    monitor-exit p0

    return-void

    .line 209
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    :catchall_57
    move-exception v3

    monitor-exit p0

    throw v3

    .line 222
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_5a
    move-exception v3

    goto :goto_4d
.end method

.method public declared-synchronized onOpcEnable()V
    .registers 5

    .prologue
    .line 173
    monitor-enter p0

    :try_start_1
    const-string v2, "OppEventLoop"

    const-string v3, "onOpcEnable"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_26

    move-result v0

    .line 176
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v0, :cond_1f

    .line 178
    :try_start_11
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcEnable()V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_26
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1c} :catch_29

    .line 176
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 184
    :cond_1f
    :try_start_1f
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_26

    .line 185
    monitor-exit p0

    return-void

    .line 173
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_26
    move-exception v2

    monitor-exit p0

    throw v2

    .line 179
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_29
    move-exception v2

    goto :goto_1c
.end method

.method public declared-synchronized onOpcObjectPushed(ILjava/lang/String;)V
    .registers 8
    .parameter "status"
    .parameter "filePathName"

    .prologue
    .line 231
    monitor-enter p0

    :try_start_1
    const-string v2, "OppEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpcObjectPushed("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_47

    move-result v0

    .line 234
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_30
    if-ge v1, v0, :cond_40

    .line 236
    :try_start_32
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcObjectPushed(ILjava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_47
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3d} :catch_4a

    .line 234
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 243
    :cond_40
    :try_start_40
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_47

    .line 244
    monitor-exit p0

    return-void

    .line 231
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_47
    move-exception v2

    monitor-exit p0

    throw v2

    .line 238
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_4a
    move-exception v2

    goto :goto_3d
.end method

.method public declared-synchronized onOpcObjectReceived(ILjava/lang/String;)V
    .registers 8
    .parameter "status"
    .parameter "filePathName"

    .prologue
    .line 247
    monitor-enter p0

    :try_start_1
    const-string v2, "OppEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpcObjectReceived("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_47

    move-result v0

    .line 250
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_30
    if-ge v1, v0, :cond_40

    .line 252
    :try_start_32
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcObjectReceived(ILjava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_47
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3d} :catch_4a

    .line 250
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 259
    :cond_40
    :try_start_40
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_47

    .line 260
    monitor-exit p0

    return-void

    .line 247
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_47
    move-exception v2

    monitor-exit p0

    throw v2

    .line 254
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_4a
    move-exception v2

    goto :goto_3d
.end method

.method public declared-synchronized onOpcOpen()V
    .registers 6

    .prologue
    .line 188
    monitor-enter p0

    :try_start_1
    const-string v3, "OppEventLoop"

    const-string v4, "onOpcOpen"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v2, Landroid/content/Intent;

    const-string v3, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 191
    const-string v3, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 193
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 196
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_40

    move-result v0

    .line 197
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_29
    if-ge v1, v0, :cond_39

    .line 199
    :try_start_2b
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcOpen()V
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_40
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_36} :catch_43

    .line 197
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 205
    :cond_39
    :try_start_39
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_40

    .line 206
    monitor-exit p0

    return-void

    .line 188
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    :catchall_40
    move-exception v3

    monitor-exit p0

    throw v3

    .line 200
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_43
    move-exception v3

    goto :goto_36
.end method

.method public declared-synchronized onOpcProgress(II)V
    .registers 8
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    .line 263
    monitor-enter p0

    :try_start_1
    const-string v2, "OppEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpcProgress("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_47

    move-result v0

    .line 268
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_30
    if-ge v1, v0, :cond_40

    .line 270
    :try_start_32
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpcProgress(II)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_47
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3d} :catch_4a

    .line 268
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 277
    :cond_40
    :try_start_40
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_47

    .line 279
    monitor-exit p0

    return-void

    .line 263
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_47
    move-exception v2

    monitor-exit p0

    throw v2

    .line 272
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_4a
    move-exception v2

    goto :goto_3d
.end method

.method public declared-synchronized onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .registers 21
    .parameter "peerDeviceName"
    .parameter "peerBDAddress"
    .parameter "operation"
    .parameter "format"
    .parameter "filePathName"
    .parameter "totalBytes"

    .prologue
    .line 305
    monitor-enter p0

    :try_start_1
    const-string v3, "OppEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOpsAccessRequest("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-boolean v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->isAccessGranted:Z

    if-nez v3, :cond_b6

    .line 311
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->isAccessGranted:Z

    .line 312
    new-instance v11, Landroid/content/Intent;

    const-string v3, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-direct {v11, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v11, accessReqIntent:Landroid/content/Intent;
    const-string v3, "broadcom.android.bluetooth.intent.FILE_NAME"

    move-object v0, v11

    move-object v1, v3

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v3, "broadcom.android.bluetooth.intent.RMT_DEV_ADDR"

    move-object v0, v11

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    move/from16 v0, p3

    int-to-byte v0, v0

    move v13, v0

    .line 322
    .local v13, opCode:B
    const-string v3, "broadcom.android.bluetooth.intent.SERVICE_OPER_CODE"

    invoke-virtual {v11, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 323
    const-string v3, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    const/4 v4, 0x1

    invoke-virtual {v11, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 324
    const-string v3, "broadcom.android.bluetooth.intent.FILE_SIZE"

    move-object v0, v11

    move-object v1, v3

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    const-string v3, "broadcom.android.bluetooth.intent.FILE_FORMAT"

    move-object v0, v11

    move-object v1, v3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 326
    const-string v3, "broadcom.android.bluetooth.intent.RMT_DEV_NAME"

    invoke-virtual {v11, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v3, "com.broadcom.bt.app.opp"

    const-string v4, "com.broadcom.bt.app.opp.OppReceiver"

    invoke-virtual {v11, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v11, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_b4
    .catchall {:try_start_1 .. :try_end_b4} :catchall_e0

    .line 356
    .end local v11           #accessReqIntent:Landroid/content/Intent;
    .end local v13           #opCode:B
    :cond_b4
    :goto_b4
    monitor-exit p0

    return-void

    .line 338
    :cond_b6
    :try_start_b6
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_bb
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_e0

    move-result v10

    .line 339
    .local v10, N:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_bd
    if-ge v12, v10, :cond_d8

    .line 341
    :try_start_bf
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v12}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpsAccessRequest(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_d5
    .catchall {:try_start_bf .. :try_end_d5} :catchall_e0
    .catch Landroid/os/RemoteException; {:try_start_bf .. :try_end_d5} :catch_e3

    .line 339
    :goto_d5
    add-int/lit8 v12, v12, 0x1

    goto :goto_bd

    .line 347
    :cond_d8
    :try_start_d8
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_dd
    .catchall {:try_start_d8 .. :try_end_dd} :catchall_e0

    .line 349
    if-lez v10, :cond_b4

    goto :goto_b4

    .line 305
    .end local v10           #N:I
    .end local v12           #i:I
    :catchall_e0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 342
    .restart local v10       #N:I
    .restart local v12       #i:I
    :catch_e3
    move-exception v3

    goto :goto_d5
.end method

.method public declared-synchronized onOpsClose()V
    .registers 6

    .prologue
    .line 359
    monitor-enter p0

    :try_start_1
    const-string v3, "OppEventLoop"

    const-string v4, "onOpsClose()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v2, Landroid/content/Intent;

    const-string v3, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 362
    const-string v3, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 364
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 366
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->isAccessGranted:Z

    .line 367
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_43

    move-result v0

    .line 368
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2c
    if-ge v1, v0, :cond_3c

    .line 370
    :try_start_2e
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v3}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpsClose()V
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_43
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_39} :catch_46

    .line 368
    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 376
    :cond_3c
    :try_start_3c
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_43

    .line 377
    monitor-exit p0

    return-void

    .line 359
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    :catchall_43
    move-exception v3

    monitor-exit p0

    throw v3

    .line 371
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_46
    move-exception v3

    goto :goto_39
.end method

.method public declared-synchronized onOpsObjectReceived(ILjava/lang/String;)V
    .registers 8
    .parameter "format"
    .parameter "filePathName"

    .prologue
    .line 380
    monitor-enter p0

    :try_start_1
    const-string v2, "OppEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpsObjectReceived("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_47

    move-result v0

    .line 383
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_30
    if-ge v1, v0, :cond_40

    .line 385
    :try_start_32
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpsObjectReceived(ILjava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_47
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3d} :catch_4a

    .line 383
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 392
    :cond_40
    :try_start_40
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_47

    .line 393
    monitor-exit p0

    return-void

    .line 380
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_47
    move-exception v2

    monitor-exit p0

    throw v2

    .line 387
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_4a
    move-exception v2

    goto :goto_3d
.end method

.method public declared-synchronized onOpsOpen()V
    .registers 4

    .prologue
    .line 283
    monitor-enter p0

    :try_start_1
    const-string v1, "OppEventLoop"

    const-string v2, "onOpsOpen()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 286
    const-string v1, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_ID"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 288
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 300
    monitor-exit p0

    return-void

    .line 283
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onOpsProgress(II)V
    .registers 8
    .parameter "bytesTransferred"
    .parameter "totalBytes"

    .prologue
    .line 396
    monitor-enter p0

    :try_start_1
    const-string v2, "OppEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpsProgress("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_47

    move-result v0

    .line 401
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_30
    if-ge v1, v0, :cond_40

    .line 403
    :try_start_32
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/opp/IOppCallback;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/opp/IOppCallback;->onOpsProgress(II)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_47
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3d} :catch_4a

    .line 401
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 410
    :cond_40
    :try_start_40
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_47

    .line 411
    monitor-exit p0

    return-void

    .line 396
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_47
    move-exception v2

    monitor-exit p0

    throw v2

    .line 405
    .restart local v0       #N:I
    .restart local v1       #i:I
    :catch_4a
    move-exception v2

    goto :goto_3d
.end method

.method public registerCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 104
    if-eqz p1, :cond_7

    .line 105
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 107
    :cond_7
    return-void
.end method

.method public declared-synchronized start()V
    .registers 3

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mThread:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    if-eqz v0, :cond_7

    .line 143
    :goto_5
    monitor-exit p0

    return-void

    .line 121
    :cond_7
    :try_start_7
    new-instance v0, Lcom/broadcom/bt/service/opp/OppEventLoop$1;

    const-string v1, "Obex Event Loop"

    invoke-direct {v0, p0, v1}, Lcom/broadcom/bt/service/opp/OppEventLoop$1;-><init>(Lcom/broadcom/bt/service/opp/OppEventLoop;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mThread:Ljava/lang/Thread;

    .line 140
    const-string v0, "OppEventLoop"

    const-string v1, "Starting Event Loop thread"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mInterrupted:Z

    .line 142
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_20

    goto :goto_5

    .line 116
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 3

    .prologue
    .line 160
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_10

    .line 161
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mInterrupted:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_18

    .line 164
    :try_start_8
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 165
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mThread:Ljava/lang/Thread;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_18
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_10} :catch_12

    .line 170
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    .line 166
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 167
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_14
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_10

    .line 160
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/opp/IOppCallback;)V
    .registers 3
    .parameter "cb"

    .prologue
    .line 110
    if-eqz p1, :cond_7

    .line 111
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/OppEventLoop;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 113
    :cond_7
    return-void
.end method
