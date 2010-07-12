.class public abstract Landroid/os/IPowerManager$Stub;
.super Landroid/os/Binder;
.source "IPowerManager.java"

# interfaces
.implements Landroid/os/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManager"

.field static final TRANSACTION_acquireWakeLock:I = 0x1

.field static final TRANSACTION_getRotationUpOnce:I = 0x12

.field static final TRANSACTION_getScreenOnTime:I = 0x8

.field static final TRANSACTION_get_userMakeSleep:I = 0x13

.field static final TRANSACTION_goToSleep:I = 0x2

.field static final TRANSACTION_goToSleep_Virtual:I = 0xd

.field static final TRANSACTION_isScreenOffwhenCall:I = 0x15

.field static final TRANSACTION_is_screenIsOn:I = 0x14

.field static final TRANSACTION_preventScreenOn:I = 0x9

.field static final TRANSACTION_reboot:I = 0xc

.field static final TRANSACTION_releaseWakeLock:I = 0x3

.field static final TRANSACTION_setPokeLock:I = 0x6

.field static final TRANSACTION_setPreventALC:I = 0xf

.field static final TRANSACTION_setRotationUpOnce:I = 0x11

.field static final TRANSACTION_setScreenBrightnessOverride:I = 0xa

.field static final TRANSACTION_setStayOnSetting:I = 0x7

.field static final TRANSACTION_setVirtualSleepState:I = 0x10

.field static final TRANSACTION_shutdown:I = 0xb

.field static final TRANSACTION_userActivity:I = 0x4

.field static final TRANSACTION_userActivityWithForce:I = 0x5

.field static final TRANSACTION_userActivity_Virtual:I = 0xe


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
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
    const-string v1, "android.os.IPowerManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IPowerManager;

    if-eqz v1, :cond_14

    .line 30
    check-cast v0, Landroid/os/IPowerManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 32
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/os/IPowerManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 15
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
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v8, "android.os.IPowerManager"

    .line 40
    sparse-switch p1, :sswitch_data_1dc

    .line 246
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_b
    return v6

    .line 44
    :sswitch_c
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 45
    goto :goto_b

    .line 49
    :sswitch_13
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 55
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/IPowerManager$Stub;->acquireWakeLock(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 58
    goto :goto_b

    .line 62
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_2c
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 65
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/os/IPowerManager$Stub;->goToSleep(J)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 67
    goto :goto_b

    .line 71
    .end local v0           #_arg0:J
    :sswitch_3d
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 74
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->releaseWakeLock(Landroid/os/IBinder;)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 76
    goto :goto_b

    .line 80
    .end local v0           #_arg0:Landroid/os/IBinder;
    :sswitch_4e
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 84
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_66

    move v2, v7

    .line 85
    .local v2, _arg1:Z
    :goto_5e
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->userActivity(JZ)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 87
    goto :goto_b

    .end local v2           #_arg1:Z
    :cond_66
    move v2, v9

    .line 84
    goto :goto_5e

    .line 91
    .end local v0           #_arg0:J
    :sswitch_68
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 95
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_87

    move v2, v7

    .line 97
    .restart local v2       #_arg1:Z
    :goto_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_89

    move v3, v7

    .line 98
    .local v3, _arg2:Z
    :goto_7f
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->userActivityWithForce(JZZ)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 100
    goto :goto_b

    .end local v2           #_arg1:Z
    .end local v3           #_arg2:Z
    :cond_87
    move v2, v9

    .line 95
    goto :goto_78

    .restart local v2       #_arg1:Z
    :cond_89
    move v3, v9

    .line 97
    goto :goto_7f

    .line 104
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Z
    :sswitch_8b
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 110
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/IPowerManager$Stub;->setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 113
    goto/16 :goto_b

    .line 117
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_a5
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->setStayOnSetting(I)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 122
    goto/16 :goto_b

    .line 126
    .end local v0           #_arg0:I
    :sswitch_b7
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getScreenOnTime()J

    move-result-wide v4

    .line 128
    .local v4, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    move v6, v7

    .line 130
    goto/16 :goto_b

    .line 134
    .end local v4           #_result:J
    :sswitch_c9
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_de

    move v0, v7

    .line 137
    .local v0, _arg0:Z
    :goto_d5
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->preventScreenOn(Z)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 139
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_de
    move v0, v9

    .line 136
    goto :goto_d5

    .line 143
    :sswitch_e0
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->setScreenBrightnessOverride(I)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 148
    goto/16 :goto_b

    .line 152
    .end local v0           #_arg0:I
    :sswitch_f2
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->shutdown()V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 155
    goto/16 :goto_b

    .line 159
    :sswitch_100
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->reboot(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 164
    goto/16 :goto_b

    .line 168
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_112
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 171
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/os/IPowerManager$Stub;->goToSleep_Virtual(J)V

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 173
    goto/16 :goto_b

    .line 177
    .end local v0           #_arg0:J
    :sswitch_124
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 181
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13d

    move v2, v7

    .line 182
    .local v2, _arg1:Z
    :goto_134
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->userActivity_Virtual(JZ)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 184
    goto/16 :goto_b

    .end local v2           #_arg1:Z
    :cond_13d
    move v2, v9

    .line 181
    goto :goto_134

    .line 188
    .end local v0           #_arg0:J
    :sswitch_13f
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_154

    move v0, v7

    .line 191
    .local v0, _arg0:Z
    :goto_14b
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->setPreventALC(Z)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 193
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_154
    move v0, v9

    .line 190
    goto :goto_14b

    .line 197
    :sswitch_156
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->setVirtualSleepState(I)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 202
    goto/16 :goto_b

    .line 206
    .end local v0           #_arg0:I
    :sswitch_168
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17d

    move v0, v7

    .line 209
    .local v0, _arg0:Z
    :goto_174
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->setRotationUpOnce(Z)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 211
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_17d
    move v0, v9

    .line 208
    goto :goto_174

    .line 215
    :sswitch_17f
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getRotationUpOnce()Z

    move-result v4

    .line 217
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v4, :cond_194

    move v6, v7

    :goto_18e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 219
    goto/16 :goto_b

    :cond_194
    move v6, v9

    .line 218
    goto :goto_18e

    .line 223
    .end local v4           #_result:Z
    :sswitch_196
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->get_userMakeSleep()Z

    move-result v4

    .line 225
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    if-eqz v4, :cond_1ab

    move v6, v7

    :goto_1a5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 227
    goto/16 :goto_b

    :cond_1ab
    move v6, v9

    .line 226
    goto :goto_1a5

    .line 231
    .end local v4           #_result:Z
    :sswitch_1ad
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->is_screenIsOn()Z

    move-result v4

    .line 233
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    if-eqz v4, :cond_1c2

    move v6, v7

    :goto_1bc
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 235
    goto/16 :goto_b

    :cond_1c2
    move v6, v9

    .line 234
    goto :goto_1bc

    .line 239
    .end local v4           #_result:Z
    :sswitch_1c4
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isScreenOffwhenCall()Z

    move-result v4

    .line 241
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    if-eqz v4, :cond_1d9

    move v6, v7

    :goto_1d3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 243
    goto/16 :goto_b

    :cond_1d9
    move v6, v9

    .line 242
    goto :goto_1d3

    .line 40
    nop

    :sswitch_data_1dc
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_68
        0x6 -> :sswitch_8b
        0x7 -> :sswitch_a5
        0x8 -> :sswitch_b7
        0x9 -> :sswitch_c9
        0xa -> :sswitch_e0
        0xb -> :sswitch_f2
        0xc -> :sswitch_100
        0xd -> :sswitch_112
        0xe -> :sswitch_124
        0xf -> :sswitch_13f
        0x10 -> :sswitch_156
        0x11 -> :sswitch_168
        0x12 -> :sswitch_17f
        0x13 -> :sswitch_196
        0x14 -> :sswitch_1ad
        0x15 -> :sswitch_1c4
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
