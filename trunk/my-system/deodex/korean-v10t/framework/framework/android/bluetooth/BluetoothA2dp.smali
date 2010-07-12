.class public Landroid/bluetooth/BluetoothA2dp;
.super Ljava/lang/Object;
.source "BluetoothA2dp.java"


# static fields
.field private static final DBG:Z = false

.field public static final PRIORITY_AUTO:I = 0x64

.field public static final PRIORITY_OFF:I = 0x0

.field public static final SINK_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.a2dp.intent.SINK_PREVIOUS_STATE"

.field public static final SINK_STATE:Ljava/lang/String; = "android.bluetooth.a2dp.intent.SINK_STATE"

.field public static final SINK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.bluetooth.a2dp.intent.action.SINK_STATE_CHANGED"

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field public static final STATE_PLAYING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BluetoothA2dp"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/bluetooth/IBluetoothA2dp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/bluetooth/BluetoothA2dp;->mContext:Landroid/content/Context;

    .line 92
    const-string v1, "bluetooth_a2dp"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 93
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_15

    .line 94
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bluetooth A2DP service not available!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_15
    invoke-static {v0}, Landroid/bluetooth/IBluetoothA2dp$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    .line 97
    return-void
.end method

.method public static doesClassMatchSink(I)Z
    .registers 3
    .parameter "btClass"

    .prologue
    const/4 v1, 0x1

    .line 218
    const/high16 v0, 0x4

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothClass$Service;->hasService(II)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 232
    :goto_a
    return v0

    .line 224
    :cond_b
    invoke-static {p0}, Landroid/bluetooth/BluetoothClass$Device;->getDevice(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_16

    .line 232
    const/4 v0, 0x0

    goto :goto_a

    :sswitch_14
    move v0, v1

    .line 230
    goto :goto_a

    .line 224
    :sswitch_data_16
    .sparse-switch
        0x404 -> :sswitch_14
        0x414 -> :sswitch_14
        0x418 -> :sswitch_14
        0x420 -> :sswitch_14
        0x428 -> :sswitch_14
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 258
    const-string v0, "BluetoothA2dp"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 3
    .parameter "state"

    .prologue
    .line 241
    packed-switch p0, :pswitch_data_2c

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    .line 243
    :pswitch_1d
    const-string v0, "disconnected"

    goto :goto_1c

    .line 245
    :pswitch_20
    const-string v0, "connecting"

    goto :goto_1c

    .line 247
    :pswitch_23
    const-string v0, "connected"

    goto :goto_1c

    .line 249
    :pswitch_26
    const-string v0, "disconnecting"

    goto :goto_1c

    .line 251
    :pswitch_29
    const-string v0, "playing"

    goto :goto_1c

    .line 241
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method


# virtual methods
.method public connectSink(Ljava/lang/String;)I
    .registers 5
    .parameter "address"

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->connectSink(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 112
    :goto_6
    return v1

    .line 110
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 111
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    const/16 v1, -0x3f4

    goto :goto_6
.end method

.method public disconnectSink(Ljava/lang/String;)I
    .registers 5
    .parameter "address"

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->disconnectSink(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 129
    :goto_6
    return v1

    .line 127
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 128
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    const/16 v1, -0x3f4

    goto :goto_6
.end method

.method public getSinkPriority(Ljava/lang/String;)I
    .registers 5
    .parameter "address"

    .prologue
    .line 203
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->getSinkPriority(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 206
    :goto_6
    return v1

    .line 204
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 205
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    const/16 v1, -0x3f4

    goto :goto_6
.end method

.method public getSinkState(Ljava/lang/String;)I
    .registers 5
    .parameter "address"

    .prologue
    .line 166
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothA2dp;->getSinkState(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 169
    :goto_6
    return v1

    .line 167
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 168
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    const/16 v1, -0x3f4

    goto :goto_6
.end method

.method public isSinkConnected(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dp;->getSinkState(Ljava/lang/String;)I

    move-result v0

    .line 141
    .local v0, state:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public listConnectedSinks()Ljava/util/List;
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
    .line 151
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothA2dp;->listConnectedSinks()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 154
    :goto_6
    return-object v1

    .line 152
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 153
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setSinkPriority(Ljava/lang/String;I)I
    .registers 6
    .parameter "address"
    .parameter "priority"

    .prologue
    .line 188
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothA2dp;->mService:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothA2dp;->setSinkPriority(Ljava/lang/String;I)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 191
    :goto_6
    return v1

    .line 189
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 190
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothA2dp"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    const/16 v1, -0x3f4

    goto :goto_6
.end method
