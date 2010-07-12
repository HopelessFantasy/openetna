.class public abstract Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;
.super Landroid/os/Binder;
.source "IBluetoothDataGateway.java"

# interfaces
.implements Lcom/broadcom/bt/service/dg/IBluetoothDataGateway;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/dg/IBluetoothDataGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.dg.IBluetoothDataGateway"

.field static final TRANSACTION_dataGatewayClose:I = 0x9

.field static final TRANSACTION_dataGatewayDisable:I = 0x6

.field static final TRANSACTION_dataGatewayEnable:I = 0x5

.field static final TRANSACTION_dataGatewayListen:I = 0x7

.field static final TRANSACTION_dataGatewayOpen:I = 0x8

.field static final TRANSACTION_dataGatewayShutdown:I = 0xa

.field static final TRANSACTION_getFirstAvailableSerialPort:I = 0x3

.field static final TRANSACTION_getSerialPortStatus:I = 0x4

.field static final TRANSACTION_registerSppCallback:I = 0x1

.field static final TRANSACTION_setSerialPortStatus:I = 0xe

.field static final TRANSACTION_sppRead:I = 0xc

.field static final TRANSACTION_sppWrite:I = 0xb

.field static final TRANSACTION_unregisterSppCallback:I = 0x2

.field static final TRANSACTION_waitForDataOnPort:I = 0xd


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "com.broadcom.bt.service.dg.IBluetoothDataGateway"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/dg/IBluetoothDataGateway;
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
    const-string v1, "com.broadcom.bt.service.dg.IBluetoothDataGateway"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway;

    if-eqz v1, :cond_14

    .line 39
    check-cast v0, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 41
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x1

    const-string v8, "com.broadcom.bt.service.dg.IBluetoothDataGateway"

    .line 49
    sparse-switch p1, :sswitch_data_146

    .line 207
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    .line 53
    :sswitch_b
    const-string v0, "com.broadcom.bt.service.dg.IBluetoothDataGateway"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 54
    goto :goto_a

    .line 58
    :sswitch_12
    const-string v0, "com.broadcom.bt.service.dg.IBluetoothDataGateway"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;

    move-result-object v2

    .line 63
    .local v2, _arg1:Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;->registerSppCallback(ILcom/broadcom/bt/service/dg/IBluetoothSPPCallback;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 65
    goto :goto_a

    .line 69
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;
    :sswitch_2b
    const-string v0, "com.broadcom.bt.service.dg.IBluetoothDataGateway"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 72
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;->unregisterSppCallback(I)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 74
    goto :goto_a

    .line 78
    .end local v1           #_arg0:I
    :sswitch_3c
    const-string v0, "com.broadcom.bt.service.dg.IBluetoothDataGateway"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;->getFirstAvailableSerialPort()B

    move-result v6

    .line 80
    .local v6, _result:B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByte(B)V

    move v0, v7

    .line 82
    goto :goto_a

    .line 86
    .end local v6           #_result:B
    :sswitch_4d
    const-string v0, "com.broadcom.bt.service.dg.IBluetoothDataGateway"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 89
    .local v1, _arg0:B
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;->getSerialPortStatus(B)I

    move-result v6

    .line 90
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 92
    goto :goto_a

    .line 96
    .end local v1           #_arg0:B
    .end local v6           #_result:I
    :sswitch_62
    const-string v0, "com.broadcom.bt.service.dg.IBluetoothDataGateway"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;->dataGatewayEnable()V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 99
    goto :goto_a

    .line 103
    :sswitch_6f
    const-string v0, "com.broadcom.bt.service.dg.IBluetoothDataGateway"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;->dataGatewayDisable()V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 106
    goto :goto_a

    .line 110
    :sswitch_7c
    const-string v0, "com.broadcom.bt.service.dg.IBluetoothDataGateway"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 114
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 116
    .local v2, _arg1:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 119
    .local v4, _arg3:B
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;->dataGatewayListen(BBLjava/lang/String;B)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 121
    goto/16 :goto_a

    .line 125
    .end local v1           #_arg0:B
    .end local v2           #_arg1:B
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:B
    :sswitch_9a
    const-string v0, "com.broadcom.bt.service.dg.IBluetoothDataGateway"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 131
    .restart local v2       #_arg1:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 133
    .local v3, _arg2:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .local v5, _arg4:B
    move-object v0, p0

    .line 136
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;->dataGatewayOpen(Ljava/lang/String;BBLjava/lang/String;B)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 138
    goto/16 :goto_a

    .line 142
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:B
    .end local v3           #_arg2:B
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:B
    :sswitch_bd
    const-string v0, "com.broadcom.bt.service.dg.IBluetoothDataGateway"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 146
    .local v1, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 147
    .restart local v2       #_arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;->dataGatewayClose(BB)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 149
    goto/16 :goto_a

    .line 153
    .end local v1           #_arg0:B
    .end local v2           #_arg1:B
    :sswitch_d3
    const-string v0, "com.broadcom.bt.service.dg.IBluetoothDataGateway"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 157
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 158
    .restart local v2       #_arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;->dataGatewayShutdown(BB)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 160
    goto/16 :goto_a

    .line 164
    .end local v1           #_arg0:B
    .end local v2           #_arg1:B
    :sswitch_e9
    const-string v0, "com.broadcom.bt.service.dg.IBluetoothDataGateway"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 168
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 170
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 171
    .local v3, _arg2:[B
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;->sppWrite(BI[B)I

    move-result v6

    .line 172
    .restart local v6       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 174
    goto/16 :goto_a

    .line 178
    .end local v1           #_arg0:B
    .end local v2           #_arg1:I
    .end local v3           #_arg2:[B
    .end local v6           #_result:I
    :sswitch_107
    const-string v0, "com.broadcom.bt.service.dg.IBluetoothDataGateway"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 181
    .restart local v1       #_arg0:B
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;->sppRead(B)[B

    move-result-object v6

    .line 182
    .local v6, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, v7

    .line 184
    goto/16 :goto_a

    .line 188
    .end local v1           #_arg0:B
    .end local v6           #_result:[B
    :sswitch_11d
    const-string v0, "com.broadcom.bt.service.dg.IBluetoothDataGateway"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 191
    .restart local v1       #_arg0:B
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;->waitForDataOnPort(B)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 193
    goto/16 :goto_a

    .line 197
    .end local v1           #_arg0:B
    :sswitch_12f
    const-string v0, "com.broadcom.bt.service.dg.IBluetoothDataGateway"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 201
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 202
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;->setSerialPortStatus(BI)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 204
    goto/16 :goto_a

    .line 49
    nop

    :sswitch_data_146
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_4d
        0x5 -> :sswitch_62
        0x6 -> :sswitch_6f
        0x7 -> :sswitch_7c
        0x8 -> :sswitch_9a
        0x9 -> :sswitch_bd
        0xa -> :sswitch_d3
        0xb -> :sswitch_e9
        0xc -> :sswitch_107
        0xd -> :sswitch_11d
        0xe -> :sswitch_12f
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
