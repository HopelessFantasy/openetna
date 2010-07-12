.class public Lcom/broadcom/bt/service/hid/BluetoothHidService;
.super Lcom/broadcom/bt/service/hid/IBluetoothHid$Stub;
.source "BluetoothHidService.java"


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field public static final BLUETOOTH_HID_SERVICE:Ljava/lang/String; = "bluetooth_hid"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final TAG:Ljava/lang/String; = "BluetoothHidService"


# instance fields
.field private final mBluetooth:Landroid/bluetooth/BluetoothDevice;

.field private final mContext:Landroid/content/Context;

.field private mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHidNativeData:I

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 92
    invoke-static {}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->classInitNative()V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/IBluetoothHid$Stub;-><init>()V

    .line 136
    new-instance v0, Lcom/broadcom/bt/service/hid/BluetoothHidService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/hid/BluetoothHidService$1;-><init>(Lcom/broadcom/bt/service/hid/BluetoothHidService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    iput-object p1, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mContext:Landroid/content/Context;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    .line 120
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    .line 121
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_27

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Platform does not support Bluetooth"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_27
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 126
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.intent.action.BOND_STATE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.intent.action.REMOTE_DEVICE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 131
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->onBluetoothEnable()V

    .line 133
    :cond_52
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/hid/BluetoothHidService;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/hid/BluetoothHidService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/hid/BluetoothHidService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->onBluetoothDisable()V

    return-void
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/hid/BluetoothHidService;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupHidNativeDataNative()V
.end method

.method private native connectHidNative(Ljava/lang/String;)V
.end method

.method private native disconnectHidNative(Ljava/lang/String;)V
.end method

.method private native initHidNativeDataNative()V
.end method

.method private declared-synchronized onBluetoothDisable()V
    .registers 10

    .prologue
    const-string v6, "BluetoothHidService"

    .line 206
    monitor-enter p0

    :try_start_3
    const-string v6, "BluetoothHidService"

    const-string v7, "onBluetoothDisable"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v6, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    if-eqz v6, :cond_75

    .line 209
    iget-object v6, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    new-array v1, v6, [Ljava/lang/String;

    .line 210
    .local v1, addresses:[Ljava/lang/String;
    iget-object v6, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1           #addresses:[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 211
    .restart local v1       #addresses:[Ljava/lang/String;
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_25
    if-ge v3, v4, :cond_6d

    aget-object v0, v2, v3

    .line 212
    .local v0, address:Ljava/lang/String;
    iget-object v6, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 213
    .local v5, state:I
    const-string v6, "BluetoothHidService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onBluetoothDisable: address = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    packed-switch v5, :pswitch_data_78

    .line 211
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 217
    :pswitch_5d
    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->disconnectHidNative(Ljava/lang/String;)V

    .line 218
    const/4 v6, 0x0

    invoke-direct {p0, v0, v5, v6}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->updateState(Ljava/lang/String;II)V
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_65

    goto :goto_5a

    .line 206
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #addresses:[Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #state:I
    :catchall_65
    move-exception v6

    monitor-exit p0

    throw v6

    .line 221
    .restart local v0       #address:Ljava/lang/String;
    .restart local v1       #addresses:[Ljava/lang/String;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #state:I
    :pswitch_68
    const/4 v6, 0x0

    :try_start_69
    invoke-direct {p0, v0, v5, v6}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->updateState(Ljava/lang/String;II)V

    goto :goto_5a

    .line 225
    .end local v0           #address:Ljava/lang/String;
    .end local v5           #state:I
    :cond_6d
    iget-object v6, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 226
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;
    :try_end_75
    .catchall {:try_start_69 .. :try_end_75} :catchall_65

    .line 228
    .end local v1           #addresses:[Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_75
    monitor-exit p0

    return-void

    .line 214
    nop

    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_5d
        :pswitch_68
    .end packed-switch
.end method

.method private declared-synchronized onBluetoothEnable()V
    .registers 3

    .prologue
    .line 200
    monitor-enter p0

    :try_start_1
    const-string v0, "BluetoothHidService"

    const-string v1, "onBluetoothEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 202
    monitor-exit p0

    return-void

    .line 200
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onHidConnected(Ljava/lang/String;I)V
    .registers 7
    .parameter "address"
    .parameter "status"

    .prologue
    const-string v1, "BluetoothHidService"

    .line 329
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothHidService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHidConnected: address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    if-nez v1, :cond_32

    .line 332
    const-string v1, "BluetoothHidService"

    const-string v2, "onHidConnected: mDevices = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_53

    .line 350
    :goto_30
    monitor-exit p0

    return-void

    .line 336
    :cond_32
    :try_start_32
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 337
    const-string v1, "BluetoothHidService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHidConnected: no devices "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_32 .. :try_end_52} :catchall_53

    goto :goto_30

    .line 329
    :catchall_53
    move-exception v1

    monitor-exit p0

    throw v1

    .line 341
    :cond_56
    :try_start_56
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 342
    .local v0, state:I
    const-string v1, "BluetoothHidService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHidConnected: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    if-nez p2, :cond_81

    .line 345
    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->updateState(Ljava/lang/String;II)V

    goto :goto_30

    .line 348
    :cond_81
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->updateState(Ljava/lang/String;II)V
    :try_end_85
    .catchall {:try_start_56 .. :try_end_85} :catchall_53

    goto :goto_30
.end method

.method private declared-synchronized onHidDisconnected(Ljava/lang/String;I)V
    .registers 7
    .parameter "address"
    .parameter "status"

    .prologue
    const-string v1, "BluetoothHidService"

    .line 356
    monitor-enter p0

    :try_start_3
    const-string v1, "BluetoothHidService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHidDisconnected: address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    if-nez v1, :cond_32

    .line 359
    const-string v1, "BluetoothHidService"

    const-string v2, "onHidDisconnected: mDevices = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_53

    .line 374
    :cond_30
    :goto_30
    monitor-exit p0

    return-void

    .line 363
    :cond_32
    :try_start_32
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 364
    const-string v1, "BluetoothHidService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHidDisconnected: no devices "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_32 .. :try_end_52} :catchall_53

    goto :goto_30

    .line 356
    :catchall_53
    move-exception v1

    monitor-exit p0

    throw v1

    .line 368
    :cond_56
    :try_start_56
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 369
    .local v0, state:I
    const-string v1, "BluetoothHidService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHidDisconnected: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    if-nez p2, :cond_30

    .line 372
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->updateState(Ljava/lang/String;II)V
    :try_end_80
    .catchall {:try_start_56 .. :try_end_80} :catchall_53

    goto :goto_30
.end method

.method private declared-synchronized updateState(Ljava/lang/String;II)V
    .registers 8
    .parameter "address"
    .parameter "currState"
    .parameter "nextState"

    .prologue
    .line 402
    monitor-enter p0

    :try_start_1
    const-string v1, "BluetoothHidService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateState: address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nextState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.service.hid.intent.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.intent.ADDRESS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const-string v1, "com.broadcom.bt.service.hid.intent.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    const-string v1, "com.broadcom.bt.service.hid.intent.CURR_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 408
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_55

    .line 411
    monitor-exit p0

    return-void

    .line 402
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_55
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized connect(Ljava/lang/String;)I
    .registers 8
    .parameter "address"

    .prologue
    const/4 v5, 0x0

    const/16 v4, -0x3e8

    const-string v1, "BluetoothHidService"

    .line 249
    monitor-enter p0

    :try_start_6
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v1, "BluetoothHidService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect: address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 255
    const-string v1, "BluetoothHidService"

    const-string v2, "connect: address = BluetoothError.ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_a1

    move v1, v4

    .line 282
    :goto_35
    monitor-exit p0

    return v1

    .line 259
    :cond_37
    :try_start_37
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    if-nez v1, :cond_44

    .line 260
    const-string v1, "BluetoothHidService"

    const-string v2, "connect: mDevices = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 261
    goto :goto_35

    .line 264
    :cond_44
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    .line 265
    const-string v1, "BluetoothHidService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect: new devices "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, state:I
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :goto_6f
    if-eqz v0, :cond_98

    .line 274
    const-string v1, "BluetoothHidService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 275
    goto :goto_35

    .line 270
    .end local v0           #state:I
    :cond_8b
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .restart local v0       #state:I
    goto :goto_6f

    .line 278
    :cond_98
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->connectHidNative(Ljava/lang/String;)V

    .line 280
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->updateState(Ljava/lang/String;II)V
    :try_end_9f
    .catchall {:try_start_37 .. :try_end_9f} :catchall_a1

    move v1, v5

    .line 282
    goto :goto_35

    .line 249
    .end local v0           #state:I
    :catchall_a1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized disconnect(Ljava/lang/String;)I
    .registers 8
    .parameter "address"

    .prologue
    const/4 v5, 0x0

    const/16 v4, -0x3e8

    const-string v1, "BluetoothHidService"

    .line 290
    monitor-enter p0

    :try_start_6
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v1, "BluetoothHidService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 295
    const-string v1, "BluetoothHidService"

    const-string v2, "disconnect: address = BluetoothError.ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_82

    move v1, v4

    .line 321
    :goto_35
    monitor-exit p0

    return v1

    .line 299
    :cond_37
    :try_start_37
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    if-nez v1, :cond_44

    .line 300
    const-string v1, "BluetoothHidService"

    const-string v2, "disconnect: mDevices = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 301
    goto :goto_35

    .line 304
    :cond_44
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    .line 305
    const-string v1, "BluetoothHidService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect: no devices "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 306
    goto :goto_35

    .line 309
    :cond_66
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 310
    .local v0, state:I
    packed-switch v0, :pswitch_data_86

    .line 317
    :pswitch_75
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->disconnectHidNative(Ljava/lang/String;)V

    .line 319
    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->updateState(Ljava/lang/String;II)V
    :try_end_7c
    .catchall {:try_start_37 .. :try_end_7c} :catchall_82

    move v1, v5

    .line 321
    goto :goto_35

    :pswitch_7e
    move v1, v4

    .line 312
    goto :goto_35

    :pswitch_80
    move v1, v5

    .line 314
    goto :goto_35

    .line 290
    .end local v0           #state:I
    :catchall_82
    move-exception v1

    monitor-exit p0

    throw v1

    .line 310
    nop

    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_75
        :pswitch_75
        :pswitch_80
    .end packed-switch
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->cleanupHidNativeDataNative()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_7

    .line 110
    :goto_3
    invoke-super {p0}, Lcom/broadcom/bt/service/hid/IBluetoothHid$Stub;->finalize()V

    .line 112
    return-void

    .line 107
    :catch_7
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Throwable;
    :try_start_8
    const-string v1, "BluetoothHidService"

    const-string v2, "Unable to cleanup HID service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    goto :goto_3

    .line 110
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_10
    move-exception v1

    invoke-super {p0}, Lcom/broadcom/bt/service/hid/IBluetoothHid$Stub;->finalize()V

    throw v1
.end method

.method public declared-synchronized getPriority(Ljava/lang/String;)I
    .registers 5
    .parameter "address"

    .prologue
    .line 378
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_24

    move-result v0

    if-nez v0, :cond_14

    .line 381
    const/16 v0, -0x3e8

    .line 383
    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getBluetoothHidPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_24

    move-result v0

    goto :goto_12

    .line 378
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState(Ljava/lang/String;)I
    .registers 5
    .parameter "address"

    .prologue
    .line 232
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_2f

    move-result v0

    if-nez v0, :cond_14

    .line 235
    const/16 v0, -0x3e8

    .line 242
    :goto_12
    monitor-exit p0

    return v0

    .line 238
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 239
    :cond_20
    const/4 v0, 0x0

    goto :goto_12

    .line 242
    :cond_22
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_2f

    move-result v0

    goto :goto_12

    .line 232
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init()V
    .registers 2

    .prologue
    .line 98
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->initHidNativeDataNative()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 99
    monitor-exit p0

    return-void

    .line 98
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPriority(Ljava/lang/String;I)I
    .registers 7
    .parameter "address"
    .parameter "priority"

    .prologue
    const/16 v3, -0x3e8

    .line 390
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->checkBluetoothAddress(Ljava/lang/String;)Z
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_29

    move-result v0

    if-nez v0, :cond_15

    move v0, v3

    .line 395
    :goto_13
    monitor-exit p0

    return v0

    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/broadcom/bt/service/hid/BluetoothHidService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getBluetoothHidPriorityKey(Ljava/lang/String;)Ljava/lang/String;

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

    .line 390
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method
