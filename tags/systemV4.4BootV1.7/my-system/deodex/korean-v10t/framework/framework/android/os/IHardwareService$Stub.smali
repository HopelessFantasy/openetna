.class public abstract Landroid/os/IHardwareService$Stub;
.super Landroid/os/Binder;
.source "IHardwareService.java"

# interfaces
.implements Landroid/os/IHardwareService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHardwareService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IHardwareService"

.field static final TRANSACTION_cancelVibrate:I = 0x3

.field static final TRANSACTION_enableButtonLed:I = 0xb

.field static final TRANSACTION_enableCameraFlash:I = 0x6

.field static final TRANSACTION_getFlashlightEnabled:I = 0x4

.field static final TRANSACTION_setALCMode:I = 0xa

.field static final TRANSACTION_setAttentionLight:I = 0x9

.field static final TRANSACTION_setBacklight_byID:I = 0x8

.field static final TRANSACTION_setBacklights:I = 0x7

.field static final TRANSACTION_setFlashlightEnabled:I = 0x5

.field static final TRANSACTION_vibrate:I = 0x1

.field static final TRANSACTION_vibratePattern:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "android.os.IHardwareService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IHardwareService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 25
    if-nez p0, :cond_4

    .line 26
    const/4 v1, 0x0

    .line 32
    :goto_3
    return-object v1

    .line 28
    :cond_4
    const-string v1, "android.os.IHardwareService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IHardwareService;

    if-eqz v1, :cond_14

    .line 30
    check-cast v0, Landroid/os/IHardwareService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 32
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/os/IHardwareService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IHardwareService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
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
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "android.os.IHardwareService"

    .line 40
    sparse-switch p1, :sswitch_data_f4

    .line 150
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 44
    :sswitch_c
    const-string v5, "android.os.IHardwareService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 45
    goto :goto_b

    .line 49
    :sswitch_13
    const-string v5, "android.os.IHardwareService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 52
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/os/IHardwareService$Stub;->vibrate(J)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 54
    goto :goto_b

    .line 58
    .end local v0           #_arg0:J
    :sswitch_24
    const-string v5, "android.os.IHardwareService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 62
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 64
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 65
    .local v3, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/IHardwareService$Stub;->vibratePattern([JILandroid/os/IBinder;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 67
    goto :goto_b

    .line 71
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Landroid/os/IBinder;
    :sswitch_3d
    const-string v5, "android.os.IHardwareService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/os/IHardwareService$Stub;->cancelVibrate()V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 74
    goto :goto_b

    .line 78
    :sswitch_4a
    const-string v5, "android.os.IHardwareService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Landroid/os/IHardwareService$Stub;->getFlashlightEnabled()Z

    move-result v4

    .line 80
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v4, :cond_5e

    move v5, v6

    :goto_59
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 82
    goto :goto_b

    :cond_5e
    move v5, v8

    .line 81
    goto :goto_59

    .line 86
    .end local v4           #_result:Z
    :sswitch_60
    const-string v5, "android.os.IHardwareService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_74

    move v0, v6

    .line 89
    .local v0, _arg0:Z
    :goto_6c
    invoke-virtual {p0, v0}, Landroid/os/IHardwareService$Stub;->setFlashlightEnabled(Z)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 91
    goto :goto_b

    .end local v0           #_arg0:Z
    :cond_74
    move v0, v8

    .line 88
    goto :goto_6c

    .line 95
    :sswitch_76
    const-string v5, "android.os.IHardwareService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IHardwareService$Stub;->enableCameraFlash(I)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 100
    goto :goto_b

    .line 104
    .end local v0           #_arg0:I
    :sswitch_87
    const-string v5, "android.os.IHardwareService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IHardwareService$Stub;->setBacklights(I)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 109
    goto/16 :goto_b

    .line 113
    .end local v0           #_arg0:I
    :sswitch_99
    const-string v5, "android.os.IHardwareService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 117
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 118
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IHardwareService$Stub;->setBacklight_byID(II)V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 120
    goto/16 :goto_b

    .line 124
    .end local v0           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_af
    const-string v5, "android.os.IHardwareService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c4

    move v0, v6

    .line 127
    .local v0, _arg0:Z
    :goto_bb
    invoke-virtual {p0, v0}, Landroid/os/IHardwareService$Stub;->setAttentionLight(Z)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 129
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_c4
    move v0, v8

    .line 126
    goto :goto_bb

    .line 133
    :sswitch_c6
    const-string v5, "android.os.IHardwareService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_db

    move v0, v6

    .line 136
    .restart local v0       #_arg0:Z
    :goto_d2
    invoke-virtual {p0, v0}, Landroid/os/IHardwareService$Stub;->setALCMode(Z)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 138
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_db
    move v0, v8

    .line 135
    goto :goto_d2

    .line 142
    :sswitch_dd
    const-string v5, "android.os.IHardwareService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f2

    move v0, v6

    .line 145
    .restart local v0       #_arg0:Z
    :goto_e9
    invoke-virtual {p0, v0}, Landroid/os/IHardwareService$Stub;->enableButtonLed(Z)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 147
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_f2
    move v0, v8

    .line 144
    goto :goto_e9

    .line 40
    :sswitch_data_f4
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_60
        0x6 -> :sswitch_76
        0x7 -> :sswitch_87
        0x8 -> :sswitch_99
        0x9 -> :sswitch_af
        0xa -> :sswitch_c6
        0xb -> :sswitch_dd
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
