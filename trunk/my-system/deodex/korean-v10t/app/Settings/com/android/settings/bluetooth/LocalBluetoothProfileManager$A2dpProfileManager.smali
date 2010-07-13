.class Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;
.super Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "A2dpProfileManager"
.end annotation


# instance fields
.field private mService:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .registers 4
    .parameter "localManager"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;-><init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V

    .line 142
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    .line 143
    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;)I
    .registers 3
    .parameter "address"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->connectSink(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public convertState(I)I
    .registers 3
    .parameter "state"

    .prologue
    .line 192
    packed-switch p1, :pswitch_data_10

    .line 204
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 194
    :pswitch_5
    const/4 v0, 0x2

    goto :goto_4

    .line 196
    :pswitch_7
    const/4 v0, 0x3

    goto :goto_4

    .line 198
    :pswitch_9
    const/4 v0, 0x4

    goto :goto_4

    .line 200
    :pswitch_b
    const/4 v0, 0x5

    goto :goto_4

    .line 202
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_4

    .line 192
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_9
        :pswitch_7
        :pswitch_5
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method public disconnect(Ljava/lang/String;)I
    .registers 3
    .parameter "address"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->disconnectSink(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getConnectionStatus(Ljava/lang/String;)I
    .registers 3
    .parameter "address"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getSinkState(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->convertState(I)I

    move-result v0

    return v0
.end method

.method public getSummary(Ljava/lang/String;)I
    .registers 4
    .parameter "address"

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->getConnectionStatus(Ljava/lang/String;)I

    move-result v0

    .line 172
    .local v0, connectionStatus:I
    invoke-static {v0}, Lcom/android/settings/bluetooth/SettingsBtStatus;->isConnectionStatusConnected(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 173
    const v1, 0x7f08012e

    .line 175
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
    .line 181
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getSinkPriority(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setPreferred(Ljava/lang/String;Z)V
    .registers 5
    .parameter "address"
    .parameter "preferred"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$A2dpProfileManager;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-eqz p2, :cond_a

    const/16 v1, 0x64

    :goto_6
    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setSinkPriority(Ljava/lang/String;I)I

    .line 188
    return-void

    .line 186
    :cond_a
    const/4 v1, 0x0

    goto :goto_6
.end method
