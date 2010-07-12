.class public abstract Landroid/app/IThumbnailReceiver$Stub;
.super Landroid/os/Binder;
.source "IThumbnailReceiver.java"

# interfaces
.implements Landroid/app/IThumbnailReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IThumbnailReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IThumbnailReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IThumbnailReceiver"

.field static final TRANSACTION_finished:I = 0x2

.field static final TRANSACTION_newThumbnail:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "android.app.IThumbnailReceiver"

    invoke-virtual {p0, p0, v0}, Landroid/app/IThumbnailReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IThumbnailReceiver;
    .registers 3
    .parameter "obj"

    .prologue
    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v1, 0x0

    .line 43
    :goto_3
    return-object v1

    .line 39
    :cond_4
    const-string v1, "android.app.IThumbnailReceiver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IThumbnailReceiver;

    if-eqz v1, :cond_14

    .line 41
    check-cast v0, Landroid/app/IThumbnailReceiver;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 43
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/app/IThumbnailReceiver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IThumbnailReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 47
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

    const-string v5, "android.app.IThumbnailReceiver"

    .line 51
    sparse-switch p1, :sswitch_data_4a

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 55
    :sswitch_b
    const-string v3, "android.app.IThumbnailReceiver"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 56
    goto :goto_a

    .line 60
    :sswitch_12
    const-string v3, "android.app.IThumbnailReceiver"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3c

    .line 65
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 71
    .local v1, _arg1:Landroid/graphics/Bitmap;
    :goto_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3e

    .line 72
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 77
    .local v2, _arg2:Ljava/lang/CharSequence;
    :goto_37
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/IThumbnailReceiver$Stub;->newThumbnail(ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    move v3, v4

    .line 78
    goto :goto_a

    .line 68
    .end local v1           #_arg1:Landroid/graphics/Bitmap;
    .end local v2           #_arg2:Ljava/lang/CharSequence;
    :cond_3c
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/graphics/Bitmap;
    goto :goto_29

    .line 75
    :cond_3e
    const/4 v2, 0x0

    .restart local v2       #_arg2:Ljava/lang/CharSequence;
    goto :goto_37

    .line 82
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Landroid/graphics/Bitmap;
    .end local v2           #_arg2:Ljava/lang/CharSequence;
    :sswitch_40
    const-string v3, "android.app.IThumbnailReceiver"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/IThumbnailReceiver$Stub;->finished()V

    move v3, v4

    .line 84
    goto :goto_a

    .line 51
    :sswitch_data_4a
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_40
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
