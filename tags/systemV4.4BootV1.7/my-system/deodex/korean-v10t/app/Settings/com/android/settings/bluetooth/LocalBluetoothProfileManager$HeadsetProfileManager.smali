.class Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;
.super Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.source "LocalBluetoothProfileManager.java"

# interfaces
.implements Landroid/bluetooth/BluetoothHeadset$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeadsetProfileManager"
.end annotation


# instance fields
.field private mService:Landroid/bluetooth/BluetoothHeadset;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .registers 4
    .parameter "localManager"

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 215
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mUiHandler:Landroid/os/Handler;

    .line 219
    new-instance v0, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method


# virtual methods
.method public connect(Ljava/lang/String;)I
    .registers 3
    .parameter "address"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectHeadset()Z

    .line 248
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->connectHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    const/16 v0, -0x3e8

    goto :goto_e
.end method

.method public convertState(I)I
    .registers 3
    .parameter "state"

    .prologue
    .line 293
    packed-switch p1, :pswitch_data_c

    .line 301
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 295
    :pswitch_5
    const/4 v0, 0x2

    goto :goto_4

    .line 297
    :pswitch_7
    const/4 v0, 0x3

    goto :goto_4

    .line 299
    :pswitch_9
    const/4 v0, 0x4

    goto :goto_4

    .line 293
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public disconnect(Ljava/lang/String;)I
    .registers 4
    .parameter "address"

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getHeadsetAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 255
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectHeadset()Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    .line 257
    :goto_16
    return v0

    .line 255
    :cond_17
    const/16 v0, -0x3e8

    goto :goto_16

    :cond_1a
    move v0, v1

    .line 257
    goto :goto_16
.end method

.method public getConnectionStatus(Ljava/lang/String;)I
    .registers 4
    .parameter "address"

    .prologue
    .line 263
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getHeadsetAddress()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, headsetAddress:Ljava/lang/String;
    if-eqz v0, :cond_19

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->convertState(I)I

    move-result v1

    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x4

    goto :goto_18
.end method

.method public getSummary(Ljava/lang/String;)I
    .registers 4
    .parameter "address"

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->getConnectionStatus(Ljava/lang/String;)I

    move-result v0

    .line 273
    .local v0, connectionStatus:I
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 274
    const v1, 0x7f08012f

    .line 276
    :goto_d
    return v1

    :cond_e
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->getConnectionStatusSummary(I)I

    move-result v1

    goto :goto_d
.end method

.method public isPreferred(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onServiceConnected()V
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager$1;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method

.method public onServiceDisconnected()V
    .registers 1

    .prologue
    .line 241
    return-void
.end method

.method public setPreferred(Ljava/lang/String;Z)V
    .registers 5
    .parameter "address"
    .parameter "preferred"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$HeadsetProfileManager;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-eqz p2, :cond_a

    const/16 v1, 0x64

    :goto_6
    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Ljava/lang/String;I)Z

    .line 289
    return-void

    .line 287
    :cond_a
    const/4 v1, 0x0

    goto :goto_6
.end method
