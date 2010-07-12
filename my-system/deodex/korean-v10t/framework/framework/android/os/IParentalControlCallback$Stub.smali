.class public abstract Landroid/os/IParentalControlCallback$Stub;
.super Landroid/os/Binder;
.source "IParentalControlCallback.java"

# interfaces
.implements Landroid/os/IParentalControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IParentalControlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IParentalControlCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IParentalControlCallback"

.field static final TRANSACTION_onResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.os.IParentalControlCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/IParentalControlCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IParentalControlCallback;
    .registers 3
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v1, 0x0

    .line 36
    :goto_3
    return-object v1

    .line 32
    :cond_4
    const-string v1, "android.os.IParentalControlCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IParentalControlCallback;

    if-eqz v1, :cond_14

    .line 34
    check-cast v0, Landroid/os/IParentalControlCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 36
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/os/IParentalControlCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IParentalControlCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
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

    const-string v3, "android.os.IParentalControlCallback"

    .line 44
    sparse-switch p1, :sswitch_data_2c

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    .line 48
    :sswitch_b
    const-string v1, "android.os.IParentalControlCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 49
    goto :goto_a

    .line 53
    :sswitch_12
    const-string v1, "android.os.IParentalControlCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 56
    sget-object v1, Lcom/google/android/net/ParentalControlState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/net/ParentalControlState;

    .line 61
    .local v0, _arg0:Lcom/google/android/net/ParentalControlState;
    :goto_25
    invoke-virtual {p0, v0}, Landroid/os/IParentalControlCallback$Stub;->onResult(Lcom/google/android/net/ParentalControlState;)V

    move v1, v2

    .line 62
    goto :goto_a

    .line 59
    .end local v0           #_arg0:Lcom/google/android/net/ParentalControlState;
    :cond_2a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/net/ParentalControlState;
    goto :goto_25

    .line 44
    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_12
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
