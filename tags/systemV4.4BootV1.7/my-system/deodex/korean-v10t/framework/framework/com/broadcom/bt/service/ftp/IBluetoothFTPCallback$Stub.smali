.class public abstract Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothFTPCallback.java"

# interfaces
.implements Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

.field static final TRANSACTION_onFtpServerAccessRequested:I = 0x5

.field static final TRANSACTION_onFtpServerAuthen:I = 0x4

.field static final TRANSACTION_onFtpServerClosed:I = 0x3

.field static final TRANSACTION_onFtpServerDelCompleted:I = 0x9

.field static final TRANSACTION_onFtpServerEnabled:I = 0x1

.field static final TRANSACTION_onFtpServerFileTransferInProgress:I = 0x6

.field static final TRANSACTION_onFtpServerGetCompleted:I = 0x8

.field static final TRANSACTION_onFtpServerOpened:I = 0x2

.field static final TRANSACTION_onFtpServerPutCompleted:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;
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
    const-string v1, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;

    if-eqz v1, :cond_14

    .line 37
    check-cast v0, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 39
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 13
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
    const/4 v6, 0x1

    const-string v7, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    .line 47
    sparse-switch p1, :sswitch_data_d2

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    .line 51
    :sswitch_b
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    .line 52
    goto :goto_a

    .line 56
    :sswitch_12
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerEnabled()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 59
    goto :goto_a

    .line 63
    :sswitch_1f
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerOpened()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 66
    goto :goto_a

    .line 70
    :sswitch_2c
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerClosed()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 73
    goto :goto_a

    .line 77
    :sswitch_39
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 83
    .local v2, _arg1:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_55

    move v3, v6

    .line 84
    .local v3, _arg2:Z
    :goto_4d
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerAuthen(Ljava/lang/String;BZ)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 86
    goto :goto_a

    .line 83
    .end local v3           #_arg2:Z
    :cond_55
    const/4 v0, 0x0

    move v3, v0

    goto :goto_4d

    .line 90
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:B
    :sswitch_58
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 96
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 100
    .local v4, _arg3:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 101
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerAccessRequested(Ljava/lang/String;ILjava/lang/String;BLjava/lang/String;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 103
    goto :goto_a

    .line 107
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:B
    .end local v5           #_arg4:Ljava/lang/String;
    :sswitch_7a
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 112
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerFileTransferInProgress(II)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 114
    goto/16 :goto_a

    .line 118
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_90
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 123
    .local v2, _arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerPutCompleted(Ljava/lang/String;B)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 125
    goto/16 :goto_a

    .line 129
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:B
    :sswitch_a6
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 133
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 134
    .restart local v2       #_arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerGetCompleted(Ljava/lang/String;B)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 136
    goto/16 :goto_a

    .line 140
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:B
    :sswitch_bc
    const-string v0, "com.broadcom.bt.service.ftp.IBluetoothFTPCallback"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 145
    .restart local v2       #_arg1:B
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;->onFtpServerDelCompleted(Ljava/lang/String;B)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 147
    goto/16 :goto_a

    .line 47
    :sswitch_data_d2
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_39
        0x5 -> :sswitch_58
        0x6 -> :sswitch_7a
        0x7 -> :sswitch_90
        0x8 -> :sswitch_a6
        0x9 -> :sswitch_bc
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
