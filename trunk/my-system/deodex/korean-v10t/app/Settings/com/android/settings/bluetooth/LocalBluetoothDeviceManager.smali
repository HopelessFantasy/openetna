.class public Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;
.super Ljava/lang/Object;
.source "LocalBluetoothDeviceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalBluetoothDeviceManager"


# instance fields
.field final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field final mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/LocalBluetoothManager;)V
    .registers 3
    .parameter "localManager"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->mDevices:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 42
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCallbacks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->mCallbacks:Ljava/util/List;

    .line 43
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->readPairedDevices()Z

    .line 44
    return-void
.end method

.method private checkForDeviceRemoval(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V
    .registers 3
    .parameter "device"

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getBondState()I

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->isVisible()Z

    move-result v0

    if-nez v0, :cond_14

    .line 105
    iget-object v0, p0, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->mDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 106
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->dispatchDeviceDeleted(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V

    .line 108
    :cond_14
    return-void
.end method

.method private dispatchDeviceAdded(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V
    .registers 6
    .parameter "device"

    .prologue
    .line 142
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->mCallbacks:Ljava/util/List;

    monitor-enter v2

    .line 143
    :try_start_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;

    .line 144
    .local v0, callback:Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;
    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;->onDeviceAdded(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V

    goto :goto_9

    .line 146
    .end local v0           #callback:Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_19
    move-exception v3

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 149
    return-void
.end method

.method private dispatchDeviceDeleted(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V
    .registers 6
    .parameter "device"

    .prologue
    .line 152
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->mCallbacks:Ljava/util/List;

    monitor-enter v2

    .line 153
    :try_start_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;

    .line 154
    .local v0, callback:Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;
    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;->onDeviceDeleted(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V

    goto :goto_9

    .line 156
    .end local v0           #callback:Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_19
    move-exception v3

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1c
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 157
    return-void
.end method

.method private declared-synchronized readPairedDevices()Z
    .registers 10

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    iget-object v8, p0, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    .line 48
    .local v7, manager:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->listBonds()[Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_37

    move-result-object v2

    .line 49
    .local v2, bondedAddresses:[Ljava/lang/String;
    if-nez v2, :cond_10

    const/4 v8, 0x0

    .line 62
    :goto_e
    monitor-exit p0

    return v8

    .line 51
    :cond_10
    const/4 v4, 0x0

    .line 52
    .local v4, deviceAdded:Z
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    :try_start_12
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_14
    if-ge v5, v6, :cond_35

    aget-object v0, v1, v5

    .line 53
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->findDevice(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    move-result-object v3

    .line 54
    .local v3, device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-nez v3, :cond_32

    .line 55
    new-instance v3, Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    .end local v3           #device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    iget-object v8, p0, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8, v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    .restart local v3       #device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    iget-object v8, p0, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->mDevices:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-direct {p0, v3}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->dispatchDeviceAdded(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V
    :try_end_31
    .catchall {:try_start_12 .. :try_end_31} :catchall_37

    .line 58
    const/4 v4, 0x1

    .line 52
    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .end local v0           #address:Ljava/lang/String;
    .end local v3           #device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :cond_35
    move v8, v4

    .line 62
    goto :goto_e

    .line 47
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #bondedAddresses:[Ljava/lang/String;
    .end local v4           #deviceAdded:Z
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #manager:Landroid/bluetooth/BluetoothDevice;
    :catchall_37
    move-exception v8

    monitor-exit p0

    throw v8
.end method


# virtual methods
.method public declared-synchronized findDevice(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    .registers 6
    .parameter "address"

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->mDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_a
    if-ltz v1, :cond_24

    .line 120
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->mDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    .line 122
    .local v0, device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_26

    move-result v2

    if-eqz v2, :cond_21

    move-object v2, v0

    .line 127
    .end local v0           #device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :goto_1f
    monitor-exit p0

    return-object v2

    .line 119
    .restart local v0       #device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 127
    .end local v0           #device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :cond_24
    const/4 v2, 0x0

    goto :goto_1f

    .line 119
    .end local v1           #i:I
    :catchall_26
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getDevicesCopy()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->mDevices:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "address"

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->findDevice(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    move-result-object v0

    .line 138
    .local v0, device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    move-object v1, p1

    goto :goto_a
.end method

.method onBluetoothStateChanged(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 70
    if-eqz p1, :cond_5

    .line 71
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->readPairedDevices()Z

    .line 73
    :cond_5
    return-void
.end method

.method public declared-synchronized onBondingError(Ljava/lang/String;I)V
    .registers 6
    .parameter "address"
    .parameter "reason"

    .prologue
    .line 189
    monitor-enter p0

    packed-switch p2, :pswitch_data_20

    .line 200
    :pswitch_4
    const v0, 0x7f08010b

    .line 202
    .local v0, errorMsg:I
    :goto_7
    :try_start_7
    iget-object v1, p0, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const v2, 0x7f08010a

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->showError(Ljava/lang/String;II)V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_1d

    .line 203
    monitor-exit p0

    return-void

    .line 191
    .end local v0           #errorMsg:I
    :pswitch_11
    const v0, 0x7f08010c

    .line 192
    .restart local v0       #errorMsg:I
    goto :goto_7

    .line 194
    .end local v0           #errorMsg:I
    :pswitch_15
    const v0, 0x7f08010e

    .line 195
    .restart local v0       #errorMsg:I
    goto :goto_7

    .line 197
    .end local v0           #errorMsg:I
    :pswitch_19
    const v0, 0x7f08010d

    .line 198
    .restart local v0       #errorMsg:I
    goto :goto_7

    .line 189
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_11
        :pswitch_15
        :pswitch_4
        :pswitch_19
    .end packed-switch
.end method

.method public declared-synchronized onBondingStateChanged(Ljava/lang/String;I)V
    .registers 7
    .parameter "address"
    .parameter "bondState"

    .prologue
    .line 160
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->findDevice(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    move-result-object v0

    .line 161
    .local v0, device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-nez v0, :cond_2d

    .line 162
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->readPairedDevices()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 163
    const-string v1, "LocalBluetoothDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got bonding state changed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but we have no record of that device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_31

    .line 177
    :cond_2b
    :goto_2b
    monitor-exit p0

    return-void

    .line 169
    :cond_2d
    :try_start_2d
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->refresh()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_2b

    .line 160
    .end local v0           #device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onBtClassChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "address"

    .prologue
    .line 238
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->findDevice(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    move-result-object v0

    .line 239
    .local v0, device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-eqz v0, :cond_a

    .line 240
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->refreshBtClass()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 242
    :cond_a
    monitor-exit p0

    return-void

    .line 238
    .end local v0           #device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :catchall_c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onConnectingError(Ljava/lang/String;)V
    .registers 4
    .parameter "address"

    .prologue
    .line 215
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->findDevice(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_d

    move-result-object v0

    .line 216
    .local v0, device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-nez v0, :cond_9

    .line 224
    :goto_7
    monitor-exit p0

    return-void

    .line 223
    :cond_9
    :try_start_9
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->showConnectingError()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    goto :goto_7

    .line 215
    .end local v0           #device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDeviceAppeared(Ljava/lang/String;S)V
    .registers 6
    .parameter "address"
    .parameter "rssi"

    .prologue
    .line 76
    monitor-enter p0

    const/4 v1, 0x0

    .line 78
    .local v1, deviceAdded:Z
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->findDevice(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    move-result-object v0

    .line 79
    .local v0, device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-nez v0, :cond_19

    .line 80
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    .end local v0           #device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    .restart local v0       #device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->mDevices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    const/4 v1, 0x1

    .line 85
    :cond_19
    invoke-virtual {v0, p2}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->setRssi(S)V

    .line 86
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->setVisible(Z)V

    .line 88
    if-eqz v1, :cond_25

    .line 89
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->dispatchDeviceAdded(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_27

    .line 91
    :cond_25
    monitor-exit p0

    return-void

    .line 76
    .end local v0           #device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :catchall_27
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onDeviceDisappeared(Ljava/lang/String;)V
    .registers 4
    .parameter "address"

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->findDevice(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_11

    move-result-object v0

    .line 95
    .local v0, device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-nez v0, :cond_9

    .line 99
    :goto_7
    monitor-exit p0

    return-void

    .line 97
    :cond_9
    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->setVisible(Z)V

    .line 98
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->checkForDeviceRemoval(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_11

    goto :goto_7

    .line 94
    .end local v0           #device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDeviceNameUpdated(Ljava/lang/String;)V
    .registers 4
    .parameter "address"

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->findDevice(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    move-result-object v0

    .line 112
    .local v0, device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-eqz v0, :cond_a

    .line 113
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->refreshName()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 115
    :cond_a
    monitor-exit p0

    return-void

    .line 111
    .end local v0           #device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :catchall_c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onProfileStateChanged(Ljava/lang/String;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;II)V
    .registers 7
    .parameter "address"
    .parameter "profile"
    .parameter "newProfileState"
    .parameter "oldProfileState"

    .prologue
    .line 207
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->findDevice(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_10

    move-result-object v0

    .line 208
    .local v0, device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-nez v0, :cond_9

    .line 212
    :goto_7
    monitor-exit p0

    return-void

    .line 210
    :cond_9
    :try_start_9
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;II)V

    .line 211
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->refresh()V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_10

    goto :goto_7

    .line 207
    .end local v0           #device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onScanningStateChanged(Z)V
    .registers 6
    .parameter "started"

    .prologue
    .line 227
    monitor-enter p0

    if-nez p1, :cond_5

    .line 235
    :cond_3
    monitor-exit p0

    return-void

    .line 230
    :cond_5
    :try_start_5
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->mDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_e
    if-ltz v1, :cond_3

    .line 231
    iget-object v2, p0, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->mDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    .line 232
    .local v0, device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->setVisible(Z)V

    .line 233
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->checkForDeviceRemoval(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_22

    .line 230
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 227
    .end local v0           #device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    .end local v1           #i:I
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2
.end method
