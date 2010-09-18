.class public abstract Landroid/os/IMountService$Stub;
.super Landroid/os/Binder;
.source "IMountService.java"

# interfaces
.implements Landroid/os/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IMountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IMountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IMountService"

.field static final TRANSACTION_formatMedia:I = 0x6

.field static final TRANSACTION_getAutoStartUms:I = 0x9

.field static final TRANSACTION_getMassStorageConnected:I = 0x3

.field static final TRANSACTION_getMassStorageEnabled:I = 0x1

.field static final TRANSACTION_getMountPointList:I = 0xb

.field static final TRANSACTION_getPlayNotificationSounds:I = 0x7

.field static final TRANSACTION_mountMedia:I = 0x4

.field static final TRANSACTION_setAutoStartUms:I = 0xa

.field static final TRANSACTION_setMassStorageEnabled:I = 0x2

.field static final TRANSACTION_setPlayNotificationSounds:I = 0x8

.field static final TRANSACTION_unmountMedia:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.os.IMountService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IMountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IMountService;
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
    const-string v1, "android.os.IMountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IMountService;

    if-eqz v1, :cond_14

    .line 34
    check-cast v0, Landroid/os/IMountService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 36
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/os/IMountService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IMountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v4, "android.os.IMountService"

    .line 44
    sparse-switch p1, :sswitch_data_f6

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_b
    return v2

    .line 48
    :sswitch_c
    const-string v2, "android.os.IMountService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 49
    goto :goto_b

    .line 53
    :sswitch_13
    const-string v2, "android.os.IMountService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/os/IMountService$Stub;->getMassStorageEnabled()Z

    move-result v1

    .line 55
    .local v1, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v1, :cond_27

    move v2, v3

    :goto_22
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 57
    goto :goto_b

    :cond_27
    move v2, v5

    .line 56
    goto :goto_22

    .line 61
    .end local v1           #_result:Z
    :sswitch_29
    const-string v2, "android.os.IMountService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3d

    move v0, v3

    .line 64
    .local v0, _arg0:Z
    :goto_35
    invoke-virtual {p0, v0}, Landroid/os/IMountService$Stub;->setMassStorageEnabled(Z)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 66
    goto :goto_b

    .end local v0           #_arg0:Z
    :cond_3d
    move v0, v5

    .line 63
    goto :goto_35

    .line 70
    :sswitch_3f
    const-string v2, "android.os.IMountService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/os/IMountService$Stub;->getMassStorageConnected()Z

    move-result v1

    .line 72
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v1, :cond_53

    move v2, v3

    :goto_4e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 74
    goto :goto_b

    :cond_53
    move v2, v5

    .line 73
    goto :goto_4e

    .line 78
    .end local v1           #_result:Z
    :sswitch_55
    const-string v2, "android.os.IMountService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IMountService$Stub;->mountMedia(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 83
    goto :goto_b

    .line 87
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_66
    const-string v2, "android.os.IMountService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IMountService$Stub;->unmountMedia(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 92
    goto :goto_b

    .line 96
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_77
    const-string v2, "android.os.IMountService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IMountService$Stub;->formatMedia(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 101
    goto :goto_b

    .line 105
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_88
    const-string v2, "android.os.IMountService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/os/IMountService$Stub;->getPlayNotificationSounds()Z

    move-result v1

    .line 107
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v1, :cond_9d

    move v2, v3

    :goto_97
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 109
    goto/16 :goto_b

    :cond_9d
    move v2, v5

    .line 108
    goto :goto_97

    .line 113
    .end local v1           #_result:Z
    :sswitch_9f
    const-string v2, "android.os.IMountService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b4

    move v0, v3

    .line 116
    .local v0, _arg0:Z
    :goto_ab
    invoke-virtual {p0, v0}, Landroid/os/IMountService$Stub;->setPlayNotificationSounds(Z)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 118
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_b4
    move v0, v5

    .line 115
    goto :goto_ab

    .line 122
    :sswitch_b6
    const-string v2, "android.os.IMountService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/os/IMountService$Stub;->getAutoStartUms()Z

    move-result v1

    .line 124
    .restart local v1       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v1, :cond_cb

    move v2, v3

    :goto_c5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v3

    .line 126
    goto/16 :goto_b

    :cond_cb
    move v2, v5

    .line 125
    goto :goto_c5

    .line 130
    .end local v1           #_result:Z
    :sswitch_cd
    const-string v2, "android.os.IMountService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e2

    move v0, v3

    .line 133
    .restart local v0       #_arg0:Z
    :goto_d9
    invoke-virtual {p0, v0}, Landroid/os/IMountService$Stub;->setAutoStartUms(Z)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v2, v3

    .line 135
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_e2
    move v0, v5

    .line 132
    goto :goto_d9

    .line 139
    :sswitch_e4
    const-string v2, "android.os.IMountService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Landroid/os/IMountService$Stub;->getMountPointList()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v2, v3

    .line 143
    goto/16 :goto_b

    .line 44
    :sswitch_data_f6
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_29
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_55
        0x5 -> :sswitch_66
        0x6 -> :sswitch_77
        0x7 -> :sswitch_88
        0x8 -> :sswitch_9f
        0x9 -> :sswitch_b6
        0xa -> :sswitch_cd
        0xb -> :sswitch_e4
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
