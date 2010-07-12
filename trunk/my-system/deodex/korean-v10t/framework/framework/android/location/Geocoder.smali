.class public final Landroid/location/Geocoder;
.super Ljava/lang/Object;
.source "Geocoder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Geocoder"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private mService:Landroid/location/ILocationManager;

.field private mVariant:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 83
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 6
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-nez p2, :cond_d

    .line 65
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "locale == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_d
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/location/Geocoder;->mLanguage:Ljava/lang/String;

    .line 68
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/location/Geocoder;->mCountry:Ljava/lang/String;

    .line 69
    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/location/Geocoder;->mVariant:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/location/Geocoder;->mAppName:Ljava/lang/String;

    .line 72
    const-string v1, "location"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 73
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    iput-object v1, p0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    .line 74
    return-void
.end method


# virtual methods
.method public getFromLocation(DDI)Ljava/util/List;
    .registers 22
    .parameter "latitude"
    .parameter "longitude"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const-wide v3, -0x3fa9800000000000L

    cmpg-double v3, p1, v3

    if-ltz v3, :cond_12

    const-wide v3, 0x4056800000000000L

    cmpl-double v3, p1, v3

    if-lez v3, :cond_2e

    .line 114
    :cond_12
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "latitude == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 116
    :cond_2e
    const-wide v3, -0x3f99800000000000L

    cmpg-double v3, p3, v3

    if-ltz v3, :cond_40

    const-wide v3, 0x4066800000000000L

    cmpl-double v3, p3, v3

    if-lez v3, :cond_5c

    .line 117
    :cond_40
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "longitude == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 120
    :cond_5c
    :try_start_5c
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v13, results:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mLanguage:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mCountry:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mVariant:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mAppName:Ljava/lang/String;

    move-object v12, v0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    invoke-interface/range {v3 .. v13}, Landroid/location/ILocationManager;->getFromLocation(DDILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 123
    .local v15, ex:Ljava/lang/String;
    if-eqz v15, :cond_97

    .line 124
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_8c} :catch_8c

    .line 128
    .end local v13           #results:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v15           #ex:Ljava/lang/String;
    :catch_8c
    move-exception v3

    move-object v14, v3

    .line 129
    .local v14, e:Landroid/os/RemoteException;
    const-string v3, "Geocoder"

    const-string v4, "getFromLocation: got RemoteException"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    const/4 v3, 0x0

    .end local v14           #e:Landroid/os/RemoteException;
    :goto_96
    return-object v3

    .restart local v13       #results:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .restart local v15       #ex:Ljava/lang/String;
    :cond_97
    move-object v3, v13

    .line 126
    goto :goto_96
.end method

.method public getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    .registers 24
    .parameter "locationName"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    if-nez p1, :cond_a

    .line 159
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "locationName == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    :cond_a
    :try_start_a
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v18, results:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    move-object v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mLanguage:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mCountry:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mVariant:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mAppName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v4, p1

    move/from16 v13, p2

    invoke-interface/range {v3 .. v18}, Landroid/location/ILocationManager;->getFromLocationName(Ljava/lang/String;DDDDILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    .line 165
    .local v20, ex:Ljava/lang/String;
    if-eqz v20, :cond_55

    .line 166
    new-instance v3, Ljava/io/IOException;

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_45} :catch_45

    .line 170
    .end local v18           #results:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v20           #ex:Ljava/lang/String;
    :catch_45
    move-exception v3

    move-object/from16 v19, v3

    .line 171
    .local v19, e:Landroid/os/RemoteException;
    const-string v3, "Geocoder"

    const-string v4, "getFromLocationName: got RemoteException"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    const/4 v3, 0x0

    .end local v19           #e:Landroid/os/RemoteException;
    :goto_54
    return-object v3

    .restart local v18       #results:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .restart local v20       #ex:Ljava/lang/String;
    :cond_55
    move-object/from16 v3, v18

    .line 168
    goto :goto_54
.end method

.method public getFromLocationName(Ljava/lang/String;IDDDD)Ljava/util/List;
    .registers 32
    .parameter "locationName"
    .parameter "maxResults"
    .parameter "lowerLeftLatitude"
    .parameter "lowerLeftLongitude"
    .parameter "upperRightLatitude"
    .parameter "upperRightLongitude"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IDDDD)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    if-nez p1, :cond_a

    .line 215
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "locationName == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 217
    :cond_a
    const-wide v3, -0x3fa9800000000000L

    cmpg-double v3, p3, v3

    if-ltz v3, :cond_1c

    const-wide v3, 0x4056800000000000L

    cmpl-double v3, p3, v3

    if-lez v3, :cond_38

    .line 218
    :cond_1c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lowerLeftLatitude == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 221
    :cond_38
    const-wide v3, -0x3f99800000000000L

    cmpg-double v3, p5, v3

    if-ltz v3, :cond_4a

    const-wide v3, 0x4066800000000000L

    cmpl-double v3, p5, v3

    if-lez v3, :cond_66

    .line 222
    :cond_4a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lowerLeftLongitude == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 225
    :cond_66
    const-wide v3, -0x3fa9800000000000L

    cmpg-double v3, p7, v3

    if-ltz v3, :cond_78

    const-wide v3, 0x4056800000000000L

    cmpl-double v3, p7, v3

    if-lez v3, :cond_94

    .line 226
    :cond_78
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upperRightLatitude == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 229
    :cond_94
    const-wide v3, -0x3f99800000000000L

    cmpg-double v3, p9, v3

    if-ltz v3, :cond_a6

    const-wide v3, 0x4066800000000000L

    cmpl-double v3, p9, v3

    if-lez v3, :cond_c2

    .line 230
    :cond_a6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upperRightLongitude == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 234
    :cond_c2
    :try_start_c2
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v18, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/location/Address;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mService:Landroid/location/ILocationManager;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mLanguage:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mCountry:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mVariant:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/location/Geocoder;->mAppName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v4, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move/from16 v13, p2

    invoke-interface/range {v3 .. v18}, Landroid/location/ILocationManager;->getFromLocationName(Ljava/lang/String;DDDDILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    .line 238
    .local v20, ex:Ljava/lang/String;
    if-eqz v20, :cond_10d

    .line 239
    new-instance v3, Ljava/io/IOException;

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_fd
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_fd} :catch_fd

    .line 243
    .end local v18           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/location/Address;>;"
    .end local v20           #ex:Ljava/lang/String;
    :catch_fd
    move-exception v3

    move-object/from16 v19, v3

    .line 244
    .local v19, e:Landroid/os/RemoteException;
    const-string v3, "Geocoder"

    const-string v4, "getFromLocationName: got RemoteException"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    const/4 v3, 0x0

    .end local v19           #e:Landroid/os/RemoteException;
    :goto_10c
    return-object v3

    .restart local v18       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/location/Address;>;"
    .restart local v20       #ex:Ljava/lang/String;
    :cond_10d
    move-object/from16 v3, v18

    .line 241
    goto :goto_10c
.end method
