.class public abstract Lcom/broadcom/bt/service/sap/IBluetoothSAP$Stub;
.super Landroid/os/Binder;
.source "IBluetoothSAP.java"

# interfaces
.implements Lcom/broadcom/bt/service/sap/IBluetoothSAP;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/sap/IBluetoothSAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/sap/IBluetoothSAP$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.sap.IBluetoothSAP"

.field static final TRANSACTION_accessRsp:I = 0x1

.field static final TRANSACTION_callExampleFunction:I = 0x4

.field static final TRANSACTION_registerCallback:I = 0x2

.field static final TRANSACTION_unregisterCallback:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.broadcom.bt.service.sap.IBluetoothSAP"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/sap/IBluetoothSAP$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/sap/IBluetoothSAP;
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
    const-string v1, "com.broadcom.bt.service.sap.IBluetoothSAP"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/broadcom/bt/service/sap/IBluetoothSAP;

    if-eqz v1, :cond_14

    .line 37
    check-cast v0, Lcom/broadcom/bt/service/sap/IBluetoothSAP;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 39
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/broadcom/bt/service/sap/IBluetoothSAP$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/sap/IBluetoothSAP$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 11
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
    const/4 v4, 0x1

    const-string v5, "com.broadcom.bt.service.sap.IBluetoothSAP"

    .line 47
    sparse-switch p1, :sswitch_data_68

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 51
    :sswitch_b
    const-string v3, "com.broadcom.bt.service.sap.IBluetoothSAP"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 52
    goto :goto_a

    .line 56
    :sswitch_12
    const-string v3, "com.broadcom.bt.service.sap.IBluetoothSAP"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2e

    move v1, v4

    .line 62
    .local v1, _arg1:Z
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/sap/IBluetoothSAP$Stub;->accessRsp(IZLjava/lang/String;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 65
    goto :goto_a

    .line 60
    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Ljava/lang/String;
    :cond_2e
    const/4 v3, 0x0

    move v1, v3

    goto :goto_22

    .line 69
    .end local v0           #_arg0:I
    :sswitch_31
    const-string v3, "com.broadcom.bt.service.sap.IBluetoothSAP"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;

    move-result-object v0

    .line 72
    .local v0, _arg0:Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/sap/IBluetoothSAP$Stub;->registerCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 74
    goto :goto_a

    .line 78
    .end local v0           #_arg0:Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;
    :sswitch_46
    const-string v3, "com.broadcom.bt.service.sap.IBluetoothSAP"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;

    move-result-object v0

    .line 81
    .restart local v0       #_arg0:Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/sap/IBluetoothSAP$Stub;->unregisterCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 83
    goto :goto_a

    .line 87
    .end local v0           #_arg0:Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;
    :sswitch_5b
    const-string v3, "com.broadcom.bt.service.sap.IBluetoothSAP"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/broadcom/bt/service/sap/IBluetoothSAP$Stub;->callExampleFunction()V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 90
    goto :goto_a

    .line 47
    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_31
        0x3 -> :sswitch_46
        0x4 -> :sswitch_5b
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
