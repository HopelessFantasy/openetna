.class public abstract Landroid/location/ILocationManager$Stub;
.super Landroid/os/Binder;
.source "ILocationManager.java"

# interfaces
.implements Landroid/location/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationManager"

.field static final TRANSACTION_addGpsStatusListener:I = 0x7

.field static final TRANSACTION_addProximityAlert:I = 0xb

.field static final TRANSACTION_addTestProvider:I = 0x13

.field static final TRANSACTION_clearTestProviderEnabled:I = 0x18

.field static final TRANSACTION_clearTestProviderLocation:I = 0x16

.field static final TRANSACTION_clearTestProviderStatus:I = 0x1a

.field static final TRANSACTION_getAllProviders:I = 0x1

.field static final TRANSACTION_getFromLocation:I = 0x11

.field static final TRANSACTION_getFromLocationName:I = 0x12

.field static final TRANSACTION_getLastKnownLocation:I = 0xf

.field static final TRANSACTION_getPositionMode:I = 0x1e

.field static final TRANSACTION_getProviderInfo:I = 0xd

.field static final TRANSACTION_getProviders:I = 0x2

.field static final TRANSACTION_getSlpMode:I = 0x24

.field static final TRANSACTION_getSuplAddress:I = 0x22

.field static final TRANSACTION_getSuplPort:I = 0x23

.field static final TRANSACTION_injectTime:I = 0x29

.field static final TRANSACTION_injectXtraData:I = 0x2b

.field static final TRANSACTION_installGeocodeProvider:I = 0x1c

.field static final TRANSACTION_installLocationProvider:I = 0x1b

.field static final TRANSACTION_isProviderEnabled:I = 0xe

.field static final TRANSACTION_locationCallbackFinished:I = 0x9

.field static final TRANSACTION_removeGpsStatusListener:I = 0x8

.field static final TRANSACTION_removeProximityAlert:I = 0xc

.field static final TRANSACTION_removeTestProvider:I = 0x14

.field static final TRANSACTION_removeUpdates:I = 0x5

.field static final TRANSACTION_removeUpdatesPI:I = 0x6

.field static final TRANSACTION_reportLocation:I = 0x10

.field static final TRANSACTION_requestLocationUpdates:I = 0x3

.field static final TRANSACTION_requestLocationUpdatesPI:I = 0x4

.field static final TRANSACTION_sendExtraCommand:I = 0xa

.field static final TRANSACTION_sendNiResponse:I = 0x1d

.field static final TRANSACTION_setPositionMode:I = 0x1f

.field static final TRANSACTION_setSlpMode:I = 0x27

.field static final TRANSACTION_setSuplAddress:I = 0x25

.field static final TRANSACTION_setSuplAuto:I = 0x28

.field static final TRANSACTION_setSuplPort:I = 0x26

.field static final TRANSACTION_setTestProviderEnabled:I = 0x17

.field static final TRANSACTION_setTestProviderLocation:I = 0x15

.field static final TRANSACTION_setTestProviderStatus:I = 0x19

.field static final TRANSACTION_singleFixTest:I = 0x21

.field static final TRANSACTION_startAirTest:I = 0x20

.field static final TRANSACTION_supportsXtra:I = 0x2a

.field static final TRANSACTION_xtraDownloadRequest:I = 0x2c


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "android.location.ILocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 38
    if-nez p0, :cond_4

    .line 39
    const/4 v1, 0x0

    .line 45
    :goto_3
    return-object v1

    .line 41
    :cond_4
    const-string v1, "android.location.ILocationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/location/ILocationManager;

    if-eqz v1, :cond_14

    .line 43
    check-cast v0, Landroid/location/ILocationManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 45
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Landroid/location/ILocationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ILocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 49
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 63
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
    .line 53
    sparse-switch p1, :sswitch_data_6b2

    .line 615
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_7
    return v4

    .line 57
    :sswitch_8
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    const/4 v4, 0x1

    goto :goto_7

    .line 62
    :sswitch_12
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getAllProviders()Ljava/util/List;

    move-result-object v57

    .line 64
    .local v57, _result:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 66
    const/4 v4, 0x1

    goto :goto_7

    .line 70
    .end local v57           #_result:Ljava/util/List;
    :sswitch_2a
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4d

    const/4 v4, 0x1

    move v5, v4

    .line 73
    .local v5, _arg0:Z
    :goto_3a
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->getProviders(Z)Ljava/util/List;

    move-result-object v57

    .line 74
    .restart local v57       #_result:Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 76
    const/4 v4, 0x1

    goto :goto_7

    .line 72
    .end local v5           #_arg0:Z
    .end local v57           #_result:Ljava/util/List;
    :cond_4d
    const/4 v4, 0x0

    move v5, v4

    goto :goto_3a

    .line 80
    :sswitch_50
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 84
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 86
    .local v6, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 88
    .local v8, _arg2:F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v9

    .local v9, _arg3:Landroid/location/ILocationListener;
    move-object/from16 v4, p0

    .line 89
    invoke-virtual/range {v4 .. v9}, Landroid/location/ILocationManager$Stub;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/ILocationListener;)V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    const/4 v4, 0x1

    goto :goto_7

    .line 95
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:J
    .end local v8           #_arg2:F
    .end local v9           #_arg3:Landroid/location/ILocationListener;
    :sswitch_76
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 99
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 101
    .restart local v6       #_arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 103
    .restart local v8       #_arg2:F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a6

    .line 104
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/PendingIntent;

    .local v9, _arg3:Landroid/app/PendingIntent;
    :goto_9b
    move-object/from16 v4, p0

    .line 109
    invoke-virtual/range {v4 .. v9}, Landroid/location/ILocationManager$Stub;->requestLocationUpdatesPI(Ljava/lang/String;JFLandroid/app/PendingIntent;)V

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 107
    .end local v9           #_arg3:Landroid/app/PendingIntent;
    :cond_a6
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/app/PendingIntent;
    goto :goto_9b

    .line 115
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:J
    .end local v8           #_arg2:F
    .end local v9           #_arg3:Landroid/app/PendingIntent;
    :sswitch_a8
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v5

    .line 118
    .local v5, _arg0:Landroid/location/ILocationListener;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeUpdates(Landroid/location/ILocationListener;)V

    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 124
    .end local v5           #_arg0:Landroid/location/ILocationListener;
    :sswitch_c4
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e9

    .line 127
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 132
    .local v5, _arg0:Landroid/app/PendingIntent;
    :goto_dd
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeUpdatesPI(Landroid/app/PendingIntent;)V

    .line 133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 130
    .end local v5           #_arg0:Landroid/app/PendingIntent;
    :cond_e9
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/app/PendingIntent;
    goto :goto_dd

    .line 138
    .end local v5           #_arg0:Landroid/app/PendingIntent;
    :sswitch_eb
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    move-result-object v5

    .line 141
    .local v5, _arg0:Landroid/location/IGpsStatusListener;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z

    move-result v57

    .line 142
    .local v57, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v57, :cond_111

    const/4 v4, 0x1

    :goto_108
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 143
    :cond_111
    const/4 v4, 0x0

    goto :goto_108

    .line 148
    .end local v5           #_arg0:Landroid/location/IGpsStatusListener;
    .end local v57           #_result:Z
    :sswitch_113
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/location/IGpsStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsStatusListener;

    move-result-object v5

    .line 151
    .restart local v5       #_arg0:Landroid/location/IGpsStatusListener;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 157
    .end local v5           #_arg0:Landroid/location/IGpsStatusListener;
    :sswitch_12f
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v5

    .line 160
    .local v5, _arg0:Landroid/location/ILocationListener;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->locationCallbackFinished(Landroid/location/ILocationListener;)V

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 166
    .end local v5           #_arg0:Landroid/location/ILocationListener;
    :sswitch_14b
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_195

    .line 173
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 178
    .local v8, _arg2:Landroid/os/Bundle;
    :goto_16c
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v57

    .line 179
    .restart local v57       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    if-eqz v57, :cond_197

    const/4 v4, 0x1

    :goto_17b
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    if-eqz v8, :cond_199

    .line 182
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    const/4 v4, 0x1

    move-object v0, v8

    move-object/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 188
    :goto_192
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 176
    .end local v8           #_arg2:Landroid/os/Bundle;
    .end local v57           #_result:Z
    :cond_195
    const/4 v8, 0x0

    .restart local v8       #_arg2:Landroid/os/Bundle;
    goto :goto_16c

    .line 180
    .restart local v57       #_result:Z
    :cond_197
    const/4 v4, 0x0

    goto :goto_17b

    .line 186
    :cond_199
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_192

    .line 192
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Landroid/os/Bundle;
    .end local v57           #_result:Z
    :sswitch_1a1
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v11

    .line 196
    .local v11, _arg0:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 198
    .local v6, _arg1:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 200
    .local v8, _arg2:F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 202
    .local v16, _arg3:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d7

    .line 203
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/PendingIntent;

    .local v18, _arg4:Landroid/app/PendingIntent;
    :goto_1ca
    move-object/from16 v10, p0

    move-wide v13, v6

    move v15, v8

    .line 208
    invoke-virtual/range {v10 .. v18}, Landroid/location/ILocationManager$Stub;->addProximityAlert(DDFJLandroid/app/PendingIntent;)V

    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 206
    .end local v18           #_arg4:Landroid/app/PendingIntent;
    :cond_1d7
    const/16 v18, 0x0

    .restart local v18       #_arg4:Landroid/app/PendingIntent;
    goto :goto_1ca

    .line 214
    .end local v6           #_arg1:D
    .end local v8           #_arg2:F
    .end local v11           #_arg0:D
    .end local v16           #_arg3:J
    .end local v18           #_arg4:Landroid/app/PendingIntent;
    :sswitch_1da
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1ff

    .line 217
    sget-object v4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    .line 222
    .local v5, _arg0:Landroid/app/PendingIntent;
    :goto_1f3
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeProximityAlert(Landroid/app/PendingIntent;)V

    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 220
    .end local v5           #_arg0:Landroid/app/PendingIntent;
    :cond_1ff
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/app/PendingIntent;
    goto :goto_1f3

    .line 228
    .end local v5           #_arg0:Landroid/app/PendingIntent;
    :sswitch_201
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v57

    .line 232
    .local v57, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v57, :cond_22c

    .line 234
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    const/4 v4, 0x1

    move-object/from16 v0, v57

    move-object/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 240
    :goto_229
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 238
    :cond_22c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_229

    .line 244
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v57           #_result:Landroid/os/Bundle;
    :sswitch_234
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 247
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v57

    .line 248
    .local v57, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v57, :cond_256

    const/4 v4, 0x1

    :goto_24d
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 249
    :cond_256
    const/4 v4, 0x0

    goto :goto_24d

    .line 254
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v57           #_result:Z
    :sswitch_258
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 257
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v57

    .line 258
    .local v57, _result:Landroid/location/Location;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    if-eqz v57, :cond_283

    .line 260
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    const/4 v4, 0x1

    move-object/from16 v0, v57

    move-object/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    .line 266
    :goto_280
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 264
    :cond_283
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_280

    .line 270
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v57           #_result:Landroid/location/Location;
    :sswitch_28b
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2b0

    .line 273
    sget-object v4, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    .line 278
    .local v5, _arg0:Landroid/location/Location;
    :goto_2a4
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->reportLocation(Landroid/location/Location;)V

    .line 279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 276
    .end local v5           #_arg0:Landroid/location/Location;
    :cond_2b0
    const/4 v5, 0x0

    .restart local v5       #_arg0:Landroid/location/Location;
    goto :goto_2a4

    .line 284
    .end local v5           #_arg0:Landroid/location/Location;
    :sswitch_2b2
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v11

    .line 288
    .restart local v11       #_arg0:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 290
    .restart local v6       #_arg1:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 292
    .local v8, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 294
    .local v9, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 296
    .local v18, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 298
    .local v27, _arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 300
    .local v28, _arg6:Ljava/lang/String;
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .local v29, _arg7:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v19, p0

    move-wide/from16 v20, v11

    move-wide/from16 v22, v6

    move/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v18

    .line 301
    invoke-virtual/range {v19 .. v29}, Landroid/location/ILocationManager$Stub;->getFromLocation(DDILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v57

    .line 302
    .local v57, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 305
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 309
    .end local v6           #_arg1:D
    .end local v8           #_arg2:I
    .end local v9           #_arg3:Ljava/lang/String;
    .end local v11           #_arg0:D
    .end local v18           #_arg4:Ljava/lang/String;
    .end local v27           #_arg5:Ljava/lang/String;
    .end local v28           #_arg6:Ljava/lang/String;
    .end local v29           #_arg7:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v57           #_result:Ljava/lang/String;
    :sswitch_2ff
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 315
    .restart local v6       #_arg1:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v34

    .line 317
    .local v34, _arg2:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v16

    .line 319
    .local v16, _arg3:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v38

    .line 321
    .local v38, _arg4:D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 323
    .local v27, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 325
    .restart local v28       #_arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v42

    .line 327
    .local v42, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 329
    .local v43, _arg8:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 331
    .local v44, _arg9:Ljava/lang/String;
    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    .local v45, _arg10:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v30, p0

    move-object/from16 v31, v5

    move-wide/from16 v32, v6

    move-wide/from16 v36, v16

    move/from16 v40, v27

    move-object/from16 v41, v28

    .line 332
    invoke-virtual/range {v30 .. v45}, Landroid/location/ILocationManager$Stub;->getFromLocationName(Ljava/lang/String;DDDDILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v57

    .line 333
    .restart local v57       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    move-object/from16 v0, p3

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 336
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 340
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:D
    .end local v16           #_arg3:D
    .end local v27           #_arg5:I
    .end local v28           #_arg6:Ljava/lang/String;
    .end local v34           #_arg2:D
    .end local v38           #_arg4:D
    .end local v42           #_arg7:Ljava/lang/String;
    .end local v43           #_arg8:Ljava/lang/String;
    .end local v44           #_arg9:Ljava/lang/String;
    .end local v45           #_arg10:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v57           #_result:Ljava/lang/String;
    :sswitch_358
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 344
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c7

    const/4 v4, 0x1

    move v6, v4

    .line 346
    .local v6, _arg1:Z
    :goto_36c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3ca

    const/4 v4, 0x1

    move v8, v4

    .line 348
    .local v8, _arg2:Z
    :goto_374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3cd

    const/4 v4, 0x1

    move v9, v4

    .line 350
    .local v9, _arg3:Z
    :goto_37c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d0

    const/4 v4, 0x1

    move/from16 v18, v4

    .line 352
    .local v18, _arg4:Z
    :goto_385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d4

    const/4 v4, 0x1

    move/from16 v27, v4

    .line 354
    .local v27, _arg5:Z
    :goto_38e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d8

    const/4 v4, 0x1

    move/from16 v28, v4

    .line 356
    .local v28, _arg6:Z
    :goto_397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3dc

    const/4 v4, 0x1

    move/from16 v42, v4

    .line 358
    .local v42, _arg7:Z
    :goto_3a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 360
    .local v43, _arg8:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    .local v44, _arg9:I
    move-object/from16 v46, p0

    move-object/from16 v47, v5

    move/from16 v48, v6

    move/from16 v49, v8

    move/from16 v50, v9

    move/from16 v51, v18

    move/from16 v52, v27

    move/from16 v53, v28

    move/from16 v54, v42

    move/from16 v55, v43

    move/from16 v56, v44

    .line 361
    invoke-virtual/range {v46 .. v56}, Landroid/location/ILocationManager$Stub;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V

    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 344
    .end local v6           #_arg1:Z
    .end local v8           #_arg2:Z
    .end local v9           #_arg3:Z
    .end local v18           #_arg4:Z
    .end local v27           #_arg5:Z
    .end local v28           #_arg6:Z
    .end local v42           #_arg7:Z
    .end local v43           #_arg8:I
    .end local v44           #_arg9:I
    :cond_3c7
    const/4 v4, 0x0

    move v6, v4

    goto :goto_36c

    .line 346
    .restart local v6       #_arg1:Z
    :cond_3ca
    const/4 v4, 0x0

    move v8, v4

    goto :goto_374

    .line 348
    .restart local v8       #_arg2:Z
    :cond_3cd
    const/4 v4, 0x0

    move v9, v4

    goto :goto_37c

    .line 350
    .restart local v9       #_arg3:Z
    :cond_3d0
    const/4 v4, 0x0

    move/from16 v18, v4

    goto :goto_385

    .line 352
    .restart local v18       #_arg4:Z
    :cond_3d4
    const/4 v4, 0x0

    move/from16 v27, v4

    goto :goto_38e

    .line 354
    .restart local v27       #_arg5:Z
    :cond_3d8
    const/4 v4, 0x0

    move/from16 v28, v4

    goto :goto_397

    .line 356
    .restart local v28       #_arg6:Z
    :cond_3dc
    const/4 v4, 0x0

    move/from16 v42, v4

    goto :goto_3a0

    .line 367
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Z
    .end local v8           #_arg2:Z
    .end local v9           #_arg3:Z
    .end local v18           #_arg4:Z
    .end local v27           #_arg5:Z
    .end local v28           #_arg6:Z
    :sswitch_3e0
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 370
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->removeTestProvider(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 376
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_3f8
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 380
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_422

    .line 381
    sget-object v4, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Location;

    .line 386
    .local v6, _arg1:Landroid/location/Location;
    :goto_415
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V

    .line 387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 384
    .end local v6           #_arg1:Landroid/location/Location;
    :cond_422
    const/4 v6, 0x0

    .restart local v6       #_arg1:Landroid/location/Location;
    goto :goto_415

    .line 392
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Landroid/location/Location;
    :sswitch_424
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 395
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->clearTestProviderLocation(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 401
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_43c
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 405
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_45d

    const/4 v4, 0x1

    move v6, v4

    .line 406
    .local v6, _arg1:Z
    :goto_450
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 405
    .end local v6           #_arg1:Z
    :cond_45d
    const/4 v4, 0x0

    move v6, v4

    goto :goto_450

    .line 412
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_460
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 415
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->clearTestProviderEnabled(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 421
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_478
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 425
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 427
    .local v6, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4b0

    .line 428
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 434
    .local v8, _arg2:Landroid/os/Bundle;
    :goto_499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .local v16, _arg3:J
    move-object/from16 v19, p0

    move-object/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v22, v8

    move-wide/from16 v23, v16

    .line 435
    invoke-virtual/range {v19 .. v24}, Landroid/location/ILocationManager$Stub;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 431
    .end local v8           #_arg2:Landroid/os/Bundle;
    .end local v16           #_arg3:J
    :cond_4b0
    const/4 v8, 0x0

    .restart local v8       #_arg2:Landroid/os/Bundle;
    goto :goto_499

    .line 441
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:I
    .end local v8           #_arg2:Landroid/os/Bundle;
    :sswitch_4b2
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 444
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->clearTestProviderStatus(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 450
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_4ca
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 454
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationProvider;

    move-result-object v6

    .line 455
    .local v6, _arg1:Landroid/location/ILocationProvider;
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->installLocationProvider(Ljava/lang/String;Landroid/location/ILocationProvider;)V

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 461
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Landroid/location/ILocationProvider;
    :sswitch_4eb
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/location/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;

    move-result-object v5

    .line 464
    .local v5, _arg0:Landroid/location/IGeocodeProvider;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->installGeocodeProvider(Landroid/location/IGeocodeProvider;)V

    .line 465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 470
    .end local v5           #_arg0:Landroid/location/IGeocodeProvider;
    :sswitch_507
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 474
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 475
    .local v6, _arg1:I
    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->sendNiResponse(II)Z

    move-result v57

    .line 476
    .local v57, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    if-eqz v57, :cond_52e

    const/4 v4, 0x1

    :goto_525
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 477
    :cond_52e
    const/4 v4, 0x0

    goto :goto_525

    .line 482
    .end local v5           #_arg0:I
    .end local v6           #_arg1:I
    .end local v57           #_result:Z
    :sswitch_530
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getPositionMode()I

    move-result v57

    .line 484
    .local v57, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 490
    .end local v57           #_result:I
    :sswitch_549
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 493
    .restart local v5       #_arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->setPositionMode(I)V

    .line 494
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 499
    .end local v5           #_arg0:I
    :sswitch_561
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 503
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 504
    .restart local v6       #_arg1:I
    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->startAirTest(II)Z

    move-result v57

    .line 505
    .local v57, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    if-eqz v57, :cond_588

    const/4 v4, 0x1

    :goto_57f
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 506
    :cond_588
    const/4 v4, 0x0

    goto :goto_57f

    .line 511
    .end local v5           #_arg0:I
    .end local v6           #_arg1:I
    .end local v57           #_result:Z
    :sswitch_58a
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->singleFixTest()V

    .line 513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 518
    :sswitch_59b
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getSuplAddress()Ljava/lang/String;

    move-result-object v57

    .line 520
    .local v57, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 522
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 526
    .end local v57           #_result:Ljava/lang/String;
    :sswitch_5b4
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getSuplPort()I

    move-result v57

    .line 528
    .local v57, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 534
    .end local v57           #_result:I
    :sswitch_5cd
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getSlpMode()I

    move-result v57

    .line 536
    .restart local v57       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    move-object/from16 v0, p3

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 542
    .end local v57           #_result:I
    :sswitch_5e6
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 545
    .local v5, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->setSuplAddress(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 551
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_5fe
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 554
    .local v5, _arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->setSuplPort(I)V

    .line 555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 560
    .end local v5           #_arg0:I
    :sswitch_616
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 563
    .restart local v5       #_arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/location/ILocationManager$Stub;->setSlpMode(I)V

    .line 564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 569
    .end local v5           #_arg0:I
    :sswitch_62e
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->setSuplAuto()V

    .line 571
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 576
    :sswitch_63f
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 580
    .local v11, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 582
    .local v6, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, _arg2:I
    move-object/from16 v10, p0

    move-wide v13, v6

    move v15, v8

    .line 583
    invoke-virtual/range {v10 .. v15}, Landroid/location/ILocationManager$Stub;->injectTime(JJI)V

    .line 584
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 589
    .end local v6           #_arg1:J
    .end local v8           #_arg2:I
    .end local v11           #_arg0:J
    :sswitch_660
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->supportsXtra()Z

    move-result v57

    .line 591
    .local v57, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    if-eqz v57, :cond_67b

    const/4 v4, 0x1

    :goto_672
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 593
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 592
    :cond_67b
    const/4 v4, 0x0

    goto :goto_672

    .line 597
    .end local v57           #_result:Z
    :sswitch_67d
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 601
    .local v5, _arg0:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 602
    .local v6, _arg1:I
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/location/ILocationManager$Stub;->injectXtraData([BI)V

    .line 603
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 605
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 609
    .end local v5           #_arg0:[B
    .end local v6           #_arg1:I
    :sswitch_6a0
    const-string v4, "android.location.ILocationManager"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->xtraDownloadRequest()V

    .line 611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 53
    nop

    :sswitch_data_6b2
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_50
        0x4 -> :sswitch_76
        0x5 -> :sswitch_a8
        0x6 -> :sswitch_c4
        0x7 -> :sswitch_eb
        0x8 -> :sswitch_113
        0x9 -> :sswitch_12f
        0xa -> :sswitch_14b
        0xb -> :sswitch_1a1
        0xc -> :sswitch_1da
        0xd -> :sswitch_201
        0xe -> :sswitch_234
        0xf -> :sswitch_258
        0x10 -> :sswitch_28b
        0x11 -> :sswitch_2b2
        0x12 -> :sswitch_2ff
        0x13 -> :sswitch_358
        0x14 -> :sswitch_3e0
        0x15 -> :sswitch_3f8
        0x16 -> :sswitch_424
        0x17 -> :sswitch_43c
        0x18 -> :sswitch_460
        0x19 -> :sswitch_478
        0x1a -> :sswitch_4b2
        0x1b -> :sswitch_4ca
        0x1c -> :sswitch_4eb
        0x1d -> :sswitch_507
        0x1e -> :sswitch_530
        0x1f -> :sswitch_549
        0x20 -> :sswitch_561
        0x21 -> :sswitch_58a
        0x22 -> :sswitch_59b
        0x23 -> :sswitch_5b4
        0x24 -> :sswitch_5cd
        0x25 -> :sswitch_5e6
        0x26 -> :sswitch_5fe
        0x27 -> :sswitch_616
        0x28 -> :sswitch_62e
        0x29 -> :sswitch_63f
        0x2a -> :sswitch_660
        0x2b -> :sswitch_67d
        0x2c -> :sswitch_6a0
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
