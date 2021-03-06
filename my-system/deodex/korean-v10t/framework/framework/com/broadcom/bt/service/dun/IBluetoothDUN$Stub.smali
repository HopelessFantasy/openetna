.class public abstract Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub;
.super Landroid/os/Binder;
.source "IBluetoothDUN.java"

# interfaces
.implements Lcom/broadcom/bt/service/dun/IBluetoothDUN;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/dun/IBluetoothDUN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.dun.IBluetoothDUN"

.field static final TRANSACTION_getAllPortStatus:I = 0x3

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_unregisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.broadcom.bt.service.dun.IBluetoothDUN"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/dun/IBluetoothDUN;
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
    const-string v1, "com.broadcom.bt.service.dun.IBluetoothDUN"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    if-eqz v1, :cond_14

    .line 38
    check-cast v0, Lcom/broadcom/bt/service/dun/IBluetoothDUN;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 40
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v4, "com.broadcom.bt.service.dun.IBluetoothDUN"

    .line 48
    sparse-switch p1, :sswitch_data_58

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_a
    return v2

    .line 52
    :sswitch_b
    const-string v2, "com.broadcom.bt.service.dun.IBluetoothDUN"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 53
    goto :goto_a

    .line 57
    :sswitch_12
    const-string v2, "com.broadcom.bt.service.dun.IBluetoothDUN"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;

    move-result-object v0

    .line 60
    .local v0, _arg0:Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub;->registerCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 62
    goto :goto_a

    .line 66
    .end local v0           #_arg0:Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;
    :sswitch_27
    const-string v2, "com.broadcom.bt.service.dun.IBluetoothDUN"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;

    move-result-object v0

    .line 69
    .restart local v0       #_arg0:Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub;->unregisterCallback(Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 71
    goto :goto_a

    .line 75
    .end local v0           #_arg0:Lcom/broadcom/bt/service/dun/IBluetoothDUNCallback;
    :sswitch_3c
    const-string v2, "com.broadcom.bt.service.dun.IBluetoothDUN"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/broadcom/bt/service/dun/IBluetoothDUN$Stub;->getAllPortStatus()Landroid/os/Bundle;

    move-result-object v1

    .line 77
    .local v1, _result:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v1, :cond_52

    .line 79
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {v1, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_50
    move v2, v3

    .line 85
    goto :goto_a

    .line 83
    :cond_52
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_50

    .line 48
    nop

    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_27
        0x3 -> :sswitch_3c
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
