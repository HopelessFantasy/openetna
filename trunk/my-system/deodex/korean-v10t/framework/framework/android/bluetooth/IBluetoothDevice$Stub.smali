.class public abstract Landroid/bluetooth/IBluetoothDevice$Stub;
.super Landroid/os/Binder;
.source "IBluetoothDevice.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothDevice"

.field static final TRANSACTION_DUTOff:I = 0x32

.field static final TRANSACTION_DUTOn:I = 0x31

.field static final TRANSACTION_authorizeService:I = 0x30

.field static final TRANSACTION_authorizeSsp:I = 0x2f

.field static final TRANSACTION_cancelBondProcess:I = 0x1b

.field static final TRANSACTION_cancelDiscovery:I = 0x11

.field static final TRANSACTION_cancelPin:I = 0x2e

.field static final TRANSACTION_createBond:I = 0x1a

.field static final TRANSACTION_disable:I = 0x4

.field static final TRANSACTION_disconnectRemoteDeviceAcl:I = 0x19

.field static final TRANSACTION_enable:I = 0x3

.field static final TRANSACTION_getAddress:I = 0x5

.field static final TRANSACTION_getBluetoothState:I = 0x2

.field static final TRANSACTION_getBondState:I = 0x1f

.field static final TRANSACTION_getCompany:I = 0xb

.field static final TRANSACTION_getDiscoverableTimeout:I = 0xe

.field static final TRANSACTION_getLevel2Services:I = 0x24

.field static final TRANSACTION_getManufacturer:I = 0xa

.field static final TRANSACTION_getName:I = 0x6

.field static final TRANSACTION_getRemoteClass:I = 0x23

.field static final TRANSACTION_getRemoteCompany:I = 0x27

.field static final TRANSACTION_getRemoteFeatures:I = 0x29

.field static final TRANSACTION_getRemoteManufacturer:I = 0x26

.field static final TRANSACTION_getRemoteName:I = 0x20

.field static final TRANSACTION_getRemoteRevision:I = 0x22

.field static final TRANSACTION_getRemoteServiceChannel:I = 0x28

.field static final TRANSACTION_getRemoteServices:I = 0x2a

.field static final TRANSACTION_getRemoteVersion:I = 0x21

.field static final TRANSACTION_getRevision:I = 0x9

.field static final TRANSACTION_getScanMode:I = 0xc

.field static final TRANSACTION_getVersion:I = 0x8

.field static final TRANSACTION_hasBond:I = 0x1e

.field static final TRANSACTION_isAclConnected:I = 0x18

.field static final TRANSACTION_isDiscovering:I = 0x12

.field static final TRANSACTION_isEnabled:I = 0x1

.field static final TRANSACTION_isPeriodicDiscovery:I = 0x15

.field static final TRANSACTION_lastSeen:I = 0x2b

.field static final TRANSACTION_lastUsed:I = 0x2c

.field static final TRANSACTION_listAclConnections:I = 0x17

.field static final TRANSACTION_listBonds:I = 0x1d

.field static final TRANSACTION_listRemoteDevices:I = 0x16

.field static final TRANSACTION_removeBond:I = 0x1c

.field static final TRANSACTION_setDiscoverableTimeout:I = 0xf

.field static final TRANSACTION_setLevel2Services:I = 0x25

.field static final TRANSACTION_setName:I = 0x7

.field static final TRANSACTION_setPin:I = 0x2d

.field static final TRANSACTION_setScanMode:I = 0xd

.field static final TRANSACTION_startDiscovery:I = 0x10

.field static final TRANSACTION_startPeriodicDiscovery:I = 0x13

.field static final TRANSACTION_stopPeriodicDiscovery:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothDevice;
    .registers 3
    .parameter "obj"

    .prologue
    .line 34
    if-nez p0, :cond_4

    .line 35
    const/4 v1, 0x0

    .line 41
    :goto_3
    return-object v1

    .line 37
    :cond_4
    const-string v1, "android.bluetooth.IBluetoothDevice"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothDevice;

    if-eqz v1, :cond_14

    .line 39
    check-cast v0, Landroid/bluetooth/IBluetoothDevice;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 41
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothDevice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 45
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "android.bluetooth.IBluetoothDevice"

    .line 49
    sparse-switch p1, :sswitch_data_4da

    .line 537
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 53
    :sswitch_c
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 54
    goto :goto_b

    .line 58
    :sswitch_13
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->isEnabled()Z

    move-result v4

    .line 60
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v4, :cond_27

    move v5, v6

    :goto_22
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 62
    goto :goto_b

    :cond_27
    move v5, v8

    .line 61
    goto :goto_22

    .line 66
    .end local v4           #_result:Z
    :sswitch_29
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getBluetoothState()I

    move-result v4

    .line 68
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 70
    goto :goto_b

    .line 74
    .end local v4           #_result:I
    :sswitch_3a
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_55

    move v0, v6

    .line 77
    .local v0, _arg0:Z
    :goto_46
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->enable(Z)Z

    move-result v4

    .line 78
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v4, :cond_57

    move v5, v6

    :goto_50
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 80
    goto :goto_b

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_55
    move v0, v8

    .line 76
    goto :goto_46

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_57
    move v5, v8

    .line 79
    goto :goto_50

    .line 84
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_59
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_74

    move v0, v6

    .line 87
    .restart local v0       #_arg0:Z
    :goto_65
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->disable(Z)Z

    move-result v4

    .line 88
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v4, :cond_76

    move v5, v6

    :goto_6f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 90
    goto :goto_b

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_74
    move v0, v8

    .line 86
    goto :goto_65

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_76
    move v5, v8

    .line 89
    goto :goto_6f

    .line 94
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_78
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 98
    goto :goto_b

    .line 102
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_89
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getName()Ljava/lang/String;

    move-result-object v4

    .line 104
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 106
    goto/16 :goto_b

    .line 110
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_9b
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->setName(Ljava/lang/String;)Z

    move-result v4

    .line 114
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v4, :cond_b4

    move v5, v6

    :goto_ae
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 116
    goto/16 :goto_b

    :cond_b4
    move v5, v8

    .line 115
    goto :goto_ae

    .line 120
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_b6
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getVersion()Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 124
    goto/16 :goto_b

    .line 128
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_c8
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getRevision()Ljava/lang/String;

    move-result-object v4

    .line 130
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 132
    goto/16 :goto_b

    .line 136
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_da
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    .line 138
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 140
    goto/16 :goto_b

    .line 144
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_ec
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getCompany()Ljava/lang/String;

    move-result-object v4

    .line 146
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 148
    goto/16 :goto_b

    .line 152
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_fe
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getScanMode()I

    move-result v4

    .line 154
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 156
    goto/16 :goto_b

    .line 160
    .end local v4           #_result:I
    :sswitch_110
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 163
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->setScanMode(I)Z

    move-result v4

    .line 164
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v4, :cond_129

    move v5, v6

    :goto_123
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 166
    goto/16 :goto_b

    :cond_129
    move v5, v8

    .line 165
    goto :goto_123

    .line 170
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_12b
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getDiscoverableTimeout()I

    move-result v4

    .line 172
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 174
    goto/16 :goto_b

    .line 178
    .end local v4           #_result:I
    :sswitch_13d
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 181
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->setDiscoverableTimeout(I)Z

    move-result v4

    .line 182
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v4, :cond_156

    move v5, v6

    :goto_150
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 184
    goto/16 :goto_b

    :cond_156
    move v5, v8

    .line 183
    goto :goto_150

    .line 188
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_158
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_174

    move v0, v6

    .line 191
    .local v0, _arg0:Z
    :goto_164
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->startDiscovery(Z)Z

    move-result v4

    .line 192
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v4, :cond_176

    move v5, v6

    :goto_16e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 194
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :cond_174
    move v0, v8

    .line 190
    goto :goto_164

    .restart local v0       #_arg0:Z
    .restart local v4       #_result:Z
    :cond_176
    move v5, v8

    .line 193
    goto :goto_16e

    .line 198
    .end local v0           #_arg0:Z
    .end local v4           #_result:Z
    :sswitch_178
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->cancelDiscovery()Z

    move-result v4

    .line 200
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v4, :cond_18d

    move v5, v6

    :goto_187
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 202
    goto/16 :goto_b

    :cond_18d
    move v5, v8

    .line 201
    goto :goto_187

    .line 206
    .end local v4           #_result:Z
    :sswitch_18f
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->isDiscovering()Z

    move-result v4

    .line 208
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    if-eqz v4, :cond_1a4

    move v5, v6

    :goto_19e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 210
    goto/16 :goto_b

    :cond_1a4
    move v5, v8

    .line 209
    goto :goto_19e

    .line 214
    .end local v4           #_result:Z
    :sswitch_1a6
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->startPeriodicDiscovery()Z

    move-result v4

    .line 216
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    if-eqz v4, :cond_1bb

    move v5, v6

    :goto_1b5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 218
    goto/16 :goto_b

    :cond_1bb
    move v5, v8

    .line 217
    goto :goto_1b5

    .line 222
    .end local v4           #_result:Z
    :sswitch_1bd
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->stopPeriodicDiscovery()Z

    move-result v4

    .line 224
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v4, :cond_1d2

    move v5, v6

    :goto_1cc
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 226
    goto/16 :goto_b

    :cond_1d2
    move v5, v8

    .line 225
    goto :goto_1cc

    .line 230
    .end local v4           #_result:Z
    :sswitch_1d4
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->isPeriodicDiscovery()Z

    move-result v4

    .line 232
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v4, :cond_1e9

    move v5, v6

    :goto_1e3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 234
    goto/16 :goto_b

    :cond_1e9
    move v5, v8

    .line 233
    goto :goto_1e3

    .line 238
    .end local v4           #_result:Z
    :sswitch_1eb
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->listRemoteDevices()[Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v5, v6

    .line 242
    goto/16 :goto_b

    .line 246
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_1fd
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->listAclConnections()[Ljava/lang/String;

    move-result-object v4

    .line 248
    .restart local v4       #_result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v5, v6

    .line 250
    goto/16 :goto_b

    .line 254
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_20f
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->isAclConnected(Ljava/lang/String;)Z

    move-result v4

    .line 258
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v4, :cond_228

    move v5, v6

    :goto_222
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 260
    goto/16 :goto_b

    :cond_228
    move v5, v8

    .line 259
    goto :goto_222

    .line 264
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_22a
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 267
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->disconnectRemoteDeviceAcl(Ljava/lang/String;)Z

    move-result v4

    .line 268
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    if-eqz v4, :cond_243

    move v5, v6

    :goto_23d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 270
    goto/16 :goto_b

    :cond_243
    move v5, v8

    .line 269
    goto :goto_23d

    .line 274
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_245
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->createBond(Ljava/lang/String;)Z

    move-result v4

    .line 278
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    if-eqz v4, :cond_25e

    move v5, v6

    :goto_258
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 280
    goto/16 :goto_b

    :cond_25e
    move v5, v8

    .line 279
    goto :goto_258

    .line 284
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_260
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 287
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->cancelBondProcess(Ljava/lang/String;)Z

    move-result v4

    .line 288
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    if-eqz v4, :cond_279

    move v5, v6

    :goto_273
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 290
    goto/16 :goto_b

    :cond_279
    move v5, v8

    .line 289
    goto :goto_273

    .line 294
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_27b
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->removeBond(Ljava/lang/String;)Z

    move-result v4

    .line 298
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    if-eqz v4, :cond_294

    move v5, v6

    :goto_28e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 300
    goto/16 :goto_b

    :cond_294
    move v5, v8

    .line 299
    goto :goto_28e

    .line 304
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_296
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->listBonds()[Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v5, v6

    .line 308
    goto/16 :goto_b

    .line 312
    .end local v4           #_result:[Ljava/lang/String;
    :sswitch_2a8
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 315
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->hasBond(Ljava/lang/String;)Z

    move-result v4

    .line 316
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    if-eqz v4, :cond_2c1

    move v5, v6

    :goto_2bb
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 318
    goto/16 :goto_b

    :cond_2c1
    move v5, v8

    .line 317
    goto :goto_2bb

    .line 322
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_2c3
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 325
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getBondState(Ljava/lang/String;)I

    move-result v4

    .line 326
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 328
    goto/16 :goto_b

    .line 332
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_2d9
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 335
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 338
    goto/16 :goto_b

    .line 342
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_2ef
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 345
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getRemoteVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 346
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 348
    goto/16 :goto_b

    .line 352
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_305
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 355
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getRemoteRevision(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 356
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 358
    goto/16 :goto_b

    .line 362
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_31b
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getRemoteClass(Ljava/lang/String;)I

    move-result v4

    .line 366
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 368
    goto/16 :goto_b

    .line 372
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_331
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 375
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getLevel2Services(Ljava/lang/String;)I

    move-result v4

    .line 376
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 378
    goto/16 :goto_b

    .line 382
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:I
    :sswitch_347
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 386
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_36b

    move v2, v6

    .line 389
    .local v2, _arg2:Z
    :goto_35b
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetoothDevice$Stub;->setLevel2Services(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 390
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    if-eqz v4, :cond_36d

    move v5, v6

    :goto_365
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 392
    goto/16 :goto_b

    .end local v2           #_arg2:Z
    .end local v4           #_result:Z
    :cond_36b
    move v2, v8

    .line 388
    goto :goto_35b

    .restart local v2       #_arg2:Z
    .restart local v4       #_result:Z
    :cond_36d
    move v5, v8

    .line 391
    goto :goto_365

    .line 396
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Z
    .end local v4           #_result:Z
    :sswitch_36f
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 399
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getRemoteManufacturer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 400
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 402
    goto/16 :goto_b

    .line 406
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_385
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 409
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getRemoteCompany(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 410
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 412
    goto/16 :goto_b

    .line 416
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_39b
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 420
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 422
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/IBluetoothDeviceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothDeviceCallback;

    move-result-object v2

    .line 423
    .local v2, _arg2:Landroid/bluetooth/IBluetoothDeviceCallback;
    invoke-virtual {p0, v0, v1, v2}, Landroid/bluetooth/IBluetoothDevice$Stub;->getRemoteServiceChannel(Ljava/lang/String;ILandroid/bluetooth/IBluetoothDeviceCallback;)Z

    move-result v4

    .line 424
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    if-eqz v4, :cond_3c0

    move v5, v6

    :goto_3ba
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 426
    goto/16 :goto_b

    :cond_3c0
    move v5, v8

    .line 425
    goto :goto_3ba

    .line 430
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Landroid/bluetooth/IBluetoothDeviceCallback;
    .end local v4           #_result:Z
    :sswitch_3c2
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 433
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->getRemoteFeatures(Ljava/lang/String;)[B

    move-result-object v4

    .line 434
    .local v4, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    move v5, v6

    .line 436
    goto/16 :goto_b

    .line 440
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:[B
    :sswitch_3d8
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 444
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/IBluetoothDeviceServicesCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothDeviceServicesCallback;

    move-result-object v1

    .line 445
    .local v1, _arg1:Landroid/bluetooth/IBluetoothDeviceServicesCallback;
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothDevice$Stub;->getRemoteServices(Ljava/lang/String;Landroid/bluetooth/IBluetoothDeviceServicesCallback;)Z

    move-result v4

    .line 446
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    if-eqz v4, :cond_3f9

    move v5, v6

    :goto_3f3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 448
    goto/16 :goto_b

    :cond_3f9
    move v5, v8

    .line 447
    goto :goto_3f3

    .line 452
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Landroid/bluetooth/IBluetoothDeviceServicesCallback;
    .end local v4           #_result:Z
    :sswitch_3fb
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 455
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->lastSeen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 458
    goto/16 :goto_b

    .line 462
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_411
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 465
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->lastUsed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 466
    .restart local v4       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 468
    goto/16 :goto_b

    .line 472
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_427
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 476
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 477
    .local v1, _arg1:[B
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothDevice$Stub;->setPin(Ljava/lang/String;[B)Z

    move-result v4

    .line 478
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    if-eqz v4, :cond_444

    move v5, v6

    :goto_43e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 480
    goto/16 :goto_b

    :cond_444
    move v5, v8

    .line 479
    goto :goto_43e

    .line 484
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:[B
    .end local v4           #_result:Z
    :sswitch_446
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 487
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothDevice$Stub;->cancelPin(Ljava/lang/String;)Z

    move-result v4

    .line 488
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    if-eqz v4, :cond_45f

    move v5, v6

    :goto_459
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 490
    goto/16 :goto_b

    :cond_45f
    move v5, v8

    .line 489
    goto :goto_459

    .line 494
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v4           #_result:Z
    :sswitch_461
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 498
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_481

    move v1, v6

    .line 499
    .local v1, _arg1:Z
    :goto_471
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothDevice$Stub;->authorizeSsp(Ljava/lang/String;Z)Z

    move-result v4

    .line 500
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    if-eqz v4, :cond_483

    move v5, v6

    :goto_47b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 502
    goto/16 :goto_b

    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :cond_481
    move v1, v8

    .line 498
    goto :goto_471

    .restart local v1       #_arg1:Z
    .restart local v4       #_result:Z
    :cond_483
    move v5, v8

    .line 501
    goto :goto_47b

    .line 506
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Z
    .end local v4           #_result:Z
    :sswitch_485
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 510
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4b0

    move v2, v6

    .line 514
    .local v2, _arg2:Z
    :goto_499
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4b2

    move v3, v6

    .line 515
    .local v3, _arg3:Z
    :goto_4a0
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothDevice$Stub;->authorizeService(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v4

    .line 516
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    if-eqz v4, :cond_4b4

    move v5, v6

    :goto_4aa
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 518
    goto/16 :goto_b

    .end local v2           #_arg2:Z
    .end local v3           #_arg3:Z
    .end local v4           #_result:Z
    :cond_4b0
    move v2, v8

    .line 512
    goto :goto_499

    .restart local v2       #_arg2:Z
    :cond_4b2
    move v3, v8

    .line 514
    goto :goto_4a0

    .restart local v3       #_arg3:Z
    .restart local v4       #_result:Z
    :cond_4b4
    move v5, v8

    .line 517
    goto :goto_4aa

    .line 522
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:Z
    .end local v3           #_arg3:Z
    .end local v4           #_result:Z
    :sswitch_4b6
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->DUTOn()I

    move-result v4

    .line 524
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 526
    goto/16 :goto_b

    .line 530
    .end local v4           #_result:I
    :sswitch_4c8
    const-string v5, "android.bluetooth.IBluetoothDevice"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothDevice$Stub;->DUTOff()I

    move-result v4

    .line 532
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 534
    goto/16 :goto_b

    .line 49
    :sswitch_data_4da
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_29
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_59
        0x5 -> :sswitch_78
        0x6 -> :sswitch_89
        0x7 -> :sswitch_9b
        0x8 -> :sswitch_b6
        0x9 -> :sswitch_c8
        0xa -> :sswitch_da
        0xb -> :sswitch_ec
        0xc -> :sswitch_fe
        0xd -> :sswitch_110
        0xe -> :sswitch_12b
        0xf -> :sswitch_13d
        0x10 -> :sswitch_158
        0x11 -> :sswitch_178
        0x12 -> :sswitch_18f
        0x13 -> :sswitch_1a6
        0x14 -> :sswitch_1bd
        0x15 -> :sswitch_1d4
        0x16 -> :sswitch_1eb
        0x17 -> :sswitch_1fd
        0x18 -> :sswitch_20f
        0x19 -> :sswitch_22a
        0x1a -> :sswitch_245
        0x1b -> :sswitch_260
        0x1c -> :sswitch_27b
        0x1d -> :sswitch_296
        0x1e -> :sswitch_2a8
        0x1f -> :sswitch_2c3
        0x20 -> :sswitch_2d9
        0x21 -> :sswitch_2ef
        0x22 -> :sswitch_305
        0x23 -> :sswitch_31b
        0x24 -> :sswitch_331
        0x25 -> :sswitch_347
        0x26 -> :sswitch_36f
        0x27 -> :sswitch_385
        0x28 -> :sswitch_39b
        0x29 -> :sswitch_3c2
        0x2a -> :sswitch_3d8
        0x2b -> :sswitch_3fb
        0x2c -> :sswitch_411
        0x2d -> :sswitch_427
        0x2e -> :sswitch_446
        0x2f -> :sswitch_461
        0x30 -> :sswitch_485
        0x31 -> :sswitch_4b6
        0x32 -> :sswitch_4c8
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
