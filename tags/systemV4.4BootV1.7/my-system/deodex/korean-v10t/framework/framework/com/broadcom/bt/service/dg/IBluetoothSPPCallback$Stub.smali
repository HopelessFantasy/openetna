.class public abstract Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothSPPCallback.java"

# interfaces
.implements Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.dg.IBluetoothSPPCallback"

.field static final TRANSACTION_onPortConnected:I = 0x2

.field static final TRANSACTION_onPortConnectingToHost:I = 0x4

.field static final TRANSACTION_onPortConnectingToHostFailed:I = 0x5

.field static final TRANSACTION_onPortDataArrived:I = 0x7

.field static final TRANSACTION_onPortDataSent:I = 0x6

.field static final TRANSACTION_onPortDisconnected:I = 0x3

.field static final TRANSACTION_onSppServerPortEnabled:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.broadcom.bt.service.dg.IBluetoothSPPCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;
    .registers 3
    .parameter "obj"

    .prologue
    .line 32
    if-nez p0, :cond_4

    .line 33
    const/4 v1, 0x0

    .line 39
    :goto_3
    return-object v1

    .line 35
    :cond_4
    const-string v1, "com.broadcom.bt.service.dg.IBluetoothSPPCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;

    if-eqz v1, :cond_14

    .line 37
    check-cast v0, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 39
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 43
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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
    const/4 v3, 0x1

    const-string v4, "com.broadcom.bt.service.dg.IBluetoothSPPCallback"

    .line 47
    sparse-switch p1, :sswitch_data_8e

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_a
    return v2

    .line 51
    :sswitch_b
    const-string v2, "com.broadcom.bt.service.dg.IBluetoothSPPCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 52
    goto :goto_a

    .line 56
    :sswitch_12
    const-string v2, "com.broadcom.bt.service.dg.IBluetoothSPPCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 59
    .local v0, _arg0:B
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback$Stub;->onSppServerPortEnabled(B)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 61
    goto :goto_a

    .line 65
    .end local v0           #_arg0:B
    :sswitch_23
    const-string v2, "com.broadcom.bt.service.dg.IBluetoothSPPCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 69
    .restart local v0       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback$Stub;->onPortConnected(BLjava/lang/String;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 72
    goto :goto_a

    .line 76
    .end local v0           #_arg0:B
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_38
    const-string v2, "com.broadcom.bt.service.dg.IBluetoothSPPCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 79
    .restart local v0       #_arg0:B
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback$Stub;->onPortDisconnected(B)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 81
    goto :goto_a

    .line 85
    .end local v0           #_arg0:B
    :sswitch_49
    const-string v2, "com.broadcom.bt.service.dg.IBluetoothSPPCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 88
    .restart local v0       #_arg0:B
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback$Stub;->onPortConnectingToHost(B)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 90
    goto :goto_a

    .line 94
    .end local v0           #_arg0:B
    :sswitch_5a
    const-string v2, "com.broadcom.bt.service.dg.IBluetoothSPPCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 97
    .restart local v0       #_arg0:B
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback$Stub;->onPortConnectingToHostFailed(B)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 99
    goto :goto_a

    .line 103
    .end local v0           #_arg0:B
    :sswitch_6b
    const-string v2, "com.broadcom.bt.service.dg.IBluetoothSPPCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 106
    .restart local v0       #_arg0:B
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback$Stub;->onPortDataSent(B)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 108
    goto :goto_a

    .line 112
    .end local v0           #_arg0:B
    :sswitch_7c
    const-string v2, "com.broadcom.bt.service.dg.IBluetoothSPPCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 115
    .restart local v0       #_arg0:B
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/dg/IBluetoothSPPCallback$Stub;->onPortDataArrived(B)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 117
    goto/16 :goto_a

    .line 47
    :sswitch_data_8e
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_23
        0x3 -> :sswitch_38
        0x4 -> :sswitch_49
        0x5 -> :sswitch_5a
        0x6 -> :sswitch_6b
        0x7 -> :sswitch_7c
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
