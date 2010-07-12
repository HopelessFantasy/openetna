.class public abstract Landroid/os/ICheckinService$Stub;
.super Landroid/os/Binder;
.source "ICheckinService.java"

# interfaces
.implements Landroid/os/ICheckinService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ICheckinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ICheckinService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ICheckinService"

.field static final TRANSACTION_checkin:I = 0x1

.field static final TRANSACTION_getParentalControlState:I = 0x5

.field static final TRANSACTION_masterClear:I = 0x4

.field static final TRANSACTION_reportCrashAsync:I = 0x3

.field static final TRANSACTION_reportCrashSync:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "android.os.ICheckinService"

    invoke-virtual {p0, p0, v0}, Landroid/os/ICheckinService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ICheckinService;
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
    const-string v1, "android.os.ICheckinService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/ICheckinService;

    if-eqz v1, :cond_14

    .line 36
    check-cast v0, Landroid/os/ICheckinService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 38
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/os/ICheckinService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/ICheckinService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v5, "android.os.ICheckinService"

    .line 46
    sparse-switch p1, :sswitch_data_6e

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 50
    :sswitch_b
    const-string v3, "android.os.ICheckinService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 51
    goto :goto_a

    .line 55
    :sswitch_12
    const-string v3, "android.os.ICheckinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/os/ICheckinService$Stub;->checkin()Z

    move-result v2

    .line 57
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v2, :cond_26

    move v3, v4

    :goto_21
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 59
    goto :goto_a

    .line 58
    :cond_26
    const/4 v3, 0x0

    goto :goto_21

    .line 63
    .end local v2           #_result:Z
    :sswitch_28
    const-string v3, "android.os.ICheckinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 66
    .local v0, _arg0:[B
    invoke-virtual {p0, v0}, Landroid/os/ICheckinService$Stub;->reportCrashSync([B)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 68
    goto :goto_a

    .line 72
    .end local v0           #_arg0:[B
    :sswitch_39
    const-string v3, "android.os.ICheckinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 75
    .restart local v0       #_arg0:[B
    invoke-virtual {p0, v0}, Landroid/os/ICheckinService$Stub;->reportCrashAsync([B)V

    move v3, v4

    .line 76
    goto :goto_a

    .line 80
    .end local v0           #_arg0:[B
    :sswitch_47
    const-string v3, "android.os.ICheckinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Landroid/os/ICheckinService$Stub;->masterClear()V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 83
    goto :goto_a

    .line 87
    :sswitch_54
    const-string v3, "android.os.ICheckinService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IParentalControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IParentalControlCallback;

    move-result-object v0

    .line 91
    .local v0, _arg0:Landroid/os/IParentalControlCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/ICheckinService$Stub;->getParentalControlState(Landroid/os/IParentalControlCallback;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 94
    goto :goto_a

    .line 46
    nop

    :sswitch_data_6e
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_28
        0x3 -> :sswitch_39
        0x4 -> :sswitch_47
        0x5 -> :sswitch_54
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
