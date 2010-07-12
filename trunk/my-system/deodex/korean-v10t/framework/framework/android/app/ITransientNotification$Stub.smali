.class public abstract Landroid/app/ITransientNotification$Stub;
.super Landroid/os/Binder;
.source "ITransientNotification.java"

# interfaces
.implements Landroid/app/ITransientNotification;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ITransientNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ITransientNotification$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.ITransientNotification"

.field static final TRANSACTION_hide:I = 0x2

.field static final TRANSACTION_show:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "android.app.ITransientNotification"

    invoke-virtual {p0, p0, v0}, Landroid/app/ITransientNotification$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;
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
    const-string v1, "android.app.ITransientNotification"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/ITransientNotification;

    if-eqz v1, :cond_14

    .line 35
    check-cast v0, Landroid/app/ITransientNotification;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 37
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/app/ITransientNotification$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/ITransientNotification$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v2, "android.app.ITransientNotification"

    .line 45
    sparse-switch p1, :sswitch_data_26

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    .line 49
    :sswitch_b
    const-string v0, "android.app.ITransientNotification"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 50
    goto :goto_a

    .line 54
    :sswitch_12
    const-string v0, "android.app.ITransientNotification"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Landroid/app/ITransientNotification$Stub;->show()V

    move v0, v1

    .line 56
    goto :goto_a

    .line 60
    :sswitch_1c
    const-string v0, "android.app.ITransientNotification"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/ITransientNotification$Stub;->hide()V

    move v0, v1

    .line 62
    goto :goto_a

    .line 45
    :sswitch_data_26
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_1c
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
