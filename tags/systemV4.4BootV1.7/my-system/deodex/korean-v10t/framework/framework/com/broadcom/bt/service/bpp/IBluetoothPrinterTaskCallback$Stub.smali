.class public abstract Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothPrinterTaskCallback.java"

# interfaces
.implements Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

.field static final TRANSACTION_onPrinterBppDocComplete:I = 0x4

.field static final TRANSACTION_onPrinterGetObject:I = 0x8

.field static final TRANSACTION_onPrinterJobStatus:I = 0x5

.field static final TRANSACTION_onPrinterPartialImage:I = 0x7

.field static final TRANSACTION_onPrinterProgress:I = 0x2

.field static final TRANSACTION_onPrinterTaskClosed:I = 0x3

.field static final TRANSACTION_onPrinterTaskOpen:I = 0x1

.field static final TRANSACTION_onPrinterThumbnail:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;
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
    const-string v1, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    if-eqz v1, :cond_14

    .line 37
    check-cast v0, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 39
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 12
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
    const/4 v5, 0x1

    const-string v6, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    .line 47
    sparse-switch p1, :sswitch_data_ca

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_a
    return v4

    .line 51
    :sswitch_b
    const-string v4, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 52
    goto :goto_a

    .line 56
    :sswitch_12
    const-string v4, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 60
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 61
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->onPrinterTaskOpen(JI)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 63
    goto :goto_a

    .line 67
    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    :sswitch_27
    const-string v4, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 71
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 73
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 74
    .local v3, _arg2:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->onPrinterProgress(JII)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 76
    goto :goto_a

    .line 80
    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_40
    const-string v4, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 84
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 85
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->onPrinterTaskClosed(JI)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 87
    goto :goto_a

    .line 91
    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    :sswitch_55
    const-string v4, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 95
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 96
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->onPrinterBppDocComplete(JI)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 98
    goto :goto_a

    .line 102
    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    :sswitch_6a
    const-string v4, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 106
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_89

    .line 107
    sget-object v4, Lcom/broadcom/bt/service/bpp/JobStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/bpp/JobStatus;

    .line 112
    .local v2, _arg1:Lcom/broadcom/bt/service/bpp/JobStatus;
    :goto_81
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->onPrinterJobStatus(JLcom/broadcom/bt/service/bpp/JobStatus;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 114
    goto :goto_a

    .line 110
    .end local v2           #_arg1:Lcom/broadcom/bt/service/bpp/JobStatus;
    :cond_89
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/broadcom/bt/service/bpp/JobStatus;
    goto :goto_81

    .line 118
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Lcom/broadcom/bt/service/bpp/JobStatus;
    :sswitch_8b
    const-string v4, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 121
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->onPrinterThumbnail(J)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 123
    goto/16 :goto_a

    .line 127
    .end local v0           #_arg0:J
    :sswitch_9d
    const-string v4, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 131
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->onPrinterPartialImage(JLjava/lang/String;)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 134
    goto/16 :goto_a

    .line 138
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_b3
    const-string v4, "com.broadcom.bt.service.bpp.IBluetoothPrinterTaskCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 142
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 143
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback$Stub;->onPrinterGetObject(JLjava/lang/String;)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 145
    goto/16 :goto_a

    .line 47
    nop

    :sswitch_data_ca
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_27
        0x3 -> :sswitch_40
        0x4 -> :sswitch_55
        0x5 -> :sswitch_6a
        0x6 -> :sswitch_8b
        0x7 -> :sswitch_9d
        0x8 -> :sswitch_b3
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
