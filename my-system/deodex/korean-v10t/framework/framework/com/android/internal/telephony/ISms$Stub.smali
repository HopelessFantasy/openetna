.class public abstract Lcom/android/internal/telephony/ISms$Stub;
.super Landroid/os/Binder;
.source "ISms.java"

# interfaces
.implements Lcom/android/internal/telephony/ISms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISms$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISms"

.field static final TRANSACTION_broadcastActivation:I = 0x12

.field static final TRANSACTION_copyMessageToIccEf:I = 0x3

.field static final TRANSACTION_getAllMessagesFromIccEf:I = 0x1

.field static final TRANSACTION_getDeviceId:I = 0xc

.field static final TRANSACTION_getSimSerialNumber:I = 0xb

.field static final TRANSACTION_getSubscriberId:I = 0xa

.field static final TRANSACTION_readSCAddress:I = 0x9

.field static final TRANSACTION_readValidityPeriod:I = 0x8

.field static final TRANSACTION_sendMultipartText:I = 0x5

.field static final TRANSACTION_sendRawPdu:I = 0x4

.field static final TRANSACTION_sendRawPduSync:I = 0x11

.field static final TRANSACTION_setBroadcastConfig:I = 0x14

.field static final TRANSACTION_setGWDomainPref:I = 0x15

.field static final TRANSACTION_setMEMemoryFull:I = 0xe

.field static final TRANSACTION_setMultipartTextValidityPeriod:I = 0x6

.field static final TRANSACTION_setOTAMode:I = 0xd

.field static final TRANSACTION_setSendingMultiSMS:I = 0x10

.field static final TRANSACTION_updateCBMIToSim:I = 0x13

.field static final TRANSACTION_updateMessageOnIccEf:I = 0x2

.field static final TRANSACTION_updateSCAddress:I = 0xf

.field static final TRANSACTION_updateValidityPeriod:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;
    .registers 3
    .parameter "obj"

    .prologue
    .line 49
    if-nez p0, :cond_4

    .line 50
    const/4 v1, 0x0

    .line 56
    :goto_3
    return-object v1

    .line 52
    :cond_4
    const-string v1, "com.android.internal.telephony.ISms"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ISms;

    if-eqz v1, :cond_14

    .line 54
    check-cast v0, Lcom/android/internal/telephony/ISms;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 56
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ISms$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 60
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
    .line 64
    sparse-switch p1, :sswitch_data_26c

    .line 323
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 68
    :sswitch_8
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x1

    goto :goto_7

    .line 73
    :sswitch_f
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub;->getAllMessagesFromIccEf()Ljava/util/List;

    move-result-object v9

    .line 75
    .local v9, _result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 77
    const/4 v0, 0x1

    goto :goto_7

    .line 81
    .end local v9           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :sswitch_20
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 85
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 87
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 88
    .local v6, _arg2:[B
    invoke-virtual {p0, v1, v2, v6}, Lcom/android/internal/telephony/ISms$Stub;->updateMessageOnIccEf(II[B)Z

    move-result v8

    .line 89
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v8, :cond_40

    const/4 v0, 0x1

    :goto_3b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const/4 v0, 0x1

    goto :goto_7

    .line 90
    :cond_40
    const/4 v0, 0x0

    goto :goto_3b

    .line 95
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v6           #_arg2:[B
    .end local v8           #_result:Z
    :sswitch_42
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 99
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 101
    .local v2, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 102
    .restart local v6       #_arg2:[B
    invoke-virtual {p0, v1, v2, v6}, Lcom/android/internal/telephony/ISms$Stub;->copyMessageToIccEf(I[B[B)Z

    move-result v8

    .line 103
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v8, :cond_62

    const/4 v0, 0x1

    :goto_5d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v0, 0x1

    goto :goto_7

    .line 104
    :cond_62
    const/4 v0, 0x0

    goto :goto_5d

    .line 109
    .end local v1           #_arg0:I
    .end local v2           #_arg1:[B
    .end local v6           #_arg2:[B
    .end local v8           #_result:Z
    :sswitch_64
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 113
    .local v1, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 115
    .restart local v2       #_arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_96

    .line 116
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 122
    .local v6, _arg2:Landroid/app/PendingIntent;
    :goto_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_98

    .line 123
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 128
    .local v7, _arg3:Landroid/app/PendingIntent;
    :goto_8d
    invoke-virtual {p0, v1, v2, v6, v7}, Lcom/android/internal/telephony/ISms$Stub;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 119
    .end local v6           #_arg2:Landroid/app/PendingIntent;
    .end local v7           #_arg3:Landroid/app/PendingIntent;
    :cond_96
    const/4 v6, 0x0

    .restart local v6       #_arg2:Landroid/app/PendingIntent;
    goto :goto_7f

    .line 126
    :cond_98
    const/4 v7, 0x0

    .restart local v7       #_arg3:Landroid/app/PendingIntent;
    goto :goto_8d

    .line 134
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v6           #_arg2:Landroid/app/PendingIntent;
    .end local v7           #_arg3:Landroid/app/PendingIntent;
    :sswitch_9a
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 142
    .local v3, _arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    .line 144
    .local v4, _arg3:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    .local v5, _arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object v0, p0

    .line 145
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ISms$Stub;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 151
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #_arg3:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    .end local v5           #_arg4:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    :sswitch_c1
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 154
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISms$Stub;->setMultipartTextValidityPeriod(I)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 160
    .end local v1           #_arg0:I
    :sswitch_d3
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 163
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISms$Stub;->updateValidityPeriod(I)Z

    move-result v8

    .line 164
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v8, :cond_ec

    const/4 v0, 0x1

    :goto_e6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 165
    :cond_ec
    const/4 v0, 0x0

    goto :goto_e6

    .line 170
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_ee
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub;->readValidityPeriod()I

    move-result v8

    .line 172
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 178
    .end local v8           #_result:I
    :sswitch_100
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub;->readSCAddress()Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 186
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_112
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub;->getSubscriberId()Ljava/lang/String;

    move-result-object v8

    .line 188
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 194
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_124
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v8

    .line 196
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 202
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_136
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISms$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    .line 204
    .restart local v8       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 210
    .end local v8           #_result:Ljava/lang/String;
    :sswitch_148
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16c

    .line 215
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 220
    .local v2, _arg1:Landroid/os/Message;
    :goto_15f
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->setOTAMode(ILandroid/os/Message;)I

    move-result v8

    .line 221
    .local v8, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 218
    .end local v2           #_arg1:Landroid/os/Message;
    .end local v8           #_result:I
    :cond_16c
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/os/Message;
    goto :goto_15f

    .line 227
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/os/Message;
    :sswitch_16e
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 230
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISms$Stub;->setMEMemoryFull(I)Z

    move-result v8

    .line 231
    .local v8, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v8, :cond_187

    const/4 v0, 0x1

    :goto_181
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 232
    :cond_187
    const/4 v0, 0x0

    goto :goto_181

    .line 237
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_189
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISms$Stub;->updateSCAddress(Ljava/lang/String;)Z

    move-result v8

    .line 241
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    if-eqz v8, :cond_1a2

    const/4 v0, 0x1

    :goto_19c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 242
    :cond_1a2
    const/4 v0, 0x0

    goto :goto_19c

    .line 247
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v8           #_result:Z
    :sswitch_1a4
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c1

    const/4 v0, 0x1

    move v1, v0

    .line 250
    .local v1, _arg0:Z
    :goto_1b1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISms$Stub;->setSendingMultiSMS(Z)Z

    move-result v8

    .line 251
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    if-eqz v8, :cond_1c4

    const/4 v0, 0x1

    :goto_1bb
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 249
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :cond_1c1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1b1

    .line 252
    .restart local v1       #_arg0:Z
    .restart local v8       #_result:Z
    :cond_1c4
    const/4 v0, 0x0

    goto :goto_1bb

    .line 257
    .end local v1           #_arg0:Z
    .end local v8           #_result:Z
    :sswitch_1c6
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 261
    .local v1, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 263
    .local v2, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f8

    .line 264
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 270
    .restart local v6       #_arg2:Landroid/app/PendingIntent;
    :goto_1e1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1fa

    .line 271
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 276
    .restart local v7       #_arg3:Landroid/app/PendingIntent;
    :goto_1ef
    invoke-virtual {p0, v1, v2, v6, v7}, Lcom/android/internal/telephony/ISms$Stub;->sendRawPduSync([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 267
    .end local v6           #_arg2:Landroid/app/PendingIntent;
    .end local v7           #_arg3:Landroid/app/PendingIntent;
    :cond_1f8
    const/4 v6, 0x0

    .restart local v6       #_arg2:Landroid/app/PendingIntent;
    goto :goto_1e1

    .line 274
    :cond_1fa
    const/4 v7, 0x0

    .restart local v7       #_arg3:Landroid/app/PendingIntent;
    goto :goto_1ef

    .line 282
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v6           #_arg2:Landroid/app/PendingIntent;
    .end local v7           #_arg3:Landroid/app/PendingIntent;
    :sswitch_1fc
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 285
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISms$Stub;->broadcastActivation(I)Z

    move-result v8

    .line 286
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v8, :cond_215

    const/4 v0, 0x1

    :goto_20f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 287
    :cond_215
    const/4 v0, 0x0

    goto :goto_20f

    .line 292
    .end local v1           #_arg0:I
    .end local v8           #_result:Z
    :sswitch_217
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 295
    .local v1, _arg0:[B
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISms$Stub;->updateCBMIToSim([B)Z

    move-result v8

    .line 296
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    if-eqz v8, :cond_230

    const/4 v0, 0x1

    :goto_22a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 297
    :cond_230
    const/4 v0, 0x0

    goto :goto_22a

    .line 302
    .end local v1           #_arg0:[B
    .end local v8           #_result:Z
    :sswitch_232
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 306
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 307
    .local v2, _arg1:[I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/ISms$Stub;->setBroadcastConfig(I[I)Z

    move-result v8

    .line 308
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    if-eqz v8, :cond_24f

    const/4 v0, 0x1

    :goto_249
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 309
    :cond_24f
    const/4 v0, 0x0

    goto :goto_249

    .line 314
    .end local v1           #_arg0:I
    .end local v2           #_arg1:[I
    .end local v8           #_result:Z
    :sswitch_251
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 317
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ISms$Stub;->setGWDomainPref(I)Z

    move-result v8

    .line 318
    .restart local v8       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    if-eqz v8, :cond_26a

    const/4 v0, 0x1

    :goto_264
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 319
    :cond_26a
    const/4 v0, 0x0

    goto :goto_264

    .line 64
    :sswitch_data_26c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_20
        0x3 -> :sswitch_42
        0x4 -> :sswitch_64
        0x5 -> :sswitch_9a
        0x6 -> :sswitch_c1
        0x7 -> :sswitch_d3
        0x8 -> :sswitch_ee
        0x9 -> :sswitch_100
        0xa -> :sswitch_112
        0xb -> :sswitch_124
        0xc -> :sswitch_136
        0xd -> :sswitch_148
        0xe -> :sswitch_16e
        0xf -> :sswitch_189
        0x10 -> :sswitch_1a4
        0x11 -> :sswitch_1c6
        0x12 -> :sswitch_1fc
        0x13 -> :sswitch_217
        0x14 -> :sswitch_232
        0x15 -> :sswitch_251
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
