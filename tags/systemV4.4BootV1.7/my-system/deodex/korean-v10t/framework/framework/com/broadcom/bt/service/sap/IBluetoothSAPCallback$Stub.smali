.class public abstract Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback$Stub;
.super Landroid/os/Binder;
.source "IBluetoothSAPCallback.java"

# interfaces
.implements Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.sap.IBluetoothSAPCallback"

.field static final TRANSACTION_onSapServerClosed:I = 0x3

.field static final TRANSACTION_onSapServerEnabled:I = 0x1

.field static final TRANSACTION_onSapServerOpened:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.broadcom.bt.service.sap.IBluetoothSAPCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;
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
    const-string v1, "com.broadcom.bt.service.sap.IBluetoothSAPCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;

    if-eqz v1, :cond_14

    .line 37
    check-cast v0, Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 39
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 8
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
    const/4 v1, 0x1

    const-string v2, "com.broadcom.bt.service.sap.IBluetoothSAPCallback"

    .line 47
    sparse-switch p1, :sswitch_data_3a

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    .line 51
    :sswitch_b
    const-string v0, "com.broadcom.bt.service.sap.IBluetoothSAPCallback"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 52
    goto :goto_a

    .line 56
    :sswitch_12
    const-string v0, "com.broadcom.bt.service.sap.IBluetoothSAPCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback$Stub;->onSapServerEnabled()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 59
    goto :goto_a

    .line 63
    :sswitch_1f
    const-string v0, "com.broadcom.bt.service.sap.IBluetoothSAPCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback$Stub;->onSapServerOpened()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 66
    goto :goto_a

    .line 70
    :sswitch_2c
    const-string v0, "com.broadcom.bt.service.sap.IBluetoothSAPCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback$Stub;->onSapServerClosed()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 73
    goto :goto_a

    .line 47
    nop

    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_2c
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
