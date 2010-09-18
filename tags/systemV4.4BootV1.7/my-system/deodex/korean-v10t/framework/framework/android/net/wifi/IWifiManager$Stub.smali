.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_Channel_HiddenMenu:I = 0x1d

.field static final TRANSACTION_CloseDUT_HiddenMenu:I = 0x16

.field static final TRANSACTION_FRError_HiddenMenu:I = 0x13

.field static final TRANSACTION_FRGood_HiddenMenu:I = 0x14

.field static final TRANSACTION_OpenDUT_HiddenMenu:I = 0xe

.field static final TRANSACTION_RSSI_HiddenMenu:I = 0x15

.field static final TRANSACTION_RxStart_HiddenMenu:I = 0xf

.field static final TRANSACTION_RxStop_HiddenMenu:I = 0x10

.field static final TRANSACTION_SetPreamble_HiddenMenu:I = 0x18

.field static final TRANSACTION_TxBurstFrames_HiddenMenu:I = 0x1c

.field static final TRANSACTION_TxBurstInterval_HiddenMenu:I = 0x19

.field static final TRANSACTION_TxDataRate_HiddenMenu:I = 0x17

.field static final TRANSACTION_TxDestAddress_HiddenMenu:I = 0x1e

.field static final TRANSACTION_TxGain_HiddenMenu:I = 0x1a

.field static final TRANSACTION_TxPayloadLength_HiddenMenu:I = 0x1b

.field static final TRANSACTION_TxStart_HiddenMenu:I = 0x12

.field static final TRANSACTION_TxStop_HiddenMenu:I = 0x11

.field static final TRANSACTION_acquireMulticastLock:I = 0x28

.field static final TRANSACTION_acquireWifiLock:I = 0x25

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x2

.field static final TRANSACTION_disableNetwork:I = 0x5

.field static final TRANSACTION_disconnect:I = 0x9

.field static final TRANSACTION_enableNetwork:I = 0x4

.field static final TRANSACTION_getConfiguredNetworks:I = 0x1

.field static final TRANSACTION_getConnectionInfo:I = 0xc

.field static final TRANSACTION_getDhcpInfo:I = 0x24

.field static final TRANSACTION_getNumAllowedChannels:I = 0x20

.field static final TRANSACTION_getScanResults:I = 0x8

.field static final TRANSACTION_getValidChannelCounts:I = 0x22

.field static final TRANSACTION_getWifiEnabledState:I = 0x1f

.field static final TRANSACTION_isMulticastEnabled:I = 0x27

.field static final TRANSACTION_pingSupplicant:I = 0x6

.field static final TRANSACTION_reassociate:I = 0xb

.field static final TRANSACTION_reconnect:I = 0xa

.field static final TRANSACTION_releaseMulticastLock:I = 0x29

.field static final TRANSACTION_releaseWifiLock:I = 0x26

.field static final TRANSACTION_removeNetwork:I = 0x3

.field static final TRANSACTION_saveConfiguration:I = 0x23

.field static final TRANSACTION_setNumAllowedChannels:I = 0x21

.field static final TRANSACTION_setWifiEnabled:I = 0xd

.field static final TRANSACTION_startScan:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 37
    if-nez p0, :cond_4

    .line 38
    const/4 v1, 0x0

    .line 44
    :goto_3
    return-object v1

    .line 40
    :cond_4
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_14

    .line 42
    check-cast v0, Landroid/net/wifi/IWifiManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 44
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
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

    const/4 v7, 0x1

    const-string v9, "android.net.wifi.IWifiManager"

    .line 52
    sparse-switch p1, :sswitch_data_44c

    .line 465
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_b
    return v6

    .line 56
    :sswitch_c
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 57
    goto :goto_b

    .line 61
    :sswitch_13
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 63
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v6, v7

    .line 65
    goto :goto_b

    .line 69
    .end local v5           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :sswitch_24
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43

    .line 72
    sget-object v6, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 77
    .local v0, _arg0:Landroid/net/wifi/WifiConfiguration;
    :goto_37
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    .line 78
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 80
    goto :goto_b

    .line 75
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #_result:I
    :cond_43
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/net/wifi/WifiConfiguration;
    goto :goto_37

    .line 84
    .end local v0           #_arg0:Landroid/net/wifi/WifiConfiguration;
    :sswitch_45
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v3

    .line 88
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v3, :cond_5d

    move v6, v7

    :goto_58
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 90
    goto :goto_b

    :cond_5d
    move v6, v8

    .line 89
    goto :goto_58

    .line 94
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_5f
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7e

    move v1, v7

    .line 99
    .local v1, _arg1:Z
    :goto_6f
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v3

    .line 100
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v3, :cond_80

    move v6, v7

    :goto_79
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 102
    goto :goto_b

    .end local v1           #_arg1:Z
    .end local v3           #_result:Z
    :cond_7e
    move v1, v8

    .line 98
    goto :goto_6f

    .restart local v1       #_arg1:Z
    .restart local v3       #_result:Z
    :cond_80
    move v6, v8

    .line 101
    goto :goto_79

    .line 106
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Z
    .end local v3           #_result:Z
    :sswitch_82
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v3

    .line 110
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v3, :cond_9b

    move v6, v7

    :goto_95
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 112
    goto/16 :goto_b

    :cond_9b
    move v6, v8

    .line 111
    goto :goto_95

    .line 116
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_9d
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v3

    .line 118
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v3, :cond_b2

    move v6, v7

    :goto_ac
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 120
    goto/16 :goto_b

    :cond_b2
    move v6, v8

    .line 119
    goto :goto_ac

    .line 124
    .end local v3           #_result:Z
    :sswitch_b4
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d0

    move v0, v7

    .line 127
    .local v0, _arg0:Z
    :goto_c0
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Z)Z

    move-result v3

    .line 128
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v3, :cond_d2

    move v6, v7

    :goto_ca
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 130
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_d0
    move v0, v8

    .line 126
    goto :goto_c0

    .restart local v0       #_arg0:Z
    .restart local v3       #_result:Z
    :cond_d2
    move v6, v8

    .line 129
    goto :goto_ca

    .line 134
    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :sswitch_d4
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 136
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v6, v7

    .line 138
    goto/16 :goto_b

    .line 142
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :sswitch_e6
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()Z

    move-result v3

    .line 144
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v3, :cond_fb

    move v6, v7

    :goto_f5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 146
    goto/16 :goto_b

    :cond_fb
    move v6, v8

    .line 145
    goto :goto_f5

    .line 150
    .end local v3           #_result:Z
    :sswitch_fd
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()Z

    move-result v3

    .line 152
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v3, :cond_112

    move v6, v7

    :goto_10c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 154
    goto/16 :goto_b

    :cond_112
    move v6, v8

    .line 153
    goto :goto_10c

    .line 158
    .end local v3           #_result:Z
    :sswitch_114
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()Z

    move-result v3

    .line 160
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v3, :cond_129

    move v6, v7

    :goto_123
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 162
    goto/16 :goto_b

    :cond_129
    move v6, v8

    .line 161
    goto :goto_123

    .line 166
    .end local v3           #_result:Z
    :sswitch_12b
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 168
    .local v3, _result:Landroid/net/wifi/WifiInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v3, :cond_142

    .line 170
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    invoke-virtual {v3, p3, v7}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_13f
    move v6, v7

    .line 176
    goto/16 :goto_b

    .line 174
    :cond_142
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13f

    .line 180
    .end local v3           #_result:Landroid/net/wifi/WifiInfo;
    :sswitch_146
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_162

    move v0, v7

    .line 183
    .restart local v0       #_arg0:Z
    :goto_152
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v3

    .line 184
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    if-eqz v3, :cond_164

    move v6, v7

    :goto_15c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 186
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_162
    move v0, v8

    .line 182
    goto :goto_152

    .restart local v0       #_arg0:Z
    .restart local v3       #_result:Z
    :cond_164
    move v6, v8

    .line 185
    goto :goto_15c

    .line 190
    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :sswitch_166
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_182

    move v0, v7

    .line 193
    .restart local v0       #_arg0:Z
    :goto_172
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->OpenDUT_HiddenMenu(Z)Z

    move-result v3

    .line 194
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    if-eqz v3, :cond_184

    move v6, v7

    :goto_17c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 196
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_182
    move v0, v8

    .line 192
    goto :goto_172

    .restart local v0       #_arg0:Z
    .restart local v3       #_result:Z
    :cond_184
    move v6, v8

    .line 195
    goto :goto_17c

    .line 200
    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :sswitch_186
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a2

    move v0, v7

    .line 203
    .restart local v0       #_arg0:Z
    :goto_192
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->RxStart_HiddenMenu(Z)Z

    move-result v3

    .line 204
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v3, :cond_1a4

    move v6, v7

    :goto_19c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 206
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_1a2
    move v0, v8

    .line 202
    goto :goto_192

    .restart local v0       #_arg0:Z
    .restart local v3       #_result:Z
    :cond_1a4
    move v6, v8

    .line 205
    goto :goto_19c

    .line 210
    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :sswitch_1a6
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c2

    move v0, v7

    .line 213
    .restart local v0       #_arg0:Z
    :goto_1b2
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->RxStop_HiddenMenu(Z)Z

    move-result v3

    .line 214
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    if-eqz v3, :cond_1c4

    move v6, v7

    :goto_1bc
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 216
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_1c2
    move v0, v8

    .line 212
    goto :goto_1b2

    .restart local v0       #_arg0:Z
    .restart local v3       #_result:Z
    :cond_1c4
    move v6, v8

    .line 215
    goto :goto_1bc

    .line 220
    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :sswitch_1c6
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e2

    move v0, v7

    .line 223
    .restart local v0       #_arg0:Z
    :goto_1d2
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->TxStop_HiddenMenu(Z)Z

    move-result v3

    .line 224
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v3, :cond_1e4

    move v6, v7

    :goto_1dc
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 226
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_1e2
    move v0, v8

    .line 222
    goto :goto_1d2

    .restart local v0       #_arg0:Z
    .restart local v3       #_result:Z
    :cond_1e4
    move v6, v8

    .line 225
    goto :goto_1dc

    .line 230
    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :sswitch_1e6
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_202

    move v0, v7

    .line 233
    .restart local v0       #_arg0:Z
    :goto_1f2
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->TxStart_HiddenMenu(Z)Z

    move-result v3

    .line 234
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    if-eqz v3, :cond_204

    move v6, v7

    :goto_1fc
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 236
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_202
    move v0, v8

    .line 232
    goto :goto_1f2

    .restart local v0       #_arg0:Z
    .restart local v3       #_result:Z
    :cond_204
    move v6, v8

    .line 235
    goto :goto_1fc

    .line 240
    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :sswitch_206
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21f

    move v0, v7

    .line 243
    .restart local v0       #_arg0:Z
    :goto_212
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->FRError_HiddenMenu(Z)I

    move-result v3

    .line 244
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 246
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v3           #_result:I
    :cond_21f
    move v0, v8

    .line 242
    goto :goto_212

    .line 250
    :sswitch_221
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23a

    move v0, v7

    .line 253
    .restart local v0       #_arg0:Z
    :goto_22d
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->FRGood_HiddenMenu(Z)I

    move-result v3

    .line 254
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 256
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v3           #_result:I
    :cond_23a
    move v0, v8

    .line 252
    goto :goto_22d

    .line 260
    :sswitch_23c
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_255

    move v0, v7

    .line 263
    .restart local v0       #_arg0:Z
    :goto_248
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->RSSI_HiddenMenu(Z)I

    move-result v3

    .line 264
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 266
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v3           #_result:I
    :cond_255
    move v0, v8

    .line 262
    goto :goto_248

    .line 270
    :sswitch_257
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_273

    move v0, v7

    .line 273
    .restart local v0       #_arg0:Z
    :goto_263
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->CloseDUT_HiddenMenu(Z)Z

    move-result v3

    .line 274
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v3, :cond_275

    move v6, v7

    :goto_26d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 276
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_273
    move v0, v8

    .line 272
    goto :goto_263

    .restart local v0       #_arg0:Z
    .restart local v3       #_result:Z
    :cond_275
    move v6, v8

    .line 275
    goto :goto_26d

    .line 280
    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :sswitch_277
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->TxDataRate_HiddenMenu(Ljava/lang/String;)Z

    move-result v3

    .line 284
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    if-eqz v3, :cond_290

    move v6, v7

    :goto_28a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 286
    goto/16 :goto_b

    :cond_290
    move v6, v8

    .line 285
    goto :goto_28a

    .line 290
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_292
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 293
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->SetPreamble_HiddenMenu(Ljava/lang/String;)Z

    move-result v3

    .line 294
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    if-eqz v3, :cond_2ab

    move v6, v7

    :goto_2a5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 296
    goto/16 :goto_b

    :cond_2ab
    move v6, v8

    .line 295
    goto :goto_2a5

    .line 300
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_2ad
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 303
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->TxBurstInterval_HiddenMenu(I)Z

    move-result v3

    .line 304
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    if-eqz v3, :cond_2c6

    move v6, v7

    :goto_2c0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 306
    goto/16 :goto_b

    :cond_2c6
    move v6, v8

    .line 305
    goto :goto_2c0

    .line 310
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_2c8
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 313
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->TxGain_HiddenMenu(I)Z

    move-result v3

    .line 314
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    if-eqz v3, :cond_2e1

    move v6, v7

    :goto_2db
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 316
    goto/16 :goto_b

    :cond_2e1
    move v6, v8

    .line 315
    goto :goto_2db

    .line 320
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_2e3
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 323
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->TxPayloadLength_HiddenMenu(I)Z

    move-result v3

    .line 324
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    if-eqz v3, :cond_2fc

    move v6, v7

    :goto_2f6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 326
    goto/16 :goto_b

    :cond_2fc
    move v6, v8

    .line 325
    goto :goto_2f6

    .line 330
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_2fe
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 333
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->TxBurstFrames_HiddenMenu(I)Z

    move-result v3

    .line 334
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    if-eqz v3, :cond_317

    move v6, v7

    :goto_311
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 336
    goto/16 :goto_b

    :cond_317
    move v6, v8

    .line 335
    goto :goto_311

    .line 340
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_319
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 343
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->Channel_HiddenMenu(I)Z

    move-result v3

    .line 344
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    if-eqz v3, :cond_332

    move v6, v7

    :goto_32c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 346
    goto/16 :goto_b

    :cond_332
    move v6, v8

    .line 345
    goto :goto_32c

    .line 350
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_334
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->TxDestAddress_HiddenMenu(Ljava/lang/String;)Z

    move-result v3

    .line 354
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    if-eqz v3, :cond_34d

    move v6, v7

    :goto_347
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 356
    goto/16 :goto_b

    :cond_34d
    move v6, v8

    .line 355
    goto :goto_347

    .line 360
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_34f
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v3

    .line 362
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 364
    goto/16 :goto_b

    .line 368
    .end local v3           #_result:I
    :sswitch_361
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getNumAllowedChannels()I

    move-result v3

    .line 370
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 372
    goto/16 :goto_b

    .line 376
    .end local v3           #_result:I
    :sswitch_373
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 379
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setNumAllowedChannels(I)Z

    move-result v3

    .line 380
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    if-eqz v3, :cond_38c

    move v6, v7

    :goto_386
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 382
    goto/16 :goto_b

    :cond_38c
    move v6, v8

    .line 381
    goto :goto_386

    .line 386
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_38e
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getValidChannelCounts()[I

    move-result-object v3

    .line 388
    .local v3, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    move v6, v7

    .line 390
    goto/16 :goto_b

    .line 394
    .end local v3           #_result:[I
    :sswitch_3a0
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v3

    .line 396
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    if-eqz v3, :cond_3b5

    move v6, v7

    :goto_3af
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 398
    goto/16 :goto_b

    :cond_3b5
    move v6, v8

    .line 397
    goto :goto_3af

    .line 402
    .end local v3           #_result:Z
    :sswitch_3b7
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v3

    .line 404
    .local v3, _result:Landroid/net/DhcpInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v3, :cond_3ce

    .line 406
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    invoke-virtual {v3, p3, v7}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3cb
    move v6, v7

    .line 412
    goto/16 :goto_b

    .line 410
    :cond_3ce
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3cb

    .line 416
    .end local v3           #_result:Landroid/net/DhcpInfo;
    :sswitch_3d2
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 420
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 422
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v3

    .line 424
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    if-eqz v3, :cond_3f3

    move v6, v7

    :goto_3ed
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 426
    goto/16 :goto_b

    :cond_3f3
    move v6, v8

    .line 425
    goto :goto_3ed

    .line 430
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:I
    .end local v2           #_arg2:Ljava/lang/String;
    .end local v3           #_result:Z
    :sswitch_3f5
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 433
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v3

    .line 434
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    if-eqz v3, :cond_40e

    move v6, v7

    :goto_408
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 436
    goto/16 :goto_b

    :cond_40e
    move v6, v8

    .line 435
    goto :goto_408

    .line 440
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v3           #_result:Z
    :sswitch_410
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v3

    .line 442
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    if-eqz v3, :cond_425

    move v6, v7

    :goto_41f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 444
    goto/16 :goto_b

    :cond_425
    move v6, v8

    .line 443
    goto :goto_41f

    .line 448
    .end local v3           #_result:Z
    :sswitch_427
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 452
    .restart local v0       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 455
    goto/16 :goto_b

    .line 459
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_43d
    const-string v6, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 462
    goto/16 :goto_b

    .line 52
    nop

    :sswitch_data_44c
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_45
        0x4 -> :sswitch_5f
        0x5 -> :sswitch_82
        0x6 -> :sswitch_9d
        0x7 -> :sswitch_b4
        0x8 -> :sswitch_d4
        0x9 -> :sswitch_e6
        0xa -> :sswitch_fd
        0xb -> :sswitch_114
        0xc -> :sswitch_12b
        0xd -> :sswitch_146
        0xe -> :sswitch_166
        0xf -> :sswitch_186
        0x10 -> :sswitch_1a6
        0x11 -> :sswitch_1c6
        0x12 -> :sswitch_1e6
        0x13 -> :sswitch_206
        0x14 -> :sswitch_221
        0x15 -> :sswitch_23c
        0x16 -> :sswitch_257
        0x17 -> :sswitch_277
        0x18 -> :sswitch_292
        0x19 -> :sswitch_2ad
        0x1a -> :sswitch_2c8
        0x1b -> :sswitch_2e3
        0x1c -> :sswitch_2fe
        0x1d -> :sswitch_319
        0x1e -> :sswitch_334
        0x1f -> :sswitch_34f
        0x20 -> :sswitch_361
        0x21 -> :sswitch_373
        0x22 -> :sswitch_38e
        0x23 -> :sswitch_3a0
        0x24 -> :sswitch_3b7
        0x25 -> :sswitch_3d2
        0x26 -> :sswitch_3f5
        0x27 -> :sswitch_410
        0x28 -> :sswitch_427
        0x29 -> :sswitch_43d
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
