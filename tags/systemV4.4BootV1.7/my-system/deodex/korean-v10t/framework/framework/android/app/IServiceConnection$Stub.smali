.class public abstract Landroid/app/IServiceConnection$Stub;
.super Landroid/os/Binder;
.source "IServiceConnection.java"

# interfaces
.implements Landroid/app/IServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IServiceConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IServiceConnection"

.field static final TRANSACTION_connected:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "android.app.IServiceConnection"

    invoke-virtual {p0, p0, v0}, Landroid/app/IServiceConnection$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;
    .registers 3
    .parameter "obj"

    .prologue
    .line 31
    if-nez p0, :cond_4

    .line 32
    const/4 v1, 0x0

    .line 38
    :goto_3
    return-object v1

    .line 34
    :cond_4
    const-string v1, "android.app.IServiceConnection"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IServiceConnection;

    if-eqz v1, :cond_14

    .line 36
    check-cast v0, Landroid/app/IServiceConnection;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 38
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/app/IServiceConnection$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IServiceConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 42
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

    const-string v4, "android.app.IServiceConnection"

    .line 46
    sparse-switch p1, :sswitch_data_30

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_a
    return v2

    .line 50
    :sswitch_b
    const-string v2, "android.app.IServiceConnection"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 51
    goto :goto_a

    .line 55
    :sswitch_12
    const-string v2, "android.app.IServiceConnection"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e

    .line 58
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 64
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 65
    .local v1, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1}, Landroid/app/IServiceConnection$Stub;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    move v2, v3

    .line 66
    goto :goto_a

    .line 61
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/os/IBinder;
    :cond_2e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_25

    .line 46
    :sswitch_data_30
    .sparse-switch
        0x1 -> :sswitch_12
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
