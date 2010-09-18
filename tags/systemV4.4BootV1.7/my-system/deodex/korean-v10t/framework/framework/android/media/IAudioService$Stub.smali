.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_adjustStreamVolume:I = 0x3

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x2

.field static final TRANSACTION_adjustVolume:I = 0x1

.field static final TRANSACTION_getMode:I = 0x11

.field static final TRANSACTION_getRingerMode:I = 0xa

.field static final TRANSACTION_getRouting:I = 0x13

.field static final TRANSACTION_getStreamMaxVolume:I = 0x8

.field static final TRANSACTION_getStreamVolume:I = 0x7

.field static final TRANSACTION_getVibrateSetting:I = 0xc

.field static final TRANSACTION_isMicrophoneMute:I = 0xf

.field static final TRANSACTION_isMusicActive:I = 0x14

.field static final TRANSACTION_loadSoundEffects:I = 0x18

.field static final TRANSACTION_playSoundEffect:I = 0x16

.field static final TRANSACTION_playSoundEffectVolume:I = 0x17

.field static final TRANSACTION_reloadAudioSettings:I = 0x1a

.field static final TRANSACTION_setMicrophoneMute:I = 0xe

.field static final TRANSACTION_setMode:I = 0x10

.field static final TRANSACTION_setParameter:I = 0x15

.field static final TRANSACTION_setRingerMode:I = 0x9

.field static final TRANSACTION_setRouting:I = 0x12

.field static final TRANSACTION_setStreamMute:I = 0x6

.field static final TRANSACTION_setStreamSolo:I = 0x5

.field static final TRANSACTION_setStreamVolume:I = 0x4

.field static final TRANSACTION_setVibrateSetting:I = 0xb

.field static final TRANSACTION_shouldVibrate:I = 0xd

.field static final TRANSACTION_unloadSoundEffects:I = 0x19


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
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
    const-string v1, "android.media.IAudioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_14

    .line 37
    check-cast v0, Landroid/media/IAudioService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 39
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/media/IAudioService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 13
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
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "android.media.IAudioService"

    .line 47
    sparse-switch p1, :sswitch_data_246

    .line 313
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_b
    return v4

    .line 51
    :sswitch_c
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 52
    goto :goto_b

    .line 56
    :sswitch_13
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/media/IAudioService$Stub;->adjustVolume(II)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 63
    goto :goto_b

    .line 67
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_28
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 73
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 74
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(III)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 76
    goto :goto_b

    .line 80
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    :sswitch_41
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 87
    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(III)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 89
    goto :goto_b

    .line 93
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    :sswitch_5a
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 99
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 100
    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setStreamVolume(III)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 102
    goto :goto_b

    .line 106
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    :sswitch_73
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_90

    move v1, v5

    .line 112
    .local v1, _arg1:Z
    :goto_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 113
    .local v2, _arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setStreamSolo(IZLandroid/os/IBinder;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 115
    goto/16 :goto_b

    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Landroid/os/IBinder;
    :cond_90
    move v1, v7

    .line 110
    goto :goto_83

    .line 119
    .end local v0           #_arg0:I
    :sswitch_92
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 123
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_af

    move v1, v5

    .line 125
    .restart local v1       #_arg1:Z
    :goto_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 126
    .restart local v2       #_arg2:Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setStreamMute(IZLandroid/os/IBinder;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 128
    goto/16 :goto_b

    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Landroid/os/IBinder;
    :cond_af
    move v1, v7

    .line 123
    goto :goto_a2

    .line 132
    .end local v0           #_arg0:I
    :sswitch_b1
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v3

    .line 136
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 138
    goto/16 :goto_b

    .line 142
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_c7
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 145
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v3

    .line 146
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 148
    goto/16 :goto_b

    .line 152
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_dd
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/IAudioService$Stub;->setRingerMode(I)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 157
    goto/16 :goto_b

    .line 161
    .end local v0           #_arg0:I
    :sswitch_ef
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getRingerMode()I

    move-result v3

    .line 163
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 165
    goto/16 :goto_b

    .line 169
    .end local v3           #_result:I
    :sswitch_101
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 176
    goto/16 :goto_b

    .line 180
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_117
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 183
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v3

    .line 184
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 186
    goto/16 :goto_b

    .line 190
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_12d
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 193
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v3

    .line 194
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    if-eqz v3, :cond_146

    move v4, v5

    :goto_140
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 196
    goto/16 :goto_b

    :cond_146
    move v4, v7

    .line 195
    goto :goto_140

    .line 200
    .end local v0           #_arg0:I
    .end local v3           #_result:Z
    :sswitch_148
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15d

    move v0, v5

    .line 203
    .local v0, _arg0:Z
    :goto_154
    invoke-virtual {p0, v0}, Landroid/media/IAudioService$Stub;->setMicrophoneMute(Z)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 205
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_15d
    move v0, v7

    .line 202
    goto :goto_154

    .line 209
    :sswitch_15f
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isMicrophoneMute()Z

    move-result v3

    .line 211
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    if-eqz v3, :cond_174

    move v4, v5

    :goto_16e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 213
    goto/16 :goto_b

    :cond_174
    move v4, v7

    .line 212
    goto :goto_16e

    .line 217
    .end local v3           #_result:Z
    :sswitch_176
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 220
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/media/IAudioService$Stub;->setMode(I)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 222
    goto/16 :goto_b

    .line 226
    .end local v0           #_arg0:I
    :sswitch_188
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v3

    .line 228
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 230
    goto/16 :goto_b

    .line 234
    .end local v3           #_result:I
    :sswitch_19a
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 238
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 240
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 241
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/media/IAudioService$Stub;->setRouting(III)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 243
    goto/16 :goto_b

    .line 247
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    :sswitch_1b4
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 250
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/media/IAudioService$Stub;->getRouting(I)I

    move-result v3

    .line 251
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 253
    goto/16 :goto_b

    .line 257
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_1ca
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->isMusicActive()Z

    move-result v3

    .line 259
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    if-eqz v3, :cond_1df

    move v4, v5

    :goto_1d9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 261
    goto/16 :goto_b

    :cond_1df
    move v4, v7

    .line 260
    goto :goto_1d9

    .line 265
    .end local v3           #_result:Z
    :sswitch_1e1
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/media/IAudioService$Stub;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 272
    goto/16 :goto_b

    .line 276
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    :sswitch_1f7
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 279
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/media/IAudioService$Stub;->playSoundEffect(I)V

    move v4, v5

    .line 280
    goto/16 :goto_b

    .line 284
    .end local v0           #_arg0:I
    :sswitch_206
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 288
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 289
    .local v1, _arg1:F
    invoke-virtual {p0, v0, v1}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    move v4, v5

    .line 290
    goto/16 :goto_b

    .line 294
    .end local v0           #_arg0:I
    .end local v1           #_arg1:F
    :sswitch_219
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v3

    .line 296
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    if-eqz v3, :cond_22e

    move v4, v5

    :goto_228
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 298
    goto/16 :goto_b

    :cond_22e
    move v4, v7

    .line 297
    goto :goto_228

    .line 302
    .end local v3           #_result:Z
    :sswitch_230
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    move v4, v5

    .line 304
    goto/16 :goto_b

    .line 308
    :sswitch_23b
    const-string v4, "android.media.IAudioService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    move v4, v5

    .line 310
    goto/16 :goto_b

    .line 47
    :sswitch_data_246
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_28
        0x3 -> :sswitch_41
        0x4 -> :sswitch_5a
        0x5 -> :sswitch_73
        0x6 -> :sswitch_92
        0x7 -> :sswitch_b1
        0x8 -> :sswitch_c7
        0x9 -> :sswitch_dd
        0xa -> :sswitch_ef
        0xb -> :sswitch_101
        0xc -> :sswitch_117
        0xd -> :sswitch_12d
        0xe -> :sswitch_148
        0xf -> :sswitch_15f
        0x10 -> :sswitch_176
        0x11 -> :sswitch_188
        0x12 -> :sswitch_19a
        0x13 -> :sswitch_1b4
        0x14 -> :sswitch_1ca
        0x15 -> :sswitch_1e1
        0x16 -> :sswitch_1f7
        0x17 -> :sswitch_206
        0x18 -> :sswitch_219
        0x19 -> :sswitch_230
        0x1a -> :sswitch_23b
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
