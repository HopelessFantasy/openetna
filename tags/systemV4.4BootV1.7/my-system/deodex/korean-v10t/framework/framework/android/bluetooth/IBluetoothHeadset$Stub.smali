.class public abstract Landroid/bluetooth/IBluetoothHeadset$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHeadset.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHeadset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadset"

.field static final TRANSACTION_connectHeadset:I = 0x3

.field static final TRANSACTION_disconnectHeadset:I = 0x4

.field static final TRANSACTION_getBatteryUsageHint:I = 0xa

.field static final TRANSACTION_getHeadsetAddress:I = 0x2

.field static final TRANSACTION_getPriority:I = 0x9

.field static final TRANSACTION_getState:I = 0x1

.field static final TRANSACTION_isConnected:I = 0x5

.field static final TRANSACTION_setPriority:I = 0x8

.field static final TRANSACTION_startVoiceRecognition:I = 0x6

.field static final TRANSACTION_stopVoiceRecognition:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadset;
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
    const-string v1, "android.bluetooth.IBluetoothHeadset"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_14

    .line 39
    check-cast v0, Landroid/bluetooth/IBluetoothHeadset;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 41
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v5, "android.bluetooth.IBluetoothHeadset"

    .line 49
    sparse-switch p1, :sswitch_data_ea

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_b
    return v3

    .line 53
    :sswitch_c
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 54
    goto :goto_b

    .line 58
    :sswitch_13
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getState()I

    move-result v2

    .line 60
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 62
    goto :goto_b

    .line 66
    .end local v2           #_result:I
    :sswitch_24
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getHeadsetAddress()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 70
    goto :goto_b

    .line 74
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_35
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->connectHeadset(Ljava/lang/String;)Z

    move-result v2

    .line 78
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v2, :cond_4d

    move v3, v4

    :goto_48
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 80
    goto :goto_b

    :cond_4d
    move v3, v6

    .line 79
    goto :goto_48

    .line 84
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_4f
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnectHeadset()V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 87
    goto :goto_b

    .line 91
    :sswitch_5c
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isConnected(Ljava/lang/String;)Z

    move-result v2

    .line 95
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v2, :cond_74

    move v3, v4

    :goto_6f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 97
    goto :goto_b

    :cond_74
    move v3, v6

    .line 96
    goto :goto_6f

    .line 101
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_76
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->startVoiceRecognition()Z

    move-result v2

    .line 103
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v2, :cond_8a

    move v3, v4

    :goto_85
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 105
    goto :goto_b

    :cond_8a
    move v3, v6

    .line 104
    goto :goto_85

    .line 109
    .end local v2           #_result:Z
    :sswitch_8c
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->stopVoiceRecognition()Z

    move-result v2

    .line 111
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v2, :cond_a1

    move v3, v4

    :goto_9b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 113
    goto/16 :goto_b

    :cond_a1
    move v3, v6

    .line 112
    goto :goto_9b

    .line 117
    .end local v2           #_result:Z
    :sswitch_a3
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setPriority(Ljava/lang/String;I)Z

    move-result v2

    .line 123
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v2, :cond_c0

    move v3, v4

    :goto_ba
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 125
    goto/16 :goto_b

    :cond_c0
    move v3, v6

    .line 124
    goto :goto_ba

    .line 129
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :sswitch_c2
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getPriority(Ljava/lang/String;)I

    move-result v2

    .line 133
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 135
    goto/16 :goto_b

    .line 139
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_d8
    const-string v3, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getBatteryUsageHint()I

    move-result v2

    .line 141
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 143
    goto/16 :goto_b

    .line 49
    :sswitch_data_ea
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_35
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_5c
        0x6 -> :sswitch_76
        0x7 -> :sswitch_8c
        0x8 -> :sswitch_a3
        0x9 -> :sswitch_c2
        0xa -> :sswitch_d8
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
