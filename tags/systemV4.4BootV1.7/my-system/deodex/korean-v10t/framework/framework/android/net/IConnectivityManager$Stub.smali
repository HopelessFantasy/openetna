.class public abstract Landroid/net/IConnectivityManager$Stub;
.super Landroid/os/Binder;
.source "IConnectivityManager.java"

# interfaces
.implements Landroid/net/IConnectivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IConnectivityManager"

.field static final TRANSACTION_getActiveNetworkInfo:I = 0x3

.field static final TRANSACTION_getAllNetworkInfo:I = 0x5

.field static final TRANSACTION_getBackgroundDataSetting:I = 0xb

.field static final TRANSACTION_getNetworkInfo:I = 0x4

.field static final TRANSACTION_getNetworkPreference:I = 0x2

.field static final TRANSACTION_requestRouteToHost:I = 0xa

.field static final TRANSACTION_setBackgroundDataSetting:I = 0xc

.field static final TRANSACTION_setNetworkPreference:I = 0x1

.field static final TRANSACTION_setRadio:I = 0x7

.field static final TRANSACTION_setRadios:I = 0x6

.field static final TRANSACTION_startUsingNetworkFeature:I = 0x8

.field static final TRANSACTION_stopUsingNetworkFeature:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "android.net.IConnectivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IConnectivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;
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
    const-string v1, "android.net.IConnectivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/IConnectivityManager;

    if-eqz v1, :cond_14

    .line 38
    check-cast v0, Landroid/net/IConnectivityManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 40
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/net/IConnectivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IConnectivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 12
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
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "android.net.IConnectivityManager"

    .line 48
    sparse-switch p1, :sswitch_data_144

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_b
    return v3

    .line 52
    :sswitch_c
    const-string v3, "android.net.IConnectivityManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 53
    goto :goto_b

    .line 57
    :sswitch_13
    const-string v3, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setNetworkPreference(I)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 62
    goto :goto_b

    .line 66
    .end local v0           #_arg0:I
    :sswitch_24
    const-string v3, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getNetworkPreference()I

    move-result v2

    .line 68
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 70
    goto :goto_b

    .line 74
    .end local v2           #_result:I
    :sswitch_35
    const-string v3, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 76
    .local v2, _result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v2, :cond_4b

    .line 78
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-virtual {v2, p3, v4}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_49
    move v3, v4

    .line 84
    goto :goto_b

    .line 82
    :cond_4b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_49

    .line 88
    .end local v2           #_result:Landroid/net/NetworkInfo;
    :sswitch_4f
    const-string v3, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 92
    .restart local v2       #_result:Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    if-eqz v2, :cond_69

    .line 94
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    invoke-virtual {v2, p3, v4}, Landroid/net/NetworkInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_67
    move v3, v4

    .line 100
    goto :goto_b

    .line 98
    :cond_69
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_67

    .line 104
    .end local v0           #_arg0:I
    .end local v2           #_result:Landroid/net/NetworkInfo;
    :sswitch_6d
    const-string v3, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 106
    .local v2, _result:[Landroid/net/NetworkInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, v2, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v3, v4

    .line 108
    goto :goto_b

    .line 112
    .end local v2           #_result:[Landroid/net/NetworkInfo;
    :sswitch_7e
    const-string v3, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9a

    move v0, v4

    .line 115
    .local v0, _arg0:Z
    :goto_8a
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setRadios(Z)Z

    move-result v2

    .line 116
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v2, :cond_9c

    move v3, v4

    :goto_94
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 118
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_9a
    move v0, v6

    .line 114
    goto :goto_8a

    .restart local v0       #_arg0:Z
    .restart local v2       #_result:Z
    :cond_9c
    move v3, v6

    .line 117
    goto :goto_94

    .line 122
    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :sswitch_9e
    const-string v3, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_be

    move v1, v4

    .line 127
    .local v1, _arg1:Z
    :goto_ae
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->setRadio(IZ)Z

    move-result v2

    .line 128
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v2, :cond_c0

    move v3, v4

    :goto_b8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 130
    goto/16 :goto_b

    .end local v1           #_arg1:Z
    .end local v2           #_result:Z
    :cond_be
    move v1, v6

    .line 126
    goto :goto_ae

    .restart local v1       #_arg1:Z
    .restart local v2       #_result:Z
    :cond_c0
    move v3, v6

    .line 129
    goto :goto_b8

    .line 134
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Z
    .end local v2           #_result:Z
    :sswitch_c2
    const-string v3, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v2

    .line 140
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 142
    goto/16 :goto_b

    .line 146
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_dc
    const-string v3, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 150
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v2

    .line 152
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 154
    goto/16 :goto_b

    .line 158
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_f6
    const-string v3, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/net/IConnectivityManager$Stub;->requestRouteToHost(II)Z

    move-result v2

    .line 164
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v2, :cond_113

    move v3, v4

    :goto_10d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 166
    goto/16 :goto_b

    :cond_113
    move v3, v6

    .line 165
    goto :goto_10d

    .line 170
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_115
    const-string v3, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/net/IConnectivityManager$Stub;->getBackgroundDataSetting()Z

    move-result v2

    .line 172
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v2, :cond_12a

    move v3, v4

    :goto_124
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 174
    goto/16 :goto_b

    :cond_12a
    move v3, v6

    .line 173
    goto :goto_124

    .line 178
    .end local v2           #_result:Z
    :sswitch_12c
    const-string v3, "android.net.IConnectivityManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_141

    move v0, v4

    .line 181
    .local v0, _arg0:Z
    :goto_138
    invoke-virtual {p0, v0}, Landroid/net/IConnectivityManager$Stub;->setBackgroundDataSetting(Z)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 183
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_141
    move v0, v6

    .line 180
    goto :goto_138

    .line 48
    nop

    :sswitch_data_144
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_35
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_6d
        0x6 -> :sswitch_7e
        0x7 -> :sswitch_9e
        0x8 -> :sswitch_c2
        0x9 -> :sswitch_dc
        0xa -> :sswitch_f6
        0xb -> :sswitch_115
        0xc -> :sswitch_12c
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
