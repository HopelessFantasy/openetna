.class public Landroid/bluetooth/BluetoothDevice;
.super Ljava/lang/Object;
.source "BluetoothDevice.java"


# static fields
.field private static final ADDRESS_LENGTH:I = 0x11

.field public static final BLUETOOTH_STATE_OFF:I = 0x0

.field public static final BLUETOOTH_STATE_ON:I = 0x2

.field public static final BLUETOOTH_STATE_TURNING_OFF:I = 0x3

.field public static final BLUETOOTH_STATE_TURNING_ON:I = 0x1

.field public static final BOND_BONDED:I = 0x1

.field public static final BOND_BONDING:I = 0x2

.field public static final BOND_NOT_BONDED:I = 0x0

.field public static final RESULT_FAILURE:I = -0x1

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final SCAN_MODE_CONNECTABLE:I = 0x1

.field public static final SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x3

.field public static final SCAN_MODE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothDevice"

.field public static final UNBOND_REASON_AUTH_CANCELED:I = 0x3

.field public static final UNBOND_REASON_AUTH_FAILED:I = 0x1

.field public static final UNBOND_REASON_AUTH_REJECTED:I = 0x2

.field public static final UNBOND_REASON_DISCOVERY_IN_PROGRESS:I = 0x5

.field public static final UNBOND_REASON_REMOTE_DEVICE_DOWN:I = 0x4

.field public static final UNBOND_REASON_REMOVED:I = 0x6


# instance fields
.field private final mService:Landroid/bluetooth/IBluetoothDevice;


# direct methods
.method public constructor <init>(Landroid/bluetooth/IBluetoothDevice;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    .line 89
    return-void
.end method

.method public static checkBluetoothAddress(Ljava/lang/String;)Z
    .registers 7
    .parameter "address"

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x0

    .line 633
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v5, :cond_d

    :cond_b
    move v2, v4

    .line 652
    :goto_c
    return v2

    .line 636
    :cond_d
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v5, :cond_2d

    .line 637
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 638
    .local v0, c:C
    rem-int/lit8 v2, v1, 0x3

    packed-switch v2, :pswitch_data_30

    .line 636
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 641
    :pswitch_1c
    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    move v2, v4

    .line 644
    goto :goto_c

    .line 646
    :pswitch_27
    const/16 v2, 0x3a

    if-eq v0, v2, :cond_19

    move v2, v4

    .line 649
    goto :goto_c

    .line 652
    .end local v0           #c:C
    :cond_2d
    const/4 v2, 0x1

    goto :goto_c

    .line 638
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_27
    .end packed-switch
.end method

.method public static convertPinToBytes(Ljava/lang/String;)[B
    .registers 6
    .parameter "pin"

    .prologue
    const/4 v4, 0x0

    .line 614
    if-nez p0, :cond_5

    move-object v2, v4

    .line 627
    :goto_4
    return-object v2

    .line 619
    :cond_5
    :try_start_5
    const-string v2, "UTF8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_a} :catch_15

    move-result-object v0

    .line 624
    .local v0, pinBytes:[B
    array-length v2, v0

    if-lez v2, :cond_13

    array-length v2, v0

    const/16 v3, 0x10

    if-le v2, v3, :cond_20

    :cond_13
    move-object v2, v4

    .line 625
    goto :goto_4

    .line 620
    .end local v0           #pinBytes:[B
    :catch_15
    move-exception v2

    move-object v1, v2

    .line 621
    .local v1, uee:Ljava/io/UnsupportedEncodingException;
    const-string v2, "BluetoothDevice"

    const-string v3, "UTF8 not supported?!?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 622
    goto :goto_4

    .end local v1           #uee:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #pinBytes:[B
    :cond_20
    move-object v2, v0

    .line 627
    goto :goto_4
.end method


# virtual methods
.method public DUTOff()I
    .registers 4

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->DUTOff()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 157
    :goto_6
    return v1

    .line 156
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public DUTOn()I
    .registers 4

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->DUTOn()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 150
    :goto_6
    return v1

    .line 149
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public authorizeService(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 8
    .parameter "address"
    .parameter "service"
    .parameter "authorized"
    .parameter "always"

    .prologue
    .line 600
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/bluetooth/IBluetoothDevice;->authorizeService(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 602
    :goto_6
    return v1

    .line 601
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, "Authorize Response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public authorizeSsp(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "address"
    .parameter "approved"

    .prologue
    .line 593
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothDevice;->authorizeSsp(Ljava/lang/String;Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 595
    :goto_6
    return v1

    .line 594
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, "approvePairing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public cancelBondProcess(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 389
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->cancelBondProcess(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 391
    :goto_6
    return v1

    .line 390
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public cancelDiscovery()V
    .registers 4

    .prologue
    .line 270
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->cancelDiscovery()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 272
    :goto_5
    return-void

    .line 271
    :catch_6
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public cancelPin(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 577
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->cancelPin(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 579
    :goto_6
    return v1

    .line 578
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 579
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public createBond(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 379
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->createBond(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 381
    :goto_6
    return v1

    .line 380
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public disable()Z
    .registers 4

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothDevice;->disable(Z)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    move-result v1

    .line 142
    :goto_7
    return v1

    .line 141
    :catch_8
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public disconnectRemoteDeviceAcl(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 362
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->disconnectRemoteDeviceAcl(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 364
    :goto_6
    return v1

    .line 363
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enable()Z
    .registers 4

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothDevice;->enable(Z)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_8

    move-result v1

    .line 129
    :goto_7
    return v1

    .line 128
    :catch_8
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public getAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 162
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->getAddress()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 164
    :goto_6
    return-object v1

    .line 163
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getBluetoothState()I
    .registers 4

    .prologue
    .line 110
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->getBluetoothState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 112
    :goto_6
    return v1

    .line 111
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    const/16 v1, -0x3e8

    goto :goto_6
.end method

.method public getBondState(Ljava/lang/String;)I
    .registers 5
    .parameter "address"

    .prologue
    .line 453
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->getBondState(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 455
    :goto_6
    return v1

    .line 454
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    const/16 v1, -0x3f4

    goto :goto_6
.end method

.method public getCompany()Ljava/lang/String;
    .registers 4

    .prologue
    .line 218
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->getCompany()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 220
    :goto_6
    return-object v1

    .line 219
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDiscoverableTimeout()I
    .registers 4

    .prologue
    .line 248
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->getDiscoverableTimeout()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 250
    :goto_6
    return v1

    .line 249
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getLevel2Services(Ljava/lang/String;)I
    .registers 5
    .parameter "address"

    .prologue
    .line 538
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->getLevel2Services(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 540
    :goto_6
    return v1

    .line 539
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    const/high16 v1, -0x100

    goto :goto_6
.end method

.method public getManufacturer()Ljava/lang/String;
    .registers 4

    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->getManufacturer()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 214
    :goto_6
    return-object v1

    .line 213
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 177
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->getName()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 179
    :goto_6
    return-object v1

    .line 178
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRemoteClass(Ljava/lang/String;)I
    .registers 5
    .parameter "address"

    .prologue
    .line 515
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->getRemoteClass(Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 517
    :goto_6
    return v1

    .line 516
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    const/high16 v1, -0x100

    goto :goto_6
.end method

.method public getRemoteCompany(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "address"

    .prologue
    .line 485
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->getRemoteCompany(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 487
    :goto_6
    return-object v1

    .line 486
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 487
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRemoteFeatures(Ljava/lang/String;)[B
    .registers 5
    .parameter "address"

    .prologue
    .line 552
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->getRemoteFeatures(Ljava/lang/String;)[B
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 554
    :goto_6
    return-object v1

    .line 553
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRemoteManufacturer(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "address"

    .prologue
    .line 479
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->getRemoteManufacturer(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 481
    :goto_6
    return-object v1

    .line 480
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRemoteName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "address"

    .prologue
    .line 460
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 462
    :goto_6
    return-object v1

    .line 461
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRemoteRevision(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "address"

    .prologue
    .line 473
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->getRemoteRevision(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 475
    :goto_6
    return-object v1

    .line 474
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRemoteServiceChannel(Ljava/lang/String;SLandroid/bluetooth/IBluetoothDeviceCallback;)Z
    .registers 7
    .parameter "address"
    .parameter "uuid16"
    .parameter "callback"

    .prologue
    .line 501
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/IBluetoothDevice;->getRemoteServiceChannel(Ljava/lang/String;ILandroid/bluetooth/IBluetoothDeviceCallback;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 503
    :goto_6
    return v1

    .line 502
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRemoteServices(Ljava/lang/String;Landroid/bluetooth/IBluetoothDeviceServicesCallback;)Z
    .registers 6
    .parameter "address"
    .parameter "callback"

    .prologue
    .line 529
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothDevice;->getRemoteServices(Ljava/lang/String;Landroid/bluetooth/IBluetoothDeviceServicesCallback;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 531
    :goto_6
    return v1

    .line 530
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRemoteVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "address"

    .prologue
    .line 467
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->getRemoteVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 469
    :goto_6
    return-object v1

    .line 468
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRevision()Ljava/lang/String;
    .registers 4

    .prologue
    .line 206
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->getRevision()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 208
    :goto_6
    return-object v1

    .line 207
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getScanMode()I
    .registers 4

    .prologue
    .line 230
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->getScanMode()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 232
    :goto_6
    return v1

    .line 231
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    const/16 v1, -0x3f4

    goto :goto_6
.end method

.method public getVersion()Ljava/lang/String;
    .registers 4

    .prologue
    .line 200
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->getVersion()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 202
    :goto_6
    return-object v1

    .line 201
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public hasBond(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 436
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->hasBond(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 438
    :goto_6
    return v1

    .line 437
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isAclConnected(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 344
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->isAclConnected(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 346
    :goto_6
    return v1

    .line 345
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isDiscovering()Z
    .registers 4

    .prologue
    .line 276
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->isDiscovering()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 278
    :goto_6
    return v1

    .line 277
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isEnabled()Z
    .registers 4

    .prologue
    .line 98
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->isEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 100
    :goto_6
    return v1

    .line 99
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isPeriodicDiscovery()Z
    .registers 4

    .prologue
    .line 295
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->isPeriodicDiscovery()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 297
    :goto_6
    return v1

    .line 296
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public lastSeen(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "address"

    .prologue
    .line 558
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->lastSeen(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 560
    :goto_6
    return-object v1

    .line 559
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 560
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public lastUsed(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "address"

    .prologue
    .line 564
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->lastUsed(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 566
    :goto_6
    return-object v1

    .line 565
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public listAclConnections()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 323
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->listAclConnections()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 325
    :goto_6
    return-object v1

    .line 324
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public listBonds()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 429
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->listBonds()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 431
    :goto_6
    return-object v1

    .line 430
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public listRemoteDevices()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 302
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->listRemoteDevices()[Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 304
    :goto_6
    return-object v1

    .line 303
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public removeBond(Ljava/lang/String;)Z
    .registers 5
    .parameter "address"

    .prologue
    .line 399
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->removeBond(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 401
    :goto_6
    return v1

    .line 400
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setDiscoverableTimeout(I)V
    .registers 5
    .parameter "timeout"

    .prologue
    .line 254
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->setDiscoverableTimeout(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 256
    :goto_5
    return-void

    .line 255
    :catch_6
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setLevel2Services(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7
    .parameter "address"
    .parameter "servObjPath"
    .parameter "trusted"

    .prologue
    .line 545
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/IBluetoothDevice;->setLevel2Services(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 547
    :goto_6
    return v1

    .line 546
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setName(Ljava/lang/String;)Z
    .registers 5
    .parameter "name"

    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->setName(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 195
    :goto_6
    return v1

    .line 194
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setPin(Ljava/lang/String;[B)Z
    .registers 6
    .parameter "address"
    .parameter "pin"

    .prologue
    .line 571
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothDevice;->setPin(Ljava/lang/String;[B)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 573
    :goto_6
    return v1

    .line 572
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setScanMode(I)V
    .registers 5
    .parameter "scanMode"

    .prologue
    .line 242
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->setScanMode(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 244
    :goto_5
    return-void

    .line 243
    :catch_6
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public startDiscovery()Z
    .registers 2

    .prologue
    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothDevice;->startDiscovery(Z)Z

    move-result v0

    return v0
.end method

.method public startDiscovery(Z)Z
    .registers 5
    .parameter "resolveNames"

    .prologue
    .line 263
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothDevice;->startDiscovery(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 265
    :goto_6
    return v1

    .line 264
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public startPeriodicDiscovery()Z
    .registers 4

    .prologue
    .line 283
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->startPeriodicDiscovery()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 285
    :goto_6
    return v1

    .line 284
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public stopPeriodicDiscovery()Z
    .registers 4

    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDevice;->mService:Landroid/bluetooth/IBluetoothDevice;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothDevice;->stopPeriodicDiscovery()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 291
    :goto_6
    return v1

    .line 290
    :catch_7
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothDevice"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    const/4 v1, 0x0

    goto :goto_6
.end method
