.class public Landroid/bluetooth/BluetoothAudioGateway;
.super Ljava/lang/Object;
.source "BluetoothAudioGateway.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAudioGateway$IncomingConnectionInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final DEFAULT_HF_AG_CHANNEL:I = 0xa

.field public static final DEFAULT_HS_AG_CHANNEL:I = 0xb

.field public static final MSG_INCOMING_HANDSFREE_CONNECTION:I = 0x65

.field public static final MSG_INCOMING_HEADSET_CONNECTION:I = 0x64

.field private static final SELECT_WAIT_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "BT Audio Gateway"


# instance fields
.field private mBluetooth:Landroid/bluetooth/BluetoothDevice;

.field private mCallback:Landroid/os/Handler;

.field private mConnectThead:Ljava/lang/Thread;

.field private mConnectingHandsfreeAddress:Ljava/lang/String;

.field private mConnectingHandsfreeRfcommChannel:I

.field private mConnectingHandsfreeSocketFd:I

.field private mConnectingHeadsetAddress:Ljava/lang/String;

.field private mConnectingHeadsetRfcommChannel:I

.field private mConnectingHeadsetSocketFd:I

.field private mHandsfreeAgRfcommChannel:I

.field private mHeadsetAgRfcommChannel:I

.field private volatile mInterrupted:Z

.field private mNativeData:I

.field private mTimeoutRemainingMs:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 21
    invoke-static {}, Landroid/bluetooth/BluetoothAudioGateway;->classInitNative()V

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .parameter "bluetooth"

    .prologue
    .line 42
    const/16 v0, 0xa

    const/16 v1, 0xb

    invoke-direct {p0, p1, v0, v1}, Landroid/bluetooth/BluetoothAudioGateway;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 5
    .parameter "bluetooth"
    .parameter "handsfreeAgRfcommChannel"
    .parameter "headsetAgRfcommChannel"

    .prologue
    const/4 v0, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHandsfreeAgRfcommChannel:I

    .line 27
    iput v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetAgRfcommChannel:I

    .line 48
    iput-object p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    .line 49
    iput p2, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHandsfreeAgRfcommChannel:I

    .line 50
    iput p3, p0, Landroid/bluetooth/BluetoothAudioGateway;->mHeadsetAgRfcommChannel:I

    .line 51
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->initializeNativeDataNative()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothAudioGateway;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$002(Landroid/bluetooth/BluetoothAudioGateway;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z

    return p1
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothAudioGateway;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHeadsetRfcommChannel:I

    return v0
.end method

.method static synthetic access$1000(Landroid/bluetooth/BluetoothAudioGateway;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHandsfreeSocketFd:I

    return v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothAudioGateway;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHeadsetRfcommChannel:I

    return p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothAudioGateway;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHandsfreeRfcommChannel:I

    return v0
.end method

.method static synthetic access$202(Landroid/bluetooth/BluetoothAudioGateway;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHandsfreeRfcommChannel:I

    return p1
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothAudioGateway;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothAudioGateway;->waitForHandsfreeConnectNative(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothAudioGateway;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mTimeoutRemainingMs:I

    return v0
.end method

.method static synthetic access$500(Landroid/bluetooth/BluetoothAudioGateway;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHeadsetAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/bluetooth/BluetoothAudioGateway;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mCallback:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/bluetooth/BluetoothAudioGateway;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mBluetooth:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$800(Landroid/bluetooth/BluetoothAudioGateway;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHeadsetSocketFd:I

    return v0
.end method

.method static synthetic access$900(Landroid/bluetooth/BluetoothAudioGateway;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectingHandsfreeAddress:Ljava/lang/String;

    return-object v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native initializeNativeDataNative()V
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 188
    const-string v0, "BT Audio Gateway"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method private native setUpListeningSocketsNative()Z
.end method

.method private native tearDownListeningSocketsNative()V
.end method

.method private native waitForHandsfreeConnectNative(I)Z
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 174
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->cleanupNativeDataNative()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 176
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 178
    return-void

    .line 176
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public declared-synchronized start(Landroid/os/Handler;)Z
    .registers 5
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    const-string v0, "BT Audio Gateway"

    .line 80
    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    if-nez v0, :cond_2b

    .line 81
    iput-object p1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mCallback:Landroid/os/Handler;

    .line 82
    new-instance v0, Landroid/bluetooth/BluetoothAudioGateway$1;

    const-string v1, "BT Audio Gateway"

    invoke-direct {v0, p0, v1}, Landroid/bluetooth/BluetoothAudioGateway$1;-><init>(Landroid/bluetooth/BluetoothAudioGateway;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    .line 143
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->setUpListeningSocketsNative()Z

    move-result v0

    if-nez v0, :cond_23

    .line 144
    const-string v0, "BT Audio Gateway"

    const-string v1, "Could not set up listening socket, exiting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_2d

    move v0, v2

    .line 152
    :goto_21
    monitor-exit p0

    return v0

    .line 148
    :cond_23
    const/4 v0, 0x0

    :try_start_24
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z

    .line 149
    iget-object v0, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2d

    .line 152
    :cond_2b
    const/4 v0, 0x1

    goto :goto_21

    .line 80
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 4

    .prologue
    .line 156
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    if-eqz v1, :cond_1b

    .line 158
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mInterrupted:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_27

    .line 160
    :try_start_8
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 162
    iget-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 163
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mConnectThead:Ljava/lang/Thread;

    .line 164
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BluetoothAudioGateway;->mCallback:Landroid/os/Handler;

    .line 165
    invoke-direct {p0}, Landroid/bluetooth/BluetoothAudioGateway;->tearDownListeningSocketsNative()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_27
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_1b} :catch_1d

    .line 170
    :cond_1b
    :goto_1b
    monitor-exit p0

    return-void

    .line 166
    :catch_1d
    move-exception v1

    move-object v0, v1

    .line 167
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1f
    const-string v1, "BT Audio Gateway"

    const-string v2, "Interrupted waiting for Connect Thread to join"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_27

    goto :goto_1b

    .line 156
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1
.end method
