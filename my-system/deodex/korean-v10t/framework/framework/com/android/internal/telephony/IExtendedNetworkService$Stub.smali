.class public abstract Lcom/android/internal/telephony/IExtendedNetworkService$Stub;
.super Landroid/os/Binder;
.source "IExtendedNetworkService.java"

# interfaces
.implements Lcom/android/internal/telephony/IExtendedNetworkService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IExtendedNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IExtendedNetworkService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IExtendedNetworkService"

.field static final TRANSACTION_clearMmiString:I = 0x4

.field static final TRANSACTION_getMmiRunningText:I = 0x2

.field static final TRANSACTION_getUserMessage:I = 0x3

.field static final TRANSACTION_setMmiString:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.android.internal.telephony.IExtendedNetworkService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IExtendedNetworkService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IExtendedNetworkService;
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
    const-string v1, "com.android.internal.telephony.IExtendedNetworkService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/IExtendedNetworkService;

    if-eqz v1, :cond_14

    .line 38
    check-cast v0, Lcom/android/internal/telephony/IExtendedNetworkService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 40
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/IExtendedNetworkService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IExtendedNetworkService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v4, "com.android.internal.telephony.IExtendedNetworkService"

    .line 48
    sparse-switch p1, :sswitch_data_76

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_b
    return v2

    .line 52
    :sswitch_c
    const-string v2, "com.android.internal.telephony.IExtendedNetworkService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 53
    goto :goto_b

    .line 57
    :sswitch_13
    const-string v2, "com.android.internal.telephony.IExtendedNetworkService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IExtendedNetworkService$Stub;->setMmiString(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 62
    goto :goto_b

    .line 66
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_24
    const-string v2, "com.android.internal.telephony.IExtendedNetworkService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/telephony/IExtendedNetworkService$Stub;->getMmiRunningText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 68
    .local v1, _result:Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v1, :cond_3a

    .line 70
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-static {v1, p3, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    :goto_38
    move v2, v3

    .line 76
    goto :goto_b

    .line 74
    :cond_3a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_38

    .line 80
    .end local v1           #_result:Ljava/lang/CharSequence;
    :sswitch_3e
    const-string v2, "com.android.internal.telephony.IExtendedNetworkService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_62

    .line 83
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 88
    .local v0, _arg0:Ljava/lang/CharSequence;
    :goto_51
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IExtendedNetworkService$Stub;->getUserMessage(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 89
    .restart local v1       #_result:Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v1, :cond_64

    .line 91
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-static {v1, p3, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    :goto_60
    move v2, v3

    .line 97
    goto :goto_b

    .line 86
    .end local v0           #_arg0:Ljava/lang/CharSequence;
    .end local v1           #_result:Ljava/lang/CharSequence;
    :cond_62
    const/4 v0, 0x0

    .restart local v0       #_arg0:Ljava/lang/CharSequence;
    goto :goto_51

    .line 95
    .restart local v1       #_result:Ljava/lang/CharSequence;
    :cond_64
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_60

    .line 101
    .end local v0           #_arg0:Ljava/lang/CharSequence;
    .end local v1           #_result:Ljava/lang/CharSequence;
    :sswitch_68
    const-string v2, "com.android.internal.telephony.IExtendedNetworkService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/telephony/IExtendedNetworkService$Stub;->clearMmiString()V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 104
    goto :goto_b

    .line 48
    nop

    :sswitch_data_76
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_68
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
