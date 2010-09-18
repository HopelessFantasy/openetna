.class public abstract Lcom/android/internal/app/IBatteryStats$Stub;
.super Landroid/os/Binder;
.source "IBatteryStats.java"

# interfaces
.implements Lcom/android/internal/app/IBatteryStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IBatteryStats$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IBatteryStats"

.field static final TRANSACTION_getAwakeTimeBattery:I = 0x20

.field static final TRANSACTION_getAwakeTimePlugged:I = 0x21

.field static final TRANSACTION_getStatistics:I = 0x1

.field static final TRANSACTION_noteAirplaneMode:I = 0x11

.field static final TRANSACTION_noteBluetoothOff:I = 0x17

.field static final TRANSACTION_noteBluetoothOn:I = 0x16

.field static final TRANSACTION_noteFullWifiLockAcquired:I = 0x18

.field static final TRANSACTION_noteFullWifiLockReleased:I = 0x19

.field static final TRANSACTION_noteInputEvent:I = 0xb

.field static final TRANSACTION_notePhoneDataConnectionState:I = 0x10

.field static final TRANSACTION_notePhoneOff:I = 0xe

.field static final TRANSACTION_notePhoneOn:I = 0xd

.field static final TRANSACTION_notePhoneSignalStrength:I = 0xf

.field static final TRANSACTION_noteScanWifiLockAcquired:I = 0x1a

.field static final TRANSACTION_noteScanWifiLockReleased:I = 0x1b

.field static final TRANSACTION_noteScreenBrightness:I = 0x9

.field static final TRANSACTION_noteScreenOff:I = 0xa

.field static final TRANSACTION_noteScreenOn:I = 0x8

.field static final TRANSACTION_noteStartGps:I = 0x6

.field static final TRANSACTION_noteStartSensor:I = 0x4

.field static final TRANSACTION_noteStartWakelock:I = 0x2

.field static final TRANSACTION_noteStopGps:I = 0x7

.field static final TRANSACTION_noteStopSensor:I = 0x5

.field static final TRANSACTION_noteStopWakelock:I = 0x3

.field static final TRANSACTION_noteUserActivity:I = 0xc

.field static final TRANSACTION_noteWifiMulticastDisabled:I = 0x1d

.field static final TRANSACTION_noteWifiMulticastEnabled:I = 0x1c

.field static final TRANSACTION_noteWifiOff:I = 0x13

.field static final TRANSACTION_noteWifiOn:I = 0x12

.field static final TRANSACTION_noteWifiRunning:I = 0x14

.field static final TRANSACTION_noteWifiStopped:I = 0x15

.field static final TRANSACTION_recordCurrentLevel:I = 0x1f

.field static final TRANSACTION_setOnBattery:I = 0x1e


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;
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
    const-string v1, "com.android.internal.app.IBatteryStats"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_14

    .line 35
    check-cast v0, Lcom/android/internal/app/IBatteryStats;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 37
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v7, "com.android.internal.app.IBatteryStats"

    .line 45
    sparse-switch p1, :sswitch_data_27c

    .line 352
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 49
    :sswitch_c
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 50
    goto :goto_b

    .line 54
    :sswitch_13
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getStatistics()[B

    move-result-object v3

    .line 56
    .local v3, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    move v5, v6

    .line 58
    goto :goto_b

    .line 62
    .end local v3           #_result:[B
    :sswitch_24
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 69
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelock(ILjava/lang/String;I)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 71
    goto :goto_b

    .line 75
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    :sswitch_3d
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 82
    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelock(ILjava/lang/String;I)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 84
    goto :goto_b

    .line 88
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    :sswitch_56
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 93
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensor(II)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 95
    goto :goto_b

    .line 99
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_6b
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensor(II)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 106
    goto :goto_b

    .line 110
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_80
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartGps(I)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 115
    goto/16 :goto_b

    .line 119
    .end local v0           #_arg0:I
    :sswitch_92
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 122
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopGps(I)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 124
    goto/16 :goto_b

    .line 128
    .end local v0           #_arg0:I
    :sswitch_a4
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenOn()V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 131
    goto/16 :goto_b

    .line 135
    :sswitch_b2
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenBrightness(I)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 140
    goto/16 :goto_b

    .line 144
    .end local v0           #_arg0:I
    :sswitch_c4
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenOff()V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 147
    goto/16 :goto_b

    .line 151
    :sswitch_d2
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteInputEvent()V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 154
    goto/16 :goto_b

    .line 158
    :sswitch_e0
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 162
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUserActivity(II)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 165
    goto/16 :goto_b

    .line 169
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_f6
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn()V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 172
    goto/16 :goto_b

    .line 176
    :sswitch_104
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff()V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 179
    goto/16 :goto_b

    .line 183
    :sswitch_112
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12e

    .line 186
    sget-object v5, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalStrength;

    .line 191
    .local v0, _arg0:Landroid/telephony/SignalStrength;
    :goto_125
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 193
    goto/16 :goto_b

    .line 189
    .end local v0           #_arg0:Landroid/telephony/SignalStrength;
    :cond_12e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/telephony/SignalStrength;
    goto :goto_125

    .line 197
    .end local v0           #_arg0:Landroid/telephony/SignalStrength;
    :sswitch_130
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 201
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_149

    move v1, v6

    .line 202
    .local v1, _arg1:Z
    :goto_140
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState(IZ)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 204
    goto/16 :goto_b

    .end local v1           #_arg1:Z
    :cond_149
    move v1, v8

    .line 201
    goto :goto_140

    .line 208
    .end local v0           #_arg0:I
    :sswitch_14b
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_160

    move v0, v6

    .line 211
    .local v0, _arg0:Z
    :goto_157
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteAirplaneMode(Z)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 213
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_160
    move v0, v8

    .line 210
    goto :goto_157

    .line 217
    :sswitch_162
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 220
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn(I)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 222
    goto/16 :goto_b

    .line 226
    .end local v0           #_arg0:I
    :sswitch_174
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 229
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff(I)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 231
    goto/16 :goto_b

    .line 235
    .end local v0           #_arg0:I
    :sswitch_186
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning()V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 238
    goto/16 :goto_b

    .line 242
    :sswitch_194
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped()V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 245
    goto/16 :goto_b

    .line 249
    :sswitch_1a2
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothOn()V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 252
    goto/16 :goto_b

    .line 256
    :sswitch_1b0
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothOff()V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 259
    goto/16 :goto_b

    .line 263
    :sswitch_1be
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 266
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired(I)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 268
    goto/16 :goto_b

    .line 272
    .end local v0           #_arg0:I
    :sswitch_1d0
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 275
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased(I)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 277
    goto/16 :goto_b

    .line 281
    .end local v0           #_arg0:I
    :sswitch_1e2
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 284
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScanWifiLockAcquired(I)V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 286
    goto/16 :goto_b

    .line 290
    .end local v0           #_arg0:I
    :sswitch_1f4
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 293
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScanWifiLockReleased(I)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 295
    goto/16 :goto_b

    .line 299
    .end local v0           #_arg0:I
    :sswitch_206
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 302
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled(I)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 304
    goto/16 :goto_b

    .line 308
    .end local v0           #_arg0:I
    :sswitch_218
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 311
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled(I)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 313
    goto/16 :goto_b

    .line 317
    .end local v0           #_arg0:I
    :sswitch_22a
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_243

    move v0, v6

    .line 321
    .local v0, _arg0:Z
    :goto_236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 322
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->setOnBattery(ZI)V

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 324
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    :cond_243
    move v0, v8

    .line 319
    goto :goto_236

    .line 328
    :sswitch_245
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 331
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->recordCurrentLevel(I)V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 333
    goto/16 :goto_b

    .line 337
    .end local v0           #_arg0:I
    :sswitch_257
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery()J

    move-result-wide v3

    .line 339
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 341
    goto/16 :goto_b

    .line 345
    .end local v3           #_result:J
    :sswitch_269
    const-string v5, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged()J

    move-result-wide v3

    .line 347
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 349
    goto/16 :goto_b

    .line 45
    nop

    :sswitch_data_27c
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_56
        0x5 -> :sswitch_6b
        0x6 -> :sswitch_80
        0x7 -> :sswitch_92
        0x8 -> :sswitch_a4
        0x9 -> :sswitch_b2
        0xa -> :sswitch_c4
        0xb -> :sswitch_d2
        0xc -> :sswitch_e0
        0xd -> :sswitch_f6
        0xe -> :sswitch_104
        0xf -> :sswitch_112
        0x10 -> :sswitch_130
        0x11 -> :sswitch_14b
        0x12 -> :sswitch_162
        0x13 -> :sswitch_174
        0x14 -> :sswitch_186
        0x15 -> :sswitch_194
        0x16 -> :sswitch_1a2
        0x17 -> :sswitch_1b0
        0x18 -> :sswitch_1be
        0x19 -> :sswitch_1d0
        0x1a -> :sswitch_1e2
        0x1b -> :sswitch_1f4
        0x1c -> :sswitch_206
        0x1d -> :sswitch_218
        0x1e -> :sswitch_22a
        0x1f -> :sswitch_245
        0x20 -> :sswitch_257
        0x21 -> :sswitch_269
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
