.class public abstract Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothTestModeCallback.java"

# interfaces
.implements Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

.field static final TRANSACTION_onEnterDUTMode:I = 0x5

.field static final TRANSACTION_onEnterTestMode:I = 0x3

.field static final TRANSACTION_onExitDUTMode:I = 0x6

.field static final TRANSACTION_onExitTestMode:I = 0x4

.field static final TRANSACTION_onGetTestMode:I = 0x2

.field static final TRANSACTION_onSetTestMode:I = 0x1

.field static final TRANSACTION_onTx_Rx_Test:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;
    .registers 3
    .parameter "obj"

    .prologue
    .line 33
    if-nez p0, :cond_4

    .line 34
    const/4 v1, 0x0

    .line 40
    :goto_3
    return-object v1

    .line 36
    :cond_4
    const-string v1, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    if-eqz v1, :cond_14

    .line 38
    check-cast v0, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 40
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 44
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

    const-string v4, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    .line 48
    sparse-switch p1, :sswitch_data_8e

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_a
    return v2

    .line 52
    :sswitch_b
    const-string v2, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 53
    goto :goto_a

    .line 57
    :sswitch_12
    const-string v2, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->onSetTestMode(I)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 62
    goto :goto_a

    .line 66
    .end local v0           #_arg0:I
    :sswitch_23
    const-string v2, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->onGetTestMode(I)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 71
    goto :goto_a

    .line 75
    .end local v0           #_arg0:I
    :sswitch_34
    const-string v2, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->onEnterTestMode(I)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 80
    goto :goto_a

    .line 84
    .end local v0           #_arg0:I
    :sswitch_45
    const-string v2, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->onExitTestMode(I)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 89
    goto :goto_a

    .line 93
    .end local v0           #_arg0:I
    :sswitch_56
    const-string v2, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->onEnterDUTMode(I)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 98
    goto :goto_a

    .line 102
    .end local v0           #_arg0:I
    :sswitch_67
    const-string v2, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 105
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->onExitDUTMode(I)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 107
    goto :goto_a

    .line 111
    .end local v0           #_arg0:I
    :sswitch_78
    const-string v2, "com.broadcom.bt.service.test.IBluetoothTestModeCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 116
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/test/IBluetoothTestModeCallback$Stub;->onTx_Rx_Test(II)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 118
    goto/16 :goto_a

    .line 48
    :sswitch_data_8e
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_23
        0x3 -> :sswitch_34
        0x4 -> :sswitch_45
        0x5 -> :sswitch_56
        0x6 -> :sswitch_67
        0x7 -> :sswitch_78
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
