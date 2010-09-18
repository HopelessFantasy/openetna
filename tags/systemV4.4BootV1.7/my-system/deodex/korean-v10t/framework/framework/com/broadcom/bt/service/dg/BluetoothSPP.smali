.class public Lcom/broadcom/bt/service/dg/BluetoothSPP;
.super Ljava/lang/Object;
.source "BluetoothSPP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_SPP_PORT_TYPE_CLIENT:B = 0x2t

.field private static final BLUETOOTH_SPP_PORT_TYPE_INVALID:B = -0x1t

.field private static final BLUETOOTH_SPP_PORT_TYPE_SERVER:B = 0x1t

.field private static final BLUETOOTH_SPP_SEC_ATHN_MASK:B = 0x11t

.field private static final BLUETOOTH_SPP_SEC_AUTH_MASK:B = 0x1t

.field private static final BLUETOOTH_SPP_SEC_ENCR_MASK:B = 0x24t

.field private static final BLUETOOTH_SPP_SEC_NONE_MASK:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "BluetoothSPP"


# instance fields
.field private dataReceived:[B

.field private mAppId:B

.field private mBluetoothSPPEventHandler:Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;

.field private mCallback:Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;

.field private mDataGatewayProxy:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;

.field private mPortId:B

.field private mPortState:I

.field private mPortType:B

.field private mReadThread:Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;

.field private mSerialPortName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/dg/BluetoothDataGateway;)V
    .registers 4
    .parameter "proxy"

    .prologue
    const/4 v1, -0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "AndroidBTSerialPort"

    iput-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mSerialPortName:Ljava/lang/String;

    .line 409
    new-instance v0, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/dg/BluetoothSPP$1;-><init>(Lcom/broadcom/bt/service/dg/BluetoothSPP;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mCallback:Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;

    .line 58
    iput-object p1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;

    .line 60
    iput-byte v1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mPortId:B

    .line 61
    iput-byte v1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mAppId:B

    .line 62
    iput-byte v1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mPortType:B

    .line 65
    new-instance v0, Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;-><init>(Lcom/broadcom/bt/service/dg/BluetoothSPP;Lcom/broadcom/bt/service/dg/BluetoothSPP$1;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mReadThread:Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/dg/BluetoothSPP;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mPortState:I

    return v0
.end method

.method static synthetic access$102(Lcom/broadcom/bt/service/dg/BluetoothSPP;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mPortState:I

    return p1
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/dg/BluetoothSPP;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->waitForData()V

    return-void
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/dg/BluetoothSPP;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->dataReceived:[B

    return-object v0
.end method

.method static synthetic access$302(Lcom/broadcom/bt/service/dg/BluetoothSPP;[B)[B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->dataReceived:[B

    return-object p1
.end method

.method static synthetic access$400(Lcom/broadcom/bt/service/dg/BluetoothSPP;)B
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-byte v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mAppId:B

    return v0
.end method

.method static synthetic access$500(Lcom/broadcom/bt/service/dg/BluetoothSPP;)B
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-byte v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mPortId:B

    return v0
.end method

.method static synthetic access$600(Lcom/broadcom/bt/service/dg/BluetoothSPP;)Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mBluetoothSPPEventHandler:Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;

    return-object v0
.end method

.method private getFirstAvailableSerialPort()B
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/dg/BluetoothDataGateway;->getFirstAvailableSerialPort()B

    move-result v0

    return v0
.end method

.method private isPortIdValid(B)Z
    .registers 4
    .parameter "portId"

    .prologue
    const/4 v1, 0x0

    .line 114
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    move v0, v1

    :goto_5
    return v0

    :cond_6
    iget-byte v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mPortId:B

    if-ne p1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    move v0, v1

    goto :goto_5
.end method

.method private registerSppCallback()V
    .registers 4

    .prologue
    .line 143
    const-string v0, "BluetoothSPP"

    const-string v1, "Register SPP callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mAppId:B

    iget-object v2, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mCallback:Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/dg/BluetoothDataGateway;->registerSppCallback(ILcom/broadcom/bt/service/dg/IBluetoothSPPCallback;)V

    .line 146
    return-void
.end method

.method private unregisterSppCallback()V
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/dg/BluetoothDataGateway;->unregisterSppCallback(I)V

    .line 153
    return-void
.end method

.method private waitForData()V
    .registers 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/dg/BluetoothDataGateway;->waitForDataOnPort(B)V

    .line 387
    return-void
.end method


# virtual methods
.method public connect(BLjava/lang/String;)V
    .registers 9
    .parameter "portId"
    .parameter "remoteAddress"

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->isPortIdValid(B)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-byte v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mPortType:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    .line 313
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BluetoothSPP connect invalid port id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_13
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mSerialPortName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-byte v5, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mAppId:B

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/dg/BluetoothDataGateway;->dataGatewayOpen(Ljava/lang/String;BBLjava/lang/String;B)V

    .line 320
    return-void
.end method

.method public create(B)Z
    .registers 5
    .parameter "portId"

    .prologue
    const/4 v2, 0x0

    .line 163
    invoke-direct {p0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->getFirstAvailableSerialPort()B

    move-result v0

    iput-byte v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mAppId:B

    .line 164
    iget-byte v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mAppId:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    move v0, v2

    .line 174
    :goto_d
    return v0

    .line 168
    :cond_e
    invoke-direct {p0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->registerSppCallback()V

    .line 171
    iput-byte p1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mPortId:B

    .line 172
    invoke-virtual {p0, p1, v2}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->setSerialPortStatus(BI)V

    .line 174
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public destroy(B)V
    .registers 4
    .parameter "portId"

    .prologue
    const/4 v1, -0x1

    .line 332
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->disable(B)V

    .line 333
    invoke-direct {p0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->unregisterSppCallback()V

    .line 335
    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->setSerialPortStatus(BI)V

    .line 337
    iput-byte v1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mPortId:B

    .line 338
    iput-byte v1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mAppId:B

    .line 339
    iput-byte v1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mPortType:B

    .line 340
    return-void
.end method

.method public disable(B)V
    .registers 5
    .parameter "portId"

    .prologue
    const/4 v2, 0x1

    .line 279
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->isPortIdValid(B)Z

    move-result v0

    if-nez v0, :cond_f

    .line 280
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BluetoothSPP disable invalid port id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_f
    iget-byte v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mPortType:B

    if-ne v0, v2, :cond_20

    .line 285
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v2, v1}, Lcom/broadcom/bt/service/dg/BluetoothDataGateway;->dataGatewayShutdown(BB)V

    .line 297
    :goto_1a
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->setSerialPortStatus(BI)V

    .line 300
    return-void

    .line 292
    :cond_20
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v2, v1}, Lcom/broadcom/bt/service/dg/BluetoothDataGateway;->dataGatewayClose(BB)V

    goto :goto_1a
.end method

.method public disconnect(B)V
    .registers 5
    .parameter "portId"

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->isPortIdValid(B)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 191
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;

    const/4 v1, 0x1

    iget-byte v2, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/dg/BluetoothDataGateway;->dataGatewayClose(BB)V

    .line 202
    return-void

    .line 198
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BluetoothSPP disconnect invalid port id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enable(BB)V
    .registers 8
    .parameter "portId"
    .parameter "portType"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 214
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->isPortIdValid(B)Z

    move-result v0

    if-nez v0, :cond_10

    .line 215
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BluetoothSPP enable invalid port id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_10
    iget-byte v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mPortType:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3b

    .line 220
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1e

    .line 221
    iput-byte p2, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mPortType:B

    .line 222
    invoke-virtual {p0, p1, v3}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->setSerialPortStatus(BI)V

    .line 269
    :cond_1d
    :goto_1d
    return-void

    .line 229
    :cond_1e
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mSerialPortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-byte v2, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/broadcom/bt/service/dg/BluetoothDataGateway;->dataGatewayListen(BBLjava/lang/String;B)V

    .line 233
    iput-byte p2, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mPortType:B

    goto :goto_1d

    .line 237
    :cond_3b
    iget-byte v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mPortType:B

    if-eq v0, p2, :cond_1d

    .line 240
    iget-byte v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mPortType:B

    if-ne v0, v3, :cond_50

    .line 242
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v3, v1}, Lcom/broadcom/bt/service/dg/BluetoothDataGateway;->dataGatewayShutdown(BB)V

    .line 246
    invoke-virtual {p0, p1, v3}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->setSerialPortStatus(BI)V

    .line 266
    :goto_4d
    iput-byte p2, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mPortType:B

    goto :goto_1d

    .line 252
    :cond_50
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v3, v1}, Lcom/broadcom/bt/service/dg/BluetoothDataGateway;->dataGatewayClose(BB)V

    .line 257
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mSerialPortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-byte v2, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/broadcom/bt/service/dg/BluetoothDataGateway;->dataGatewayListen(BBLjava/lang/String;B)V

    goto :goto_4d
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 73
    :try_start_0
    iget-byte v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mPortId:B

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->destroy(B)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 76
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 78
    return-void

    .line 76
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getReceivedData()[B
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->dataReceived:[B

    return-object v0
.end method

.method public getSerialPortStatus(B)I
    .registers 3
    .parameter "portId"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/dg/BluetoothDataGateway;->getSerialPortStatus(B)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read_port(B)[B
    .registers 4
    .parameter "portId"

    .prologue
    .line 365
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/dg/BluetoothSPP;->isPortIdValid(B)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_13

    move-result v0

    if-nez v0, :cond_a

    .line 366
    const/4 v0, 0x0

    .line 369
    :goto_8
    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/dg/BluetoothDataGateway;->sppRead(B)[B
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_13

    move-result-object v0

    goto :goto_8

    .line 365
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerEventhandler(Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mBluetoothSPPEventHandler:Lcom/broadcom/bt/service/dg/IBluetoothSPPEventHandler;

    .line 382
    return-void
.end method

.method public setSerialPortStatus(BI)V
    .registers 4
    .parameter "portId"
    .parameter "status"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/dg/BluetoothDataGateway;->setSerialPortStatus(BI)V

    .line 140
    return-void
.end method

.method public startReadData()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mReadThread:Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;

    if-eqz v0, :cond_9

    .line 89
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mReadThread:Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/dg/BluetoothSPP$ReadDataThread;->start()V

    .line 91
    :cond_9
    return-void
.end method

.method public write(I[B)I
    .registers 5
    .parameter "length"
    .parameter "buffer"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mDataGatewayProxy:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;

    iget-byte v1, p0, Lcom/broadcom/bt/service/dg/BluetoothSPP;->mAppId:B

    invoke-virtual {v0, v1, p1, p2}, Lcom/broadcom/bt/service/dg/BluetoothDataGateway;->sppWrite(BI[B)I

    move-result v0

    return v0
.end method
