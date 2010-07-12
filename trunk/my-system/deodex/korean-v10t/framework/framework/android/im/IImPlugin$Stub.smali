.class public abstract Landroid/im/IImPlugin$Stub;
.super Landroid/os/Binder;
.source "IImPlugin.java"

# interfaces
.implements Landroid/im/IImPlugin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/im/IImPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/im/IImPlugin$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.im.IImPlugin"

.field static final TRANSACTION_getResourceMapForProvider:I = 0x6

.field static final TRANSACTION_getResourcePackageNameForProvider:I = 0x5

.field static final TRANSACTION_getSupportedProviders:I = 0x7

.field static final TRANSACTION_onStart:I = 0x1

.field static final TRANSACTION_onStop:I = 0x2

.field static final TRANSACTION_signIn:I = 0x3

.field static final TRANSACTION_signOut:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "android.im.IImPlugin"

    invoke-virtual {p0, p0, v0}, Landroid/im/IImPlugin$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/im/IImPlugin;
    .registers 3
    .parameter "obj"

    .prologue
    .line 34
    if-nez p0, :cond_4

    .line 35
    const/4 v1, 0x0

    .line 41
    :goto_3
    return-object v1

    .line 37
    :cond_4
    const-string v1, "android.im.IImPlugin"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/im/IImPlugin;

    if-eqz v1, :cond_14

    .line 39
    check-cast v0, Landroid/im/IImPlugin;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 41
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/im/IImPlugin$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/im/IImPlugin$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 45
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

    const-string v5, "android.im.IImPlugin"

    .line 49
    sparse-switch p1, :sswitch_data_8a

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 53
    :sswitch_b
    const-string v3, "android.im.IImPlugin"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 54
    goto :goto_a

    .line 58
    :sswitch_12
    const-string v3, "android.im.IImPlugin"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/im/IImPlugin$Stub;->onStart()V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 61
    goto :goto_a

    .line 65
    :sswitch_1f
    const-string v3, "android.im.IImPlugin"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/im/IImPlugin$Stub;->onStop()V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 68
    goto :goto_a

    .line 72
    :sswitch_2c
    const-string v3, "android.im.IImPlugin"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 75
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/im/IImPlugin$Stub;->signIn(J)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 77
    goto :goto_a

    .line 81
    .end local v0           #_arg0:J
    :sswitch_3d
    const-string v3, "android.im.IImPlugin"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 84
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/im/IImPlugin$Stub;->signOut(J)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 86
    goto :goto_a

    .line 90
    .end local v0           #_arg0:J
    :sswitch_4e
    const-string v3, "android.im.IImPlugin"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/im/IImPlugin$Stub;->getResourcePackageNameForProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 96
    goto :goto_a

    .line 100
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_63
    const-string v3, "android.im.IImPlugin"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/im/IImPlugin$Stub;->getResourceMapForProvider(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 104
    .local v2, _result:Ljava/util/Map;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    move v3, v4

    .line 106
    goto :goto_a

    .line 110
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Ljava/util/Map;
    :sswitch_78
    const-string v3, "android.im.IImPlugin"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/im/IImPlugin$Stub;->getSupportedProviders()Ljava/util/List;

    move-result-object v2

    .line 112
    .local v2, _result:Ljava/util/List;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    move v3, v4

    .line 114
    goto :goto_a

    .line 49
    nop

    :sswitch_data_8a
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_3d
        0x5 -> :sswitch_4e
        0x6 -> :sswitch_63
        0x7 -> :sswitch_78
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
