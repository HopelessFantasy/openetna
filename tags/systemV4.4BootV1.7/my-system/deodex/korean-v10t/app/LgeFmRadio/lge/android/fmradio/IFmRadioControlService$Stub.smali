.class public abstract Llge/android/fmradio/IFmRadioControlService$Stub;
.super Landroid/os/Binder;
.source "IFmRadioControlService.java"

# interfaces
.implements Llge/android/fmradio/IFmRadioControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llge/android/fmradio/IFmRadioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llge/android/fmradio/IFmRadioControlService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "lge.android.fmradio.IFmRadioControlService"

.field static final TRANSACTION_SetAudioFromUser:I = 0x15

.field static final TRANSACTION_getCurrentSoundDevice:I = 0x14

.field static final TRANSACTION_getRunningState:I = 0x12

.field static final TRANSACTION_getSystemState:I = 0x10

.field static final TRANSACTION_run:I = 0x1

.field static final TRANSACTION_runAutoScanning:I = 0xb

.field static final TRANSACTION_runBackwardScanning:I = 0xd

.field static final TRANSACTION_runCatchAutoScanning:I = 0xc

.field static final TRANSACTION_runForwardScanning:I = 0xe

.field static final TRANSACTION_runRdsMode:I = 0xf

.field static final TRANSACTION_setRunningState:I = 0x11

.field static final TRANSACTION_stop:I = 0x2

.field static final TRANSACTION_tuneFrequency:I = 0x13

.field static final TRANSACTION_tunningLeft:I = 0x3

.field static final TRANSACTION_tunningRight:I = 0x4

.field static final TRANSACTION_tunningsLeft:I = 0x5

.field static final TRANSACTION_tunningsRight:I = 0x6

.field static final TRANSACTION_tunningsdummyLeft:I = 0x7

.field static final TRANSACTION_tunningsdummyRight:I = 0x8

.field static final TRANSACTION_tunningsdummysLeft:I = 0x9

.field static final TRANSACTION_tunningsdummysRight:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p0, p0, v0}, Llge/android/fmradio/IFmRadioControlService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Llge/android/fmradio/IFmRadioControlService;
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
    const-string v1, "lge.android.fmradio.IFmRadioControlService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Llge/android/fmradio/IFmRadioControlService;

    if-eqz v1, :cond_14

    .line 36
    check-cast v0, Llge/android/fmradio/IFmRadioControlService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 38
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Llge/android/fmradio/IFmRadioControlService$Stub$Proxy;

    invoke-direct {v1, p0}, Llge/android/fmradio/IFmRadioControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v5, "lge.android.fmradio.IFmRadioControlService"

    .line 46
    sparse-switch p1, :sswitch_data_17e

    .line 223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_b
    return v3

    .line 50
    :sswitch_c
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 51
    goto :goto_b

    .line 55
    :sswitch_13
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Llge/android/fmradio/IFmRadioControlService$Stub;->run()Z

    move-result v2

    .line 57
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v2, :cond_27

    move v3, v4

    :goto_22
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 59
    goto :goto_b

    :cond_27
    move v3, v6

    .line 58
    goto :goto_22

    .line 63
    .end local v2           #_result:Z
    :sswitch_29
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Llge/android/fmradio/IFmRadioControlService$Stub;->stop()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 66
    goto :goto_b

    .line 70
    :sswitch_36
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Llge/android/fmradio/IFmRadioControlService$Stub;->tunningLeft()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 73
    goto :goto_b

    .line 77
    :sswitch_43
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Llge/android/fmradio/IFmRadioControlService$Stub;->tunningRight()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 80
    goto :goto_b

    .line 84
    :sswitch_50
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 87
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Llge/android/fmradio/IFmRadioControlService$Stub;->tunningsLeft(I)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 89
    goto :goto_b

    .line 93
    .end local v0           #_arg0:I
    :sswitch_61
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Llge/android/fmradio/IFmRadioControlService$Stub;->tunningsRight(I)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 98
    goto :goto_b

    .line 102
    .end local v0           #_arg0:I
    :sswitch_72
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Llge/android/fmradio/IFmRadioControlService$Stub;->tunningsdummyLeft()V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 105
    goto :goto_b

    .line 109
    :sswitch_7f
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Llge/android/fmradio/IFmRadioControlService$Stub;->tunningsdummyRight()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 112
    goto :goto_b

    .line 116
    :sswitch_8c
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Llge/android/fmradio/IFmRadioControlService$Stub;->tunningsdummysLeft(I)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 121
    goto/16 :goto_b

    .line 125
    .end local v0           #_arg0:I
    :sswitch_9e
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Llge/android/fmradio/IFmRadioControlService$Stub;->tunningsdummysRight(I)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 130
    goto/16 :goto_b

    .line 134
    .end local v0           #_arg0:I
    :sswitch_b0
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Llge/android/fmradio/IFmRadioControlService$Stub;->runAutoScanning()V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 137
    goto/16 :goto_b

    .line 141
    :sswitch_be
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Llge/android/fmradio/IFmRadioControlService$Stub;->runCatchAutoScanning()V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 144
    goto/16 :goto_b

    .line 148
    :sswitch_cc
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Llge/android/fmradio/IFmRadioControlService$Stub;->runBackwardScanning()V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 151
    goto/16 :goto_b

    .line 155
    :sswitch_da
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Llge/android/fmradio/IFmRadioControlService$Stub;->runForwardScanning()V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 158
    goto/16 :goto_b

    .line 162
    :sswitch_e8
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_104

    move v0, v4

    .line 166
    .local v0, _arg0:Z
    :goto_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_106

    move v1, v4

    .line 167
    .local v1, _arg1:Z
    :goto_fb
    invoke-virtual {p0, v0, v1}, Llge/android/fmradio/IFmRadioControlService$Stub;->runRdsMode(ZZ)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 169
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    :cond_104
    move v0, v6

    .line 164
    goto :goto_f4

    .restart local v0       #_arg0:Z
    :cond_106
    move v1, v6

    .line 166
    goto :goto_fb

    .line 173
    .end local v0           #_arg0:Z
    :sswitch_108
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Llge/android/fmradio/IFmRadioControlService$Stub;->getSystemState()I

    move-result v2

    .line 175
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 177
    goto/16 :goto_b

    .line 181
    .end local v2           #_result:I
    :sswitch_11a
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12f

    move v0, v4

    .line 184
    .restart local v0       #_arg0:Z
    :goto_126
    invoke-virtual {p0, v0}, Llge/android/fmradio/IFmRadioControlService$Stub;->setRunningState(Z)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 186
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_12f
    move v0, v6

    .line 183
    goto :goto_126

    .line 190
    :sswitch_131
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Llge/android/fmradio/IFmRadioControlService$Stub;->getRunningState()Z

    move-result v2

    .line 192
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v2, :cond_146

    move v3, v4

    :goto_140
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 194
    goto/16 :goto_b

    :cond_146
    move v3, v6

    .line 193
    goto :goto_140

    .line 198
    .end local v2           #_result:Z
    :sswitch_148
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 201
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Llge/android/fmradio/IFmRadioControlService$Stub;->tuneFrequency(I)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 203
    goto/16 :goto_b

    .line 207
    .end local v0           #_arg0:I
    :sswitch_15a
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Llge/android/fmradio/IFmRadioControlService$Stub;->getCurrentSoundDevice()I

    move-result v2

    .line 209
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 211
    goto/16 :goto_b

    .line 215
    .end local v2           #_result:I
    :sswitch_16c
    const-string v3, "lge.android.fmradio.IFmRadioControlService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 218
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Llge/android/fmradio/IFmRadioControlService$Stub;->SetAudioFromUser(I)V

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 220
    goto/16 :goto_b

    .line 46
    :sswitch_data_17e
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_29
        0x3 -> :sswitch_36
        0x4 -> :sswitch_43
        0x5 -> :sswitch_50
        0x6 -> :sswitch_61
        0x7 -> :sswitch_72
        0x8 -> :sswitch_7f
        0x9 -> :sswitch_8c
        0xa -> :sswitch_9e
        0xb -> :sswitch_b0
        0xc -> :sswitch_be
        0xd -> :sswitch_cc
        0xe -> :sswitch_da
        0xf -> :sswitch_e8
        0x10 -> :sswitch_108
        0x11 -> :sswitch_11a
        0x12 -> :sswitch_131
        0x13 -> :sswitch_148
        0x14 -> :sswitch_15a
        0x15 -> :sswitch_16c
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
