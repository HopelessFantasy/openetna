.class public abstract Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;
.super Landroid/os/Binder;
.source "IFmReceiverService.java"

# interfaces
.implements Lcom/broadcom/bt/service/fm/IFmReceiverService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/IFmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.fm.IFmReceiverService"

.field static final TRANSACTION_estimateNoiseFloorLevel:I = 0x11

.field static final TRANSACTION_getStatus:I = 0x7

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_muteAudio:I = 0x8

.field static final TRANSACTION_registerCallback:I = 0x2

.field static final TRANSACTION_seekRdsStation:I = 0xa

.field static final TRANSACTION_seekStation:I = 0x9

.field static final TRANSACTION_seekStationAbort:I = 0xb

.field static final TRANSACTION_setAudioMode:I = 0xd

.field static final TRANSACTION_setAudioPath:I = 0xe

.field static final TRANSACTION_setFMVolume:I = 0x13

.field static final TRANSACTION_setLiveAudioPolling:I = 0x12

.field static final TRANSACTION_setRdsMode:I = 0xc

.field static final TRANSACTION_setStepSize:I = 0xf

.field static final TRANSACTION_setWorldRegion:I = 0x10

.field static final TRANSACTION_tuneRadio:I = 0x6

.field static final TRANSACTION_turnOffRadio:I = 0x5

.field static final TRANSACTION_turnOnRadio:I = 0x4

.field static final TRANSACTION_unregisterCallback:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmReceiverService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 32
    if-nez p0, :cond_4

    .line 33
    const/4 v1, 0x0

    .line 39
    :goto_3
    return-object v1

    .line 35
    :cond_4
    const-string v1, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/broadcom/bt/service/fm/IFmReceiverService;

    if-eqz v1, :cond_14

    .line 37
    check-cast v0, Lcom/broadcom/bt/service/fm/IFmReceiverService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 39
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 43
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

    const-string v7, "com.broadcom.bt.service.fm.IFmReceiverService"

    .line 47
    sparse-switch p1, :sswitch_data_1ca

    .line 252
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 51
    :sswitch_c
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 52
    goto :goto_b

    .line 56
    :sswitch_13
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->init()V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 59
    goto :goto_b

    .line 63
    :sswitch_20
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    move-result-object v0

    .line 66
    .local v0, _arg0:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 68
    goto :goto_b

    .line 72
    .end local v0           #_arg0:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
    :sswitch_35
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    move-result-object v0

    .line 75
    .restart local v0       #_arg0:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 77
    goto :goto_b

    .line 81
    .end local v0           #_arg0:Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
    :sswitch_4a
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->turnOnRadio(I)I

    move-result v4

    .line 85
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 87
    goto :goto_b

    .line 91
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_5f
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->turnOffRadio()I

    move-result v4

    .line 93
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 95
    goto :goto_b

    .line 99
    .end local v4           #_result:I
    :sswitch_70
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->tuneRadio(I)I

    move-result v4

    .line 103
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 105
    goto :goto_b

    .line 109
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_85
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->getStatus()I

    move-result v4

    .line 111
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 113
    goto/16 :goto_b

    .line 117
    .end local v4           #_result:I
    :sswitch_97
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b0

    move v0, v6

    .line 120
    .local v0, _arg0:Z
    :goto_a3
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->muteAudio(Z)I

    move-result v4

    .line 121
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 123
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v4           #_result:I
    :cond_b0
    move v0, v8

    .line 119
    goto :goto_a3

    .line 127
    :sswitch_b2
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->seekStation(II)I

    move-result v4

    .line 133
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 135
    goto/16 :goto_b

    .line 139
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v4           #_result:I
    :sswitch_cc
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 143
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 145
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 148
    .local v3, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->seekRdsStation(IIII)I

    move-result v4

    .line 149
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 151
    goto/16 :goto_b

    .line 155
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    .end local v4           #_result:I
    :sswitch_ee
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->seekStationAbort()I

    move-result v4

    .line 157
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 159
    goto/16 :goto_b

    .line 163
    .end local v4           #_result:I
    :sswitch_100
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 167
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 169
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 171
    .restart local v2       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 172
    .restart local v3       #_arg3:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setRdsMode(IIII)I

    move-result v4

    .line 173
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 175
    goto/16 :goto_b

    .line 179
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v3           #_arg3:I
    .end local v4           #_result:I
    :sswitch_122
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 182
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setAudioMode(I)I

    move-result v4

    .line 183
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 185
    goto/16 :goto_b

    .line 189
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_138
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 192
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setAudioPath(I)I

    move-result v4

    .line 193
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 195
    goto/16 :goto_b

    .line 199
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_14e
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 202
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setStepSize(I)I

    move-result v4

    .line 203
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 205
    goto/16 :goto_b

    .line 209
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_164
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 213
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setWorldRegion(II)I

    move-result v4

    .line 215
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 217
    goto/16 :goto_b

    .line 221
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v4           #_result:I
    :sswitch_17e
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 224
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->estimateNoiseFloorLevel(I)I

    move-result v4

    .line 225
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 227
    goto/16 :goto_b

    .line 231
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_194
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b1

    move v0, v6

    .line 235
    .local v0, _arg0:Z
    :goto_1a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 236
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setLiveAudioPolling(ZI)I

    move-result v4

    .line 237
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 239
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    .end local v4           #_result:I
    :cond_1b1
    move v0, v8

    .line 233
    goto :goto_1a0

    .line 243
    :sswitch_1b3
    const-string v5, "com.broadcom.bt.service.fm.IFmReceiverService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 246
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->setFMVolume(I)I

    move-result v4

    .line 247
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 249
    goto/16 :goto_b

    .line 47
    nop

    :sswitch_data_1ca
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_20
        0x3 -> :sswitch_35
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_5f
        0x6 -> :sswitch_70
        0x7 -> :sswitch_85
        0x8 -> :sswitch_97
        0x9 -> :sswitch_b2
        0xa -> :sswitch_cc
        0xb -> :sswitch_ee
        0xc -> :sswitch_100
        0xd -> :sswitch_122
        0xe -> :sswitch_138
        0xf -> :sswitch_14e
        0x10 -> :sswitch_164
        0x11 -> :sswitch_17e
        0x12 -> :sswitch_194
        0x13 -> :sswitch_1b3
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
