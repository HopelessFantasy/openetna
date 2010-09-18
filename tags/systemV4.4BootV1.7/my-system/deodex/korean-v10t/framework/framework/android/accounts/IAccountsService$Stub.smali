.class public abstract Landroid/accounts/IAccountsService$Stub;
.super Landroid/os/Binder;
.source "IAccountsService.java"

# interfaces
.implements Landroid/accounts/IAccountsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/IAccountsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/IAccountsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accounts.IAccountsService"

.field static final TRANSACTION_getAccounts:I = 0x1

.field static final TRANSACTION_shouldUnlock:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "android.accounts.IAccountsService"

    invoke-virtual {p0, p0, v0}, Landroid/accounts/IAccountsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountsService;
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
    const-string v1, "android.accounts.IAccountsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/accounts/IAccountsService;

    if-eqz v1, :cond_14

    .line 37
    check-cast v0, Landroid/accounts/IAccountsService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 39
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/accounts/IAccountsService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accounts/IAccountsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v5, "android.accounts.IAccountsService"

    .line 47
    sparse-switch p1, :sswitch_data_42

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 51
    :sswitch_b
    const-string v3, "android.accounts.IAccountsService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 52
    goto :goto_a

    .line 56
    :sswitch_12
    const-string v3, "android.accounts.IAccountsService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/accounts/IAccountsService$Stub;->getAccounts()[Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v3, v4

    .line 60
    goto :goto_a

    .line 64
    .end local v2           #_result:[Ljava/lang/String;
    :sswitch_23
    const-string v3, "android.accounts.IAccountsService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/accounts/IAccountsService$Stub;->shouldUnlock(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 70
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v2, :cond_3f

    move v3, v4

    :goto_3a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 72
    goto :goto_a

    .line 71
    :cond_3f
    const/4 v3, 0x0

    goto :goto_3a

    .line 47
    nop

    :sswitch_data_42
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_23
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
