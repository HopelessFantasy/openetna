.class public Landroid/server/BluetoothA2dpService;
.super Landroid/bluetooth/IBluetoothA2dp$Stub;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothA2dpService$SinkState;
    }
.end annotation


# static fields
.field private static final A2DP_SINK_ADDRESS:Ljava/lang/String; = "a2dp_sink_address"

.field public static final BLUETOOTH_A2DP_SERVICE:Ljava/lang/String; = "bluetooth_a2dp"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_ENABLED:Ljava/lang/String; = "bluetooth_enabled"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final DBG:Z = true

.field private static final MESSAGE_DELAYED_CONNECT:I = 0x2

.field private static final MESSAGE_DISCONNECT:I = 0x1

.field private static final SINK_DISCONNECT_TO:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "BluetoothA2dpService"


# instance fields
.field private mAudioDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/server/BluetoothA2dpService$SinkState;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBluetooth:Landroid/bluetooth/BluetoothDevice;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mLastDisconnectMs:J

.field private final mPendingDisconnects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSinkCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mPendingDisconnects:Ljava/util/ArrayList;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Landroid/server/BluetoothA2dpService;->mSinkCount:I

    .line 121
    new-instance v0, Landroid/server/BluetoothA2dpService$1;

    invoke-direct {v0, p0}, Landroid/server/BluetoothA2dpService$1;-><init>(Landroid/server/BluetoothA2dpService;)V

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    new-instance v0, Landroid/server/BluetoothA2dpService$2;

    invoke-direct {v0, p0}, Landroid/server/BluetoothA2dpService$2;-><init>(Landroid/server/BluetoothA2dpService;)V

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    .line 88
    iput-object p1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    .line 90
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    .line 92
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    .line 93
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_3f

    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Platform does not support Bluetooth"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_3f
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->initNative()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not init BluetoothA2dpService"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_4d
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 102
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.intent.action.BOND_STATE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 106
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V

    .line 109
    :cond_71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/server/BluetoothA2dpService;->mLastDisconnectMs:J

    .line 110
    return-void
.end method

.method static synthetic access$000(Landroid/server/BluetoothA2dpService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$100(Landroid/server/BluetoothA2dpService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic access$200(Landroid/server/BluetoothA2dpService;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Landroid/server/BluetoothA2dpService;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$400(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->handleDeferredDisconnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Landroid/server/BluetoothA2dpService;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->connectSinkInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private native cleanupNative()V
.end method

.method private declared-synchronized connectSinkInt(Ljava/lang/String;)I
    .registers 10
    .parameter "address"

    .prologue
    const/4 v7, 0x0

    const/16 v6, -0x3e8

    const-string v3, "BluetoothA2dpService"

    const-string v3, ")"

    .line 224
    monitor-enter p0

    :try_start_8
    const-string v3, "BluetoothA2dpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectSinkInt("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->lookupPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_58

    .line 228
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->createHeadsetNativeLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    const-string v3, "BluetoothA2dpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new bluez sink: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_8 .. :try_end_58} :catchall_7f

    .line 231
    :cond_58
    if-nez v0, :cond_5d

    move v3, v6

    .line 254
    :goto_5b
    monitor-exit p0

    return v3

    .line 235
    :cond_5d
    :try_start_5d
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/server/BluetoothA2dpService$SinkState;

    .line 236
    .local v1, sink:Landroid/server/BluetoothA2dpService$SinkState;
    const/4 v2, 0x0

    .line 237
    .local v2, state:I
    if-eqz v1, :cond_6a

    .line 238
    iget v2, v1, Landroid/server/BluetoothA2dpService$SinkState;->state:I

    .line 240
    :cond_6a
    packed-switch v2, :pswitch_data_82

    .line 250
    invoke-direct {p0, v0}, Landroid/server/BluetoothA2dpService;->connectSinkNativeLocked(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_79

    move v3, v6

    .line 251
    goto :goto_5b

    :pswitch_75
    move v3, v6

    .line 244
    goto :goto_5b

    :pswitch_77
    move v3, v7

    .line 246
    goto :goto_5b

    .line 253
    :cond_79
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Landroid/server/BluetoothA2dpService;->updateState(Ljava/lang/String;I)V
    :try_end_7d
    .catchall {:try_start_5d .. :try_end_7d} :catchall_7f

    move v3, v7

    .line 254
    goto :goto_5b

    .line 224
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #sink:Landroid/server/BluetoothA2dpService$SinkState;
    .end local v2           #state:I
    :catchall_7f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 240
    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_77
        :pswitch_75
        :pswitch_75
        :pswitch_75
    .end packed-switch
.end method

.method private native connectSinkNative(Ljava/lang/String;)Z
.end method

.method private connectSinkNativeLocked(Ljava/lang/String;)Z
    .registers 4
    .parameter "path"

    .prologue
    .line 606
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->connectSinkNative(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 608
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native createHeadsetNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private createHeadsetNativeLocked(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "address"

    .prologue
    .line 579
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->createHeadsetNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 581
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native disconnectSinkNative(Ljava/lang/String;)Z
.end method

.method private disconnectSinkNativeLocked(Ljava/lang/String;)Z
    .registers 4
    .parameter "path"

    .prologue
    .line 614
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/server/BluetoothA2dpService;->mLastDisconnectMs:J

    .line 615
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 616
    :try_start_9
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->disconnectSinkNative(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 617
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private native getAddressNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private getAddressNativeLocked(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "path"

    .prologue
    .line 597
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->getAddressNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 599
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private declared-synchronized handleDeferredDisconnect(Ljava/lang/String;)V
    .registers 6
    .parameter "path"

    .prologue
    .line 443
    monitor-enter p0

    :try_start_1
    const-string v1, "BluetoothA2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDeferredDisconnect: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mPendingDisconnects:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 446
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mPendingDisconnects:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 447
    iget v0, p0, Landroid/server/BluetoothA2dpService;->mSinkCount:I

    .line 448
    .local v0, tmpSinkCount:I
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothA2dpService;->updateState(Ljava/lang/String;I)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_3e

    .line 450
    const-wide/16 v1, 0x3e8

    :try_start_2e
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_3e
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_31} :catch_3c

    .line 452
    :goto_31
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3a

    .line 453
    :try_start_34
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setBluetoothA2dpOn(Z)V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_3e

    .line 456
    .end local v0           #tmpSinkCount:I
    :cond_3a
    monitor-exit p0

    return-void

    .line 451
    .restart local v0       #tmpSinkCount:I
    :catch_3c
    move-exception v1

    goto :goto_31

    .line 443
    .end local v0           #tmpSinkCount:I
    :catchall_3e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native initNative()Z
.end method

.method private native isSinkConnectedNative(Ljava/lang/String;)Z
.end method

.method private isSinkConnectedNativeLocked(Ljava/lang/String;)Z
    .registers 4
    .parameter "path"

    .prologue
    .line 624
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 625
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->isSinkConnectedNative(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 626
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private native listHeadsetsNative()[Ljava/lang/String;
.end method

.method private listHeadsetsNativeLocked()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 570
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_3
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->listHeadsetsNative()[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 572
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 562
    const-string v0, "BluetoothA2dpService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return-void
.end method

.method private final declared-synchronized lookupAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "path"

    .prologue
    const-string v2, "BluetoothA2dpService"

    .line 469
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_56

    if-nez v2, :cond_a

    const/4 v2, 0x0

    .line 477
    :goto_8
    monitor-exit p0

    return-object v2

    .line 470
    :cond_a
    :try_start_a
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/server/BluetoothA2dpService$SinkState;

    .line 471
    .local v1, sink:Landroid/server/BluetoothA2dpService$SinkState;
    if-nez v1, :cond_30

    .line 472
    const-string v2, "BluetoothA2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lookupAddress() called for unknown device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/server/BluetoothA2dpService;->updateState(Ljava/lang/String;I)V

    .line 475
    :cond_30
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/server/BluetoothA2dpService$SinkState;

    iget-object v0, v2, Landroid/server/BluetoothA2dpService$SinkState;->address:Ljava/lang/String;

    .line 476
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_54

    const-string v2, "BluetoothA2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t find address for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_a .. :try_end_54} :catchall_56

    :cond_54
    move-object v2, v0

    .line 477
    goto :goto_8

    .line 469
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #sink:Landroid/server/BluetoothA2dpService$SinkState;
    :catchall_56
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private final declared-synchronized lookupPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    .line 481
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_33

    if-nez v2, :cond_9

    move-object v2, v3

    .line 488
    :goto_7
    monitor-exit p0

    return-object v2

    .line 483
    :cond_9
    :try_start_9
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 484
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/server/BluetoothA2dpService$SinkState;

    iget-object v2, v2, Landroid/server/BluetoothA2dpService$SinkState;->address:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_33

    move-result v2

    if-eqz v2, :cond_13

    move-object v2, v1

    .line 485
    goto :goto_7

    .end local v1           #path:Ljava/lang/String;
    :cond_31
    move-object v2, v3

    .line 488
    goto :goto_7

    .line 481
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_33
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized lookupSinksMatchingStates([I)Ljava/util/List;
    .registers 10
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    monitor-enter p0

    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v5, sinks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_33

    if-nez v7, :cond_c

    .line 504
    :cond_a
    monitor-exit p0

    return-object v5

    .line 496
    :cond_c
    :try_start_c
    iget-object v7, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/server/BluetoothA2dpService$SinkState;

    .line 497
    .local v4, sink:Landroid/server/BluetoothA2dpService$SinkState;
    move-object v0, p1

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_25
    if-ge v2, v3, :cond_16

    aget v6, v0, v2

    .line 498
    .local v6, state:I
    iget v7, v4, Landroid/server/BluetoothA2dpService$SinkState;->state:I

    if-ne v7, v6, :cond_36

    .line 499
    iget-object v7, v4, Landroid/server/BluetoothA2dpService$SinkState;->address:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_33

    goto :goto_16

    .line 492
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #sink:Landroid/server/BluetoothA2dpService$SinkState;
    .end local v5           #sinks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #state:I
    :catchall_33
    move-exception v7

    monitor-exit p0

    throw v7

    .line 497
    .restart local v0       #arr$:[I
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #sink:Landroid/server/BluetoothA2dpService$SinkState;
    .restart local v5       #sinks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #state:I
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_25
.end method

.method private declared-synchronized onBluetoothDisable()V
    .registers 9

    .prologue
    .line 199
    monitor-enter p0

    :try_start_1
    const-string v5, "BluetoothA2dpService"

    const-string v6, "onBluetoothDisable"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    if-eqz v5, :cond_50

    .line 203
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 204
    .local v4, paths:[Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #paths:[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    .line 205
    .restart local v4       #paths:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_29
    if-ge v1, v2, :cond_4d

    aget-object v3, v0, v1

    .line 206
    .local v3, path:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/server/BluetoothA2dpService$SinkState;

    iget v5, v5, Landroid/server/BluetoothA2dpService$SinkState;->state:I

    packed-switch v5, :pswitch_data_5c

    .line 205
    :goto_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 210
    :pswitch_3d
    invoke-direct {p0, v3}, Landroid/server/BluetoothA2dpService;->disconnectSinkNativeLocked(Ljava/lang/String;)Z

    .line 211
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Landroid/server/BluetoothA2dpService;->updateState(Ljava/lang/String;I)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_45

    goto :goto_3a

    .line 199
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #paths:[Ljava/lang/String;
    :catchall_45
    move-exception v5

    monitor-exit p0

    throw v5

    .line 214
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #path:Ljava/lang/String;
    .restart local v4       #paths:[Ljava/lang/String;
    :pswitch_48
    const/4 v5, 0x0

    :try_start_49
    invoke-direct {p0, v3, v5}, Landroid/server/BluetoothA2dpService;->updateState(Ljava/lang/String;I)V

    goto :goto_3a

    .line 218
    .end local v3           #path:Ljava/lang/String;
    :cond_4d
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    .line 220
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #paths:[Ljava/lang/String;
    :cond_50
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v6, "bluetooth_enabled"

    const-string v7, "false"

    invoke-virtual {v5, v6, v7}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_45

    .line 221
    monitor-exit p0

    return-void

    .line 206
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_3d
        :pswitch_48
        :pswitch_3d
    .end packed-switch
.end method

.method private declared-synchronized onBluetoothEnable()V
    .registers 10

    .prologue
    .line 185
    monitor-enter p0

    :try_start_1
    const-string v5, "BluetoothA2dpService"

    const-string v6, "onBluetoothEnable"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    .line 187
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->listHeadsetsNativeLocked()[Ljava/lang/String;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 188
    .local v4, paths:[Ljava/lang/String;
    if-eqz v4, :cond_38

    .line 189
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1a
    if-ge v1, v2, :cond_38

    aget-object v3, v0, v1

    .line 190
    .local v3, path:Ljava/lang/String;
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    new-instance v6, Landroid/server/BluetoothA2dpService$SinkState;

    invoke-direct {p0, v3}, Landroid/server/BluetoothA2dpService;->getAddressNativeLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v3}, Landroid/server/BluetoothA2dpService;->isSinkConnectedNativeLocked(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_36

    const/4 v8, 0x2

    :goto_2d
    invoke-direct {v6, p0, v7, v8}, Landroid/server/BluetoothA2dpService$SinkState;-><init>(Landroid/server/BluetoothA2dpService;Ljava/lang/String;I)V

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 190
    :cond_36
    const/4 v8, 0x0

    goto :goto_2d

    .line 195
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #path:Ljava/lang/String;
    :cond_38
    iget-object v5, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v6, "bluetooth_enabled"

    const-string v7, "true"

    invoke-virtual {v5, v6, v7}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    .line 196
    monitor-exit p0

    return-void

    .line 185
    .end local v4           #paths:[Ljava/lang/String;
    :catchall_43
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized onHeadsetCreated(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    .line 389
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothA2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHeadsetCreated: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothA2dpService;->updateState(Ljava/lang/String;I)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 391
    monitor-exit p0

    return-void

    .line 389
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onHeadsetRemoved(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    .line 394
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothA2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHeadsetRemoved: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_25

    if-nez v0, :cond_1f

    .line 397
    :goto_1d
    monitor-exit p0

    return-void

    .line 396
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_25

    goto :goto_1d

    .line 394
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onSinkConnected(Ljava/lang/String;)V
    .registers 12
    .parameter "path"

    .prologue
    const/4 v9, 0x2

    .line 400
    monitor-enter p0

    :try_start_2
    const-string v6, "BluetoothA2dpService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSinkConnected: path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mPendingDisconnects:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 405
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_5d

    if-nez v6, :cond_25

    .line 428
    :goto_23
    monitor-exit p0

    return-void

    .line 411
    :cond_25
    :try_start_25
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 412
    .local v4, paths:[Ljava/lang/String;
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #paths:[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    .line 413
    .restart local v4       #paths:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3c
    if-ge v1, v2, :cond_60

    aget-object v3, v0, v1

    .line 414
    .local v3, oldPath:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 413
    :cond_46
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 417
    :cond_49
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/server/BluetoothA2dpService$SinkState;

    iget v5, v6, Landroid/server/BluetoothA2dpService$SinkState;->state:I

    .line 418
    .local v5, state:I
    if-eq v5, v9, :cond_58

    const/4 v6, 0x4

    if-ne v5, v6, :cond_46

    .line 420
    :cond_58
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Landroid/server/BluetoothA2dpService;->updateState(Ljava/lang/String;I)V
    :try_end_5c
    .catchall {:try_start_25 .. :try_end_5c} :catchall_5d

    goto :goto_46

    .line 400
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #oldPath:Ljava/lang/String;
    .end local v4           #paths:[Ljava/lang/String;
    .end local v5           #state:I
    :catchall_5d
    move-exception v6

    monitor-exit p0

    throw v6

    .line 424
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v4       #paths:[Ljava/lang/String;
    :cond_60
    const/4 v6, 0x1

    :try_start_61
    invoke-direct {p0, p1, v6}, Landroid/server/BluetoothA2dpService;->updateState(Ljava/lang/String;I)V

    .line 425
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const-string v7, "a2dp_sink_address"

    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->lookupAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v6, p0, Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->setBluetoothA2dpOn(Z)V

    .line 427
    const/4 v6, 0x2

    invoke-direct {p0, p1, v6}, Landroid/server/BluetoothA2dpService;->updateState(Ljava/lang/String;I)V
    :try_end_79
    .catchall {:try_start_61 .. :try_end_79} :catchall_5d

    goto :goto_23
.end method

.method private declared-synchronized onSinkDisconnected(Ljava/lang/String;)V
    .registers 6
    .parameter "path"

    .prologue
    .line 431
    monitor-enter p0

    :try_start_1
    const-string v1, "BluetoothA2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSinkDisconnected: path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mPendingDisconnects:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 439
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 440
    monitor-exit p0

    return-void

    .line 431
    .end local v0           #msg:Landroid/os/Message;
    :catchall_2e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized onSinkPlaying(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    .line 459
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothA2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSinkPlaying: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothA2dpService;->updateState(Ljava/lang/String;I)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 461
    monitor-exit p0

    return-void

    .line 459
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onSinkStopped(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    .line 464
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothA2dpService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSinkStopped: path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothA2dpService;->updateState(Ljava/lang/String;I)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 466
    monitor-exit p0

    return-void

    .line 464
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native removeHeadsetNative(Ljava/lang/String;)Z
.end method

.method private removeHeadsetNativeLocked(Ljava/lang/String;)Z
    .registers 4
    .parameter "path"

    .prologue
    .line 588
    sget-object v0, Landroid/server/BluetoothDeviceService;->lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 589
    :try_start_3
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->removeHeadsetNative(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 590
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method private declared-synchronized updateState(Ljava/lang/String;I)V
    .registers 12
    .parameter "path"
    .parameter "state"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 508
    monitor-enter p0

    :try_start_4
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_96

    if-nez v4, :cond_a

    .line 549
    :cond_8
    :goto_8
    monitor-exit p0

    return-void

    .line 510
    :cond_a
    :try_start_a
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/server/BluetoothA2dpService$SinkState;

    .line 513
    .local v3, s:Landroid/server/BluetoothA2dpService$SinkState;
    if-nez v3, :cond_99

    .line 514
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->getAddressNativeLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, address:Ljava/lang/String;
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    new-instance v5, Landroid/server/BluetoothA2dpService$SinkState;

    invoke-direct {v5, p0, v0, p2}, Landroid/server/BluetoothA2dpService$SinkState;-><init>(Landroid/server/BluetoothA2dpService;Ljava/lang/String;I)V

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const/4 v2, 0x0

    .line 523
    .local v2, prevState:I
    :goto_23
    if-eq p2, v2, :cond_8

    .line 524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V

    .line 527
    if-nez v2, :cond_a2

    .line 528
    iget v4, p0, Landroid/server/BluetoothA2dpService;->mSinkCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/server/BluetoothA2dpService;->mSinkCount:I

    .line 533
    :cond_61
    :goto_61
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.bluetooth.a2dp.intent.action.SINK_STATE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 534
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    const-string v4, "android.bluetooth.a2dp.intent.SINK_PREVIOUS_STATE"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    const-string v4, "android.bluetooth.a2dp.intent.SINK_STATE"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 537
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 539
    if-eq v2, v7, :cond_82

    if-ne v2, v8, :cond_8

    :cond_82
    if-eq p2, v6, :cond_8

    if-eq p2, v7, :cond_8

    if-eq p2, v8, :cond_8

    .line 545
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 546
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v4, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_94
    .catchall {:try_start_a .. :try_end_94} :catchall_96

    goto/16 :goto_8

    .line 508
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #prevState:I
    .end local v3           #s:Landroid/server/BluetoothA2dpService$SinkState;
    :catchall_96
    move-exception v4

    monitor-exit p0

    throw v4

    .line 518
    .restart local v3       #s:Landroid/server/BluetoothA2dpService$SinkState;
    :cond_99
    :try_start_99
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->lookupAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    .restart local v0       #address:Ljava/lang/String;
    iget v2, v3, Landroid/server/BluetoothA2dpService$SinkState;->state:I

    .line 520
    .restart local v2       #prevState:I
    iput p2, v3, Landroid/server/BluetoothA2dpService$SinkState;->state:I

    goto :goto_23

    .line 529
    :cond_a2
    if-nez p2, :cond_61

    .line 530
    iget v4, p0, Landroid/server/BluetoothA2dpService;->mSinkCount:I

    sub-int/2addr v4, v6

    iput v4, p0, Landroid/server/BluetoothA2dpService;->mSinkCount:I
    :try_end_a9
    .catchall {:try_start_99 .. :try_end_a9} :catchall_96

    goto :goto_61
.end method


# virtual methods
.method public declared-synchronized connectSink(Ljava/lang/String;)I
    .registers 16
    .parameter "address"

    .prologue
    .line 258
    monitor-enter p0

    :try_start_1
    iget-object v10, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.BLUETOOTH_ADMIN"

    const-string v12, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v10, "BluetoothA2dpService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "connectSink("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_fc

    move-result v10

    if-nez v10, :cond_32

    .line 264
    const/16 v10, -0x3e8

    .line 306
    :goto_30
    monitor-exit p0

    return v10

    .line 266
    :cond_32
    :try_start_32
    iget-object v10, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    if-nez v10, :cond_39

    .line 267
    const/16 v10, -0x3e8

    goto :goto_30

    .line 269
    :cond_39
    iget-object v10, p0, Landroid/server/BluetoothA2dpService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_62

    .line 270
    const-string v10, "BluetoothA2dpService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Oops, connectSink "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " when BT is disabled!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/16 v10, -0x3e8

    goto :goto_30

    .line 273
    :cond_62
    iget-object v10, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 276
    const/4 v1, 0x0

    .line 277
    .local v1, disconnecting:Z
    iget-object v10, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    new-array v8, v10, [Ljava/lang/String;

    .line 278
    .local v8, paths:[Ljava/lang/String;
    iget-object v10, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .end local v8           #paths:[Ljava/lang/String;
    check-cast v8, [Ljava/lang/String;

    .line 279
    .restart local v8       #paths:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_80
    if-ge v4, v5, :cond_c3

    aget-object v7, v0, v4

    .line 280
    .local v7, path:Ljava/lang/String;
    iget-object v10, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/server/BluetoothA2dpService$SinkState;

    .line 281
    .local v9, sink:Landroid/server/BluetoothA2dpService$SinkState;
    iget v10, v9, Landroid/server/BluetoothA2dpService$SinkState;->state:I

    packed-switch v10, :pswitch_data_100

    .line 279
    :goto_91
    :pswitch_91
    add-int/lit8 v4, v4, 0x1

    goto :goto_80

    .line 285
    :pswitch_94
    const-string v10, "BluetoothA2dpService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Disconnecting active sink "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/server/BluetoothA2dpService$SinkState;->address:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in state "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v9, Landroid/server/BluetoothA2dpService$SinkState;->state:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0, v7}, Landroid/server/BluetoothA2dpService;->disconnectSinkNativeLocked(Ljava/lang/String;)Z

    .line 287
    const/4 v10, 0x3

    invoke-direct {p0, v7, v10}, Landroid/server/BluetoothA2dpService;->updateState(Ljava/lang/String;I)V

    .line 288
    const/4 v1, 0x1

    goto :goto_91

    .line 293
    .end local v7           #path:Ljava/lang/String;
    .end local v9           #sink:Landroid/server/BluetoothA2dpService$SinkState;
    :cond_c3
    if-eqz v1, :cond_d6

    .line 294
    iget-object v10, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-static {v10, v11, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 295
    .local v6, msg:Landroid/os/Message;
    iget-object v10, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const-wide/16 v11, 0xfa0

    invoke-virtual {v10, v6, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 296
    const/4 v10, 0x0

    goto/16 :goto_30

    .line 299
    .end local v6           #msg:Landroid/os/Message;
    :cond_d6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Landroid/server/BluetoothA2dpService;->mLastDisconnectMs:J

    sub-long v2, v10, v12

    .line 300
    .local v2, dt:J
    const-wide/16 v10, 0xfa0

    cmp-long v10, v2, v10

    if-gez v10, :cond_f6

    .line 301
    iget-object v10, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-static {v10, v11, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 302
    .restart local v6       #msg:Landroid/os/Message;
    iget-object v10, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const-wide/16 v11, 0xfa0

    sub-long/2addr v11, v2

    invoke-virtual {v10, v6, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 303
    const/4 v10, 0x0

    goto/16 :goto_30

    .line 306
    .end local v6           #msg:Landroid/os/Message;
    :cond_f6
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->connectSinkInt(Ljava/lang/String;)I
    :try_end_f9
    .catchall {:try_start_32 .. :try_end_f9} :catchall_fc

    move-result v10

    goto/16 :goto_30

    .line 258
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #disconnecting:Z
    .end local v2           #dt:J
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v8           #paths:[Ljava/lang/String;
    :catchall_fc
    move-exception v10

    monitor-exit p0

    throw v10

    .line 281
    nop

    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_94
        :pswitch_94
        :pswitch_91
        :pswitch_94
    .end packed-switch
.end method

.method public declared-synchronized disconnectSink(Ljava/lang/String;)I
    .registers 8
    .parameter "address"

    .prologue
    const/4 v5, 0x0

    const/16 v4, -0x3e8

    const-string v1, "BluetoothA2dpService"

    .line 310
    monitor-enter p0

    :try_start_6
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v1, "BluetoothA2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnectSink("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 315
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 316
    const-string v1, "BluetoothA2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Oops, disconnectSink "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when BT is disabled!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_6 .. :try_end_59} :catchall_91

    move v1, v4

    .line 341
    :goto_5a
    monitor-exit p0

    return v1

    .line 319
    :cond_5c
    :try_start_5c
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_64

    move v1, v4

    .line 320
    goto :goto_5a

    .line 322
    :cond_64
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    if-nez v1, :cond_6a

    move v1, v4

    .line 323
    goto :goto_5a

    .line 325
    :cond_6a
    invoke-direct {p0, p1}, Landroid/server/BluetoothA2dpService;->lookupPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_72

    move v1, v4

    .line 327
    goto :goto_5a

    .line 329
    :cond_72
    iget-object v1, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/server/BluetoothA2dpService$SinkState;

    iget v1, v1, Landroid/server/BluetoothA2dpService$SinkState;->state:I

    packed-switch v1, :pswitch_data_94

    .line 337
    :pswitch_7f
    invoke-direct {p0, v0}, Landroid/server/BluetoothA2dpService;->disconnectSinkNativeLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8b

    move v1, v4

    .line 338
    goto :goto_5a

    :pswitch_87
    move v1, v4

    .line 331
    goto :goto_5a

    :pswitch_89
    move v1, v5

    .line 333
    goto :goto_5a

    .line 340
    :cond_8b
    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Landroid/server/BluetoothA2dpService;->updateState(Ljava/lang/String;I)V
    :try_end_8f
    .catchall {:try_start_5c .. :try_end_8f} :catchall_91

    move v1, v5

    .line 341
    goto :goto_5a

    .line 310
    .end local v0           #path:Ljava/lang/String;
    :catchall_91
    move-exception v1

    monitor-exit p0

    throw v1

    .line 329
    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_87
        :pswitch_7f
        :pswitch_7f
        :pswitch_89
    .end packed-switch
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const-string v3, " "

    .line 553
    monitor-enter p0

    :try_start_3
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_59

    if-nez v3, :cond_9

    .line 559
    :cond_7
    monitor-exit p0

    return-void

    .line 554
    :cond_9
    :try_start_9
    const-string v3, "Cached audio devices:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 556
    .local v1, path:Ljava/lang/String;
    iget-object v3, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/server/BluetoothA2dpService$SinkState;

    .line 557
    .local v2, sink:Landroid/server/BluetoothA2dpService$SinkState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/server/BluetoothA2dpService$SinkState;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/server/BluetoothA2dpService$SinkState;->state:I

    invoke-static {v4}, Landroid/bluetooth/BluetoothA2dp;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_9 .. :try_end_58} :catchall_59

    goto :goto_18

    .line 553
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #sink:Landroid/server/BluetoothA2dpService$SinkState;
    :catchall_59
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 115
    :try_start_0
    invoke-direct {p0}, Landroid/server/BluetoothA2dpService;->cleanupNative()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 117
    invoke-super {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->finalize()V

    .line 119
    return-void

    .line 117
    :catchall_7
    move-exception v0

    invoke-super {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->finalize()V

    throw v0
.end method

.method public declared-synchronized getSinkPriority(Ljava/lang/String;)I
    .registers 5
    .parameter "address"

    .prologue
    .line 368
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_24

    move-result v0

    if-nez v0, :cond_14

    .line 370
    const/16 v0, -0x3e8

    .line 372
    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_24

    move-result v0

    goto :goto_12

    .line 368
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSinkState(Ljava/lang/String;)I
    .registers 8
    .parameter "address"

    .prologue
    const/4 v5, 0x0

    .line 352
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_3e

    move-result v2

    if-nez v2, :cond_15

    .line 354
    const/16 v2, -0x3e8

    .line 364
    :goto_13
    monitor-exit p0

    return v2

    .line 356
    :cond_15
    :try_start_15
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    if-nez v2, :cond_1b

    move v2, v5

    .line 357
    goto :goto_13

    .line 359
    :cond_1b
    iget-object v2, p0, Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/server/BluetoothA2dpService$SinkState;

    .line 360
    .local v1, sink:Landroid/server/BluetoothA2dpService$SinkState;
    iget-object v2, v1, Landroid/server/BluetoothA2dpService$SinkState;->address:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 361
    iget v2, v1, Landroid/server/BluetoothA2dpService$SinkState;->state:I
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_3e

    goto :goto_13

    .end local v1           #sink:Landroid/server/BluetoothA2dpService$SinkState;
    :cond_3c
    move v2, v5

    .line 364
    goto :goto_13

    .line 352
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_3e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized listConnectedSinks()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    invoke-direct {p0, v0}, Landroid/server/BluetoothA2dpService;->lookupSinksMatchingStates([I)Ljava/util/List;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_16

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 346
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0

    .line 347
    nop

    :array_1a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public declared-synchronized setSinkPriority(Ljava/lang/String;I)I
    .registers 7
    .parameter "address"
    .parameter "priority"

    .prologue
    const/16 v3, -0x3e8

    .line 378
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_29

    move-result v0

    if-nez v0, :cond_15

    move v0, v3

    .line 383
    :goto_13
    monitor-exit p0

    return v0

    :cond_15
    :try_start_15
    iget-object v0, p0, Landroid/server/BluetoothA2dpService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getBluetoothA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_29

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_13

    :cond_27
    move v0, v3

    goto :goto_13

    .line 378
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method
