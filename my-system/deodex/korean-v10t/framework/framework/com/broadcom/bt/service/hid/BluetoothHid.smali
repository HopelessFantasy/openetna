.class public Lcom/broadcom/bt/service/hid/BluetoothHid;
.super Ljava/lang/Object;
.source "BluetoothHid.java"


# static fields
.field public static final CURRENT_STATE:Ljava/lang/String; = "com.broadcom.bt.service.hid.intent.CURR_STATE"

.field private static final DBG:Z = true

.field public static final PREVIOUS_STATE:Ljava/lang/String; = "com.broadcom.bt.service.hid.intent.PREVIOUS_STATE"

.field public static final PRIORITY_AUTO:I = 0x64

.field public static final PRIORITY_OFF:I = 0x0

.field public static final STATE_CHANGED_ACTION:Ljava/lang/String; = "com.broadcom.bt.service.hid.intent.action.STATE_CHANGED"

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothHid"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/broadcom/bt/service/hid/IBluetoothHid;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/broadcom/bt/service/hid/BluetoothHid;->mContext:Landroid/content/Context;

    .line 113
    const-string v1, "bluetooth_hid"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 114
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_15

    .line 115
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bluetooth HID Service not available!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_15
    invoke-static {v0}, Lcom/broadcom/bt/service/hid/IBluetoothHid$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/hid/IBluetoothHid;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHid;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHid;

    .line 118
    return-void
.end method

.method public static doesClassMatch(I)Z
    .registers 3
    .parameter "btClass"

    .prologue
    .line 226
    invoke-static {p0}, Landroid/bluetooth/BluetoothClass$Device;->getDevice(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_12

    .line 233
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 230
    :sswitch_9
    const-string v0, "BluetoothHid"

    const-string v1, "doesClassMatch = true"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, 0x1

    goto :goto_8

    .line 226
    :sswitch_data_12
    .sparse-switch
        0x540 -> :sswitch_9
        0x580 -> :sswitch_9
        0x5c0 -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public connect(Ljava/lang/String;)I
    .registers 6
    .parameter "address"

    .prologue
    const-string v3, "BluetoothHid"

    .line 128
    const-string v1, "BluetoothHid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :try_start_20
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHid;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHid;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHid;->connect(Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_27

    move-result v1

    .line 133
    :goto_26
    return v1

    .line 131
    :catch_27
    move-exception v1

    move-object v0, v1

    .line 132
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHid"

    const-string v1, ""

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    const/16 v1, -0x3f4

    goto :goto_26
.end method

.method public disconnect(Ljava/lang/String;)I
    .registers 6
    .parameter "address"

    .prologue
    const-string v3, "BluetoothHid"

    .line 145
    const-string v1, "BluetoothHid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :try_start_20
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHid;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHid;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHid;->disconnect(Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_27

    move-result v1

    .line 150
    :goto_26
    return v1

    .line 148
    :catch_27
    move-exception v1

    move-object v0, v1

    .line 149
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHid"

    const-string v1, ""

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    const/16 v1, -0x3f4

    goto :goto_26
.end method

.method public getPriority(Ljava/lang/String;)I
    .registers 6
    .parameter "address"

    .prologue
    const-string v3, "BluetoothHid"

    .line 208
    const-string v1, "BluetoothHid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPriority("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :try_start_20
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHid;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHid;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHid;->getPriority(Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_27

    move-result v1

    .line 213
    :goto_26
    return v1

    .line 211
    :catch_27
    move-exception v1

    move-object v0, v1

    .line 212
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHid"

    const-string v1, ""

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    const/16 v1, -0x3f4

    goto :goto_26
.end method

.method public getState(Ljava/lang/String;)I
    .registers 5
    .parameter "address"

    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHid;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHid;

    invoke-interface {v1, p1}, Lcom/broadcom/bt/service/hid/IBluetoothHid;->getState(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 177
    :goto_6
    return v1

    .line 175
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 176
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHid"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    const/16 v1, -0x3f4

    goto :goto_6
.end method

.method public isConnected(Ljava/lang/String;)Z
    .registers 6
    .parameter "address"

    .prologue
    .line 161
    const-string v1, "BluetoothHid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isConnected("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/hid/BluetoothHid;->getState(Ljava/lang/String;)I

    move-result v0

    .line 163
    .local v0, state:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    const/4 v1, 0x1

    :goto_26
    return v1

    :cond_27
    const/4 v1, 0x0

    goto :goto_26
.end method

.method public setPriority(Ljava/lang/String;I)I
    .registers 7
    .parameter "address"
    .parameter "priority"

    .prologue
    const-string v3, "BluetoothHid"

    .line 192
    const-string v1, "BluetoothHid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPriority("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :try_start_2a
    iget-object v1, p0, Lcom/broadcom/bt/service/hid/BluetoothHid;->mService:Lcom/broadcom/bt/service/hid/IBluetoothHid;

    invoke-interface {v1, p1, p2}, Lcom/broadcom/bt/service/hid/IBluetoothHid;->setPriority(Ljava/lang/String;I)I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_31

    move-result v1

    .line 197
    :goto_30
    return v1

    .line 195
    :catch_31
    move-exception v1

    move-object v0, v1

    .line 196
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothHid"

    const-string v1, ""

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    const/16 v1, -0x3f4

    goto :goto_30
.end method
