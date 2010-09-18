.class public Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;
.super Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;
.source "BluetoothDataGatewayService.java"


# static fields
.field public static final BLUETOOTH_DUN_DG_SERVICE_ID:B = 0x2t

.field public static final BLUETOOTH_FAX_DG_SERVICE_ID:B = 0x3t

.field public static final BLUETOOTH_SPP_CONNECTED:I = 0x2

.field public static final BLUETOOTH_SPP_CONNECTED_TO_HOST:I = 0x2

.field public static final BLUETOOTH_SPP_CONNECTING_TO_HOST:I = 0x4

.field public static final BLUETOOTH_SPP_CONNECTING_TO_HOST_FAILED:I = 0x5

.field public static final BLUETOOTH_SPP_DATA_RECEIVED:I = 0x7

.field public static final BLUETOOTH_SPP_DATA_SENT:I = 0x6

.field public static final BLUETOOTH_SPP_DG_SERVICE_ID:B = 0x1t

.field public static final BLUETOOTH_SPP_DISCONNECTED:I = 0x3

.field public static final BLUETOOTH_SPP_PORT_CREATED:I = 0x0

.field public static final BLUETOOTH_SPP_PORT_DISABLED:I = 0x8

.field public static final BLUETOOTH_SPP_PORT_ENABLED:I = 0x1

.field public static final BLUETOOTH_SPP_PORT_ID_INVALID:B = -0x1t

.field public static final BLUETOOTH_SPP_PORT_STATE_ERROR:I = -0x1

.field public static final BLUETOOTH_SPP_PORT_STATE_UNKNOWN:I = 0x64

.field private static final DATA_GATEWAY_DISABLED:I = 0x0

.field private static final DATA_GATEWAY_ENABLED:I = 0x1

.field public static final DATA_GATEWAY_MAX_SPP_PORT:I = 0x5

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothDataGatewayService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataGatewayNativeData:I

.field private mIsFinish:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSppCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 118
    invoke-static {}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->classInitNative()V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 7
    .parameter "context"
    .parameter "isAppService"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->mContext:Landroid/content/Context;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    .line 179
    if-nez p2, :cond_24

    .line 180
    new-instance v0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService$1;-><init>(Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    :goto_23
    return-void

    .line 198
    :cond_24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->mReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_23
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupBluetoothDataGatewayDataNative()V
.end method

.method private native cleanupSerialPortNative(B)V
.end method

.method private native dataGatewayCloseNative(BB)V
.end method

.method private native dataGatewayDisableNative()V
.end method

.method private native dataGatewayEnableNative()V
.end method

.method private native dataGatewayListenNative(BBLjava/lang/String;B)V
.end method

.method private native dataGatewayOpenNative(Ljava/lang/String;BBLjava/lang/String;B)V
.end method

.method private native dataGatewayShutdownNative(BB)V
.end method

.method private native getSerialPortStatusNative(B)I
.end method

.method private native initBluetoothDataGatewayDataNative()V
.end method

.method private onDataArrivedOnPort(BB)V
    .registers 7
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    const-string v3, "BluetoothDataGatewayService"

    .line 561
    const-string v1, "BluetoothDataGatewayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Data Arrived on Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    packed-switch p1, :pswitch_data_3e

    .line 583
    .end local p0
    :goto_23
    :pswitch_23
    return-void

    .line 566
    .restart local p0
    :pswitch_24
    :try_start_24
    iget-object v1, p0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;

    invoke-interface {p0, p2}, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;->onPortDataArrived(B)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_34

    goto :goto_23

    .line 567
    :catch_34
    move-exception v1

    move-object v0, v1

    .line 568
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothDataGatewayService"

    const-string v1, "callback.onPortDataArrived() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 562
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method private onDataGatewayClosed(BB)V
    .registers 7
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    const-string v3, "BluetoothDataGatewayService"

    .line 533
    const-string v1, "BluetoothDataGatewayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Data Gateway Closed on Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    packed-switch p1, :pswitch_data_3e

    .line 557
    .end local p0
    :goto_23
    :pswitch_23
    return-void

    .line 538
    .restart local p0
    :pswitch_24
    :try_start_24
    iget-object v1, p0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;

    invoke-interface {p0, p2}, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;->onPortDisconnected(B)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_34

    goto :goto_23

    .line 539
    :catch_34
    move-exception v1

    move-object v0, v1

    .line 540
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothDataGatewayService"

    const-string v1, "callback.onPortDisconnected() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 534
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method private onDataGatewayEnabled()V
    .registers 3

    .prologue
    .line 450
    const-string v0, "BluetoothDataGatewayService"

    const-string v1, "#### Data Gateway Enabled ####"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void
.end method

.method private onDataGatewayListen(BB)V
    .registers 7
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    const-string v3, "BluetoothDataGatewayService"

    .line 456
    const-string v1, "BluetoothDataGatewayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Data Gateway Listen on Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    packed-switch p1, :pswitch_data_3e

    .line 478
    .end local p0
    :goto_23
    :pswitch_23
    return-void

    .line 461
    .restart local p0
    :pswitch_24
    :try_start_24
    iget-object v1, p0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;

    invoke-interface {p0, p2}, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;->onSppServerPortEnabled(B)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_34

    goto :goto_23

    .line 462
    :catch_34
    move-exception v1

    move-object v0, v1

    .line 463
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothDataGatewayService"

    const-string v1, "callback.onSppServerPortEnabled() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 457
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method private onDataGatewayOpen(BBLjava/lang/String;)V
    .registers 8
    .parameter "serviceId"
    .parameter "appId"
    .parameter "bdAddress"

    .prologue
    const-string v3, "BluetoothDataGatewayService"

    .line 507
    const-string v1, "BluetoothDataGatewayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Data Gateway Connected on Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    packed-switch p1, :pswitch_data_48

    .line 530
    .end local p0
    :goto_2d
    :pswitch_2d
    return-void

    .line 512
    .restart local p0
    :pswitch_2e
    :try_start_2e
    iget-object v1, p0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;

    invoke-interface {p0, p2, p3}, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;->onPortConnected(BLjava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3d} :catch_3e

    goto :goto_2d

    .line 513
    :catch_3e
    move-exception v1

    move-object v0, v1

    .line 514
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothDataGatewayService"

    const-string v1, "callback.onPortConnectingToHost() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 508
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method private onDataGatewayOpening(BB)V
    .registers 7
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    const-string v3, "BluetoothDataGatewayService"

    .line 481
    const-string v1, "BluetoothDataGatewayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Data Gateway Openning on Port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    packed-switch p1, :pswitch_data_3e

    .line 504
    .end local p0
    :goto_23
    :pswitch_23
    return-void

    .line 486
    .restart local p0
    :pswitch_24
    :try_start_24
    iget-object v1, p0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;

    invoke-interface {p0, p2}, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;->onPortConnectingToHost(B)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_34

    goto :goto_23

    .line 487
    :catch_34
    move-exception v1

    move-object v0, v1

    .line 488
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BluetoothDataGatewayService"

    const-string v1, "callback.onPortConnectingToHost() failed"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 482
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method private native setSerialPortStatusNative(BI)V
.end method

.method private native sppReadNative(B)[B
.end method

.method private native sppWriteNative(BI[B)I
.end method

.method private native waitForDataOnPortNative(B)V
.end method


# virtual methods
.method public declared-synchronized cleanupSerialPort(B)V
    .registers 5
    .parameter "appId"

    .prologue
    .line 438
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->cleanupSerialPortNative(B)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 442
    :goto_4
    monitor-exit p0

    return-void

    .line 439
    :catch_6
    move-exception v0

    .line 440
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "cleanupSerialPortNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 438
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayClose(BB)V
    .registers 6
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    .line 322
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->dataGatewayCloseNative(BB)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 327
    :goto_4
    monitor-exit p0

    return-void

    .line 323
    :catch_6
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayCloseNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 322
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayDisable()V
    .registers 4

    .prologue
    .line 268
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->dataGatewayDisableNative()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 272
    :goto_4
    monitor-exit p0

    return-void

    .line 269
    :catch_6
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayDisableNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 268
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayEnable()V
    .registers 4

    .prologue
    .line 254
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->dataGatewayEnableNative()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 258
    :goto_4
    monitor-exit p0

    return-void

    .line 255
    :catch_6
    move-exception v0

    .line 256
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayEnableNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 254
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayListen(BBLjava/lang/String;B)V
    .registers 8
    .parameter "serviceId"
    .parameter "securityMask"
    .parameter "serviceName"
    .parameter "appId"

    .prologue
    .line 287
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->dataGatewayListenNative(BBLjava/lang/String;B)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 292
    :goto_4
    monitor-exit p0

    return-void

    .line 288
    :catch_6
    move-exception v0

    .line 289
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayListenNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 287
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayOpen(Ljava/lang/String;BBLjava/lang/String;B)V
    .registers 9
    .parameter "bdAddress"
    .parameter "serviceId"
    .parameter "securityMask"
    .parameter "serviceName"
    .parameter "appId"

    .prologue
    .line 306
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p5}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->dataGatewayOpenNative(Ljava/lang/String;BBLjava/lang/String;B)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 310
    :goto_4
    monitor-exit p0

    return-void

    .line 307
    :catch_6
    move-exception v0

    .line 308
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayOpenNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 306
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dataGatewayShutdown(BB)V
    .registers 6
    .parameter "serviceId"
    .parameter "appId"

    .prologue
    .line 340
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->dataGatewayShutdownNative(BB)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 345
    :goto_4
    monitor-exit p0

    return-void

    .line 341
    :catch_6
    move-exception v0

    .line 342
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayShutdownNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 340
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
    .line 148
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->finish()V

    .line 149
    invoke-super {p0}, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;->finalize()V

    .line 150
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 4

    .prologue
    .line 136
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->mIsFinish:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v1, :cond_b

    .line 138
    :try_start_5
    invoke-direct {p0}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->cleanupBluetoothDataGatewayDataNative()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_16
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_d

    .line 142
    :goto_8
    const/4 v1, 0x1

    :try_start_9
    iput-boolean v1, p0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->mIsFinish:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_16

    .line 144
    :cond_b
    monitor-exit p0

    return-void

    .line 139
    :catch_d
    move-exception v0

    .line 140
    .local v0, t:Ljava/lang/Throwable;
    :try_start_e
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "Unable to cleanup data gateway"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_8

    .line 136
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getFirstAvailableSerialPort()B
    .registers 6

    .prologue
    .line 231
    monitor-enter p0

    const/4 v2, -0x1

    .line 232
    .local v2, portState:I
    const/4 v1, 0x0

    .local v1, i:B
    :goto_3
    const/4 v3, 0x5

    if-ge v1, v3, :cond_21

    .line 234
    :try_start_6
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->getSerialPortStatusNative(B)I
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_1a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_11

    move-result v2

    .line 238
    :goto_a
    const/16 v3, 0x64

    if-ne v2, v3, :cond_1d

    move v3, v1

    .line 243
    :goto_f
    monitor-exit p0

    return v3

    .line 235
    :catch_11
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/Exception;
    :try_start_12
    const-string v3, "BluetoothDataGatewayService"

    const-string v4, "getSerialPortStatusNative failed in getFirstAvailableSerialPort"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1a

    goto :goto_a

    .line 231
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1a
    move-exception v3

    monitor-exit p0

    throw v3

    .line 232
    :cond_1d
    add-int/lit8 v3, v1, 0x1

    int-to-byte v1, v3

    goto :goto_3

    .line 243
    :cond_21
    const/4 v3, -0x1

    goto :goto_f
.end method

.method public declared-synchronized getSerialPortStatus(B)I
    .registers 5
    .parameter "appId"

    .prologue
    .line 407
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->getSerialPortStatusNative(B)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_7

    move-result v1

    .line 410
    :goto_5
    monitor-exit p0

    return v1

    .line 408
    :catch_7
    move-exception v0

    .line 409
    .local v0, e:Ljava/lang/Exception;
    :try_start_8
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "dataGatewayShutdownNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_11

    .line 410
    const/4 v1, -0x1

    goto :goto_5

    .line 407
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized init()V
    .registers 2

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->initBluetoothDataGatewayDataNative()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 130
    monitor-exit p0

    return-void

    .line 129
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerSppCallback(ILcom/broadcom/bt/service/dg/IBluetoothSPPCallback;)V
    .registers 5
    .parameter "portId"
    .parameter "callback"

    .prologue
    .line 210
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_19

    move-result v0

    if-eqz v0, :cond_f

    .line 215
    :goto_d
    monitor-exit p0

    return-void

    .line 214
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_19

    goto :goto_d

    .line 210
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSerialPortStatus(BI)V
    .registers 6
    .parameter "appId"
    .parameter "status"

    .prologue
    .line 423
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->setSerialPortStatusNative(BI)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 427
    :goto_4
    monitor-exit p0

    return-void

    .line 424
    :catch_6
    move-exception v0

    .line 425
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "setSerialPortStatusNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 423
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sppRead(B)[B
    .registers 5
    .parameter "appId"

    .prologue
    .line 376
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->sppReadNative(B)[B
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_7

    move-result-object v1

    .line 379
    :goto_5
    monitor-exit p0

    return-object v1

    .line 377
    :catch_7
    move-exception v0

    .line 378
    .local v0, e:Ljava/lang/Exception;
    :try_start_8
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "sppReadNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_11

    .line 379
    const/4 v1, 0x0

    goto :goto_5

    .line 376
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sppWrite(BI[B)I
    .registers 7
    .parameter "appId"
    .parameter "length"
    .parameter "dataBuffer"

    .prologue
    .line 359
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->sppWriteNative(BI[B)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_7

    move-result v1

    .line 362
    :goto_5
    monitor-exit p0

    return v1

    .line 360
    :catch_7
    move-exception v0

    .line 361
    .local v0, e:Ljava/lang/Exception;
    :try_start_8
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "sppWriteNative Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_11

    .line 362
    const/4 v1, -0x1

    goto :goto_5

    .line 359
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unregisterSppCallback(I)V
    .registers 4
    .parameter "portId"

    .prologue
    .line 223
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->mSppCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 224
    monitor-exit p0

    return-void

    .line 223
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitForDataOnPort(B)V
    .registers 5
    .parameter "appId"

    .prologue
    .line 393
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->waitForDataOnPortNative(B)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    .line 397
    :goto_4
    monitor-exit p0

    return-void

    .line 394
    :catch_6
    move-exception v0

    .line 395
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v1, "BluetoothDataGatewayService"

    const-string v2, "waitForDataOnPort Failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_f

    goto :goto_4

    .line 393
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method
