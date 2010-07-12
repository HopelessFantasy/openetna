.class public abstract Landroid/view/IOnKeyguardExitResult$Stub;
.super Landroid/os/Binder;
.source "IOnKeyguardExitResult.java"

# interfaces
.implements Landroid/view/IOnKeyguardExitResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IOnKeyguardExitResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IOnKeyguardExitResult$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IOnKeyguardExitResult"

.field static final TRANSACTION_onKeyguardExitResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "android.view.IOnKeyguardExitResult"

    invoke-virtual {p0, p0, v0}, Landroid/view/IOnKeyguardExitResult$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;
    .registers 3
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_4

    .line 31
    const/4 v1, 0x0

    .line 37
    :goto_3
    return-object v1

    .line 33
    :cond_4
    const-string v1, "android.view.IOnKeyguardExitResult"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IOnKeyguardExitResult;

    if-eqz v1, :cond_14

    .line 35
    check-cast v0, Landroid/view/IOnKeyguardExitResult;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 37
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/view/IOnKeyguardExitResult$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IOnKeyguardExitResult$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
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
    const/4 v2, 0x1

    const-string v3, "android.view.IOnKeyguardExitResult"

    .line 45
    sparse-switch p1, :sswitch_data_26

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    .line 49
    :sswitch_b
    const-string v1, "android.view.IOnKeyguardExitResult"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 50
    goto :goto_a

    .line 54
    :sswitch_12
    const-string v1, "android.view.IOnKeyguardExitResult"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    move v0, v2

    .line 57
    .local v0, _arg0:Z
    :goto_1e
    invoke-virtual {p0, v0}, Landroid/view/IOnKeyguardExitResult$Stub;->onKeyguardExitResult(Z)V

    move v1, v2

    .line 58
    goto :goto_a

    .line 56
    .end local v0           #_arg0:Z
    :cond_23
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1e

    .line 45
    :sswitch_data_26
    .sparse-switch
        0x1 -> :sswitch_12
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
