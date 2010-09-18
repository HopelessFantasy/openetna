.class Landroid/location/IGeocodeProvider$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGeocodeProvider.java"

# interfaces
.implements Landroid/location/IGeocodeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGeocodeProvider$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .parameter "remote"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 122
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getFromLocation(DDILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 20
    .parameter "latitude"
    .parameter "longitude"
    .parameter "maxResults"
    .parameter "language"
    .parameter "country"
    .parameter "variant"
    .parameter "appName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    .local p10, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 134
    .local v3, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 137
    .local v4, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string v6, "android.location.IGeocodeProvider"

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 139
    invoke-virtual {v3, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 140
    invoke-virtual {v3, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    invoke-virtual {v3, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    move-object v0, v3

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    move-object v0, v3

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    move-object v0, v3

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v6, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {v6, v7, v3, v4, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 146
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 147
    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, _result:Ljava/lang/String;
    sget-object v6, Landroid/location/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p10

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_42
    .catchall {:try_start_8 .. :try_end_42} :catchall_49

    .line 151
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 154
    return-object v5

    .line 151
    .end local v5           #_result:Ljava/lang/String;
    :catchall_49
    move-exception v6

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v6
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 25
    .parameter "locationName"
    .parameter "lowerLeftLatitude"
    .parameter "lowerLeftLongitude"
    .parameter "upperRightLatitude"
    .parameter "upperRightLongitude"
    .parameter "maxResults"
    .parameter "language"
    .parameter "country"
    .parameter "variant"
    .parameter "appName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 158
    .local p15, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 159
    .local v3, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 162
    .local v4, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string v6, "android.location.IGeocodeProvider"

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v3, p2, p3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 165
    invoke-virtual {v3, p4, p5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 166
    move-object v0, v3

    move-wide v1, p6

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 167
    move-object v0, v3

    move-wide/from16 v1, p8

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 168
    move-object v0, v3

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    move-object v0, v3

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    move-object v0, v3

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    move-object v0, v3

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    move-object v0, v3

    move-object/from16 v1, p14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v6, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-interface {v6, v7, v3, v4, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 174
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 175
    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, _result:Ljava/lang/String;
    sget-object v6, Landroid/location/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v4

    move-object/from16 v1, p15

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_56
    .catchall {:try_start_8 .. :try_end_56} :catchall_5d

    .line 179
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 182
    return-object v5

    .line 179
    .end local v5           #_result:Ljava/lang/String;
    :catchall_5d
    move-exception v6

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v6
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    const-string v0, "android.location.IGeocodeProvider"

    return-object v0
.end method
