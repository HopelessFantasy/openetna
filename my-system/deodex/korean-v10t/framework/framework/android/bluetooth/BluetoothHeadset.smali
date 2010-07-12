.class public Landroid/bluetooth/BluetoothHeadset;
.super Ljava/lang/Object;
.source "BluetoothHeadset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothHeadset$ServiceListener;
    }
.end annotation


# static fields
.field public static final AUDIO_STATE_CONNECTED:I = 0x1

.field public static final AUDIO_STATE_DISCONNECTED:I = 0x0

.field private static final DBG:Z = false

.field public static final DISABLE_BT_VOICE_DIALING:Z = false

.field public static final PRIORITY_AUTO:I = 0x64

.field public static final PRIORITY_OFF:I = 0x0

.field public static final RESULT_BT_TURNING_OFF:I = 0x3

.field public static final RESULT_CANCELED:I = 0x2

.field public static final RESULT_FAILURE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothHeadset"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothHeadset;

.field private final mServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V
    .registers 6
    .parameter "context"
    .parameter "l"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    new-instance v0, Landroid/bluetooth/BluetoothHeadset$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothHeadset$1;-><init>(Landroid/bluetooth/BluetoothHeadset;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;

    .line 119
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothHeadset;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 122
    const-string v0, "BluetoothHeadset"

    const-string v1, "Could not bind to Bluetooth Headset Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_29
    return-void
.end method

.method static synthetic access$002(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/IBluetoothHeadset;)Landroid/bluetooth/IBluetoothHeadset;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset$ServiceListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mServiceListener:Landroid/bluetooth/BluetoothHeadset$ServiceListener;

    return-object v0
.end method

.method public static doesClassMatch(I)Z
    .registers 3
    .parameter "btClass"

    .prologue
    const/4 v1, 0x1

    .line 370
    const/high16 v0, 0x4

    invoke-static {p0, v0}, Landroid/bluetooth/BluetoothClass$Service;->hasService(II)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .line 380
    :goto_a
    return v0

    .line 374
    :cond_b
    invoke-static {p0}, Landroid/bluetooth/BluetoothClass$Device;->getDevice(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_16

    .line 380
    const/4 v0, 0x0

    goto :goto_a

    :sswitch_14
    move v0, v1

    .line 378
    goto :goto_a

    .line 374
    :sswitch_data_16
    .sparse-switch
        0x404 -> :sswitch_14
        0x408 -> :sswitch_14
        0x420 -> :sswitch_14
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 402
    const-string v0, "BluetoothHeadset"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 142
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_f

    .line 143
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHeadset;->mConnection:Landroid/content/ServiceConnection;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 146
    :cond_f
    monitor-exit p0

    return-void

    .line 142
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connectHeadset(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 199
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1d

    .line 201
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->connectHeadset(Ljava/lang/String;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_10

    move-result v1

    if-eqz v1, :cond_1b

    .line 202
    const/4 v1, 0x1

    .line 209
    :goto_f
    return v1

    .line 204
    :catch_10
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1b
    :goto_1b
    const/4 v1, 0x0

    goto :goto_f

    .line 206
    :cond_1d
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public disconnectHeadset()Z
    .registers 4

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 237
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 239
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->disconnectHeadset()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    .line 240
    const/4 v1, 0x1

    .line 246
    :goto_c
    return v1

    .line 241
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, 0x0

    goto :goto_c

    .line 243
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 128
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 130
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 132
    return-void

    .line 130
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBatteryUsageHint()I
    .registers 4

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 349
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 351
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->getBatteryUsageHint()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 357
    :goto_c
    return v1

    .line 352
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, -0x1

    goto :goto_c

    .line 354
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public getHeadsetAddress()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 174
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 176
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->getHeadsetAddress()Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    .line 182
    :goto_c
    return-object v1

    .line 177
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, 0x0

    goto :goto_c

    .line 179
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public getPriority(Ljava/lang/String;)I
    .registers 5
    .parameter "address"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 324
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 326
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->getPriority(Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 332
    :goto_c
    return v1

    .line 327
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, -0x1

    goto :goto_c

    .line 329
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public getState()I
    .registers 4

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 155
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 157
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->getState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 163
    :goto_c
    return v1

    .line 158
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, -0x1

    goto :goto_c

    .line 160
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public isConnected(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 219
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 221
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothHeadset;->isConnected(Ljava/lang/String;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 227
    :goto_c
    return v1

    .line 222
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, 0x0

    goto :goto_c

    .line 224
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public setPriority(Ljava/lang/String;I)Z
    .registers 6
    .parameter "address"
    .parameter "priority"

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 306
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 308
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothHeadset;->setPriority(Ljava/lang/String;I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 314
    :goto_c
    return v1

    .line 309
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, 0x0

    goto :goto_c

    .line 311
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public startVoiceRecognition()Z
    .registers 4

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 257
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 259
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->startVoiceRecognition()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 265
    :goto_c
    return v1

    .line 260
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, 0x0

    goto :goto_c

    .line 262
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public stopVoiceRecognition()Z
    .registers 4

    .prologue
    const-string v2, "BluetoothHeadset"

    .line 275
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1a

    .line 277
    :try_start_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset;->mService:Landroid/bluetooth/IBluetoothHeadset;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothHeadset;->stopVoiceRecognition()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 283
    :goto_c
    return v1

    .line 278
    :catch_d
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHeadset"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_18
    const/4 v1, 0x0

    goto :goto_c

    .line 280
    :cond_1a
    const-string v1, "BluetoothHeadset"

    const-string v1, "Proxy not attached to service"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method
