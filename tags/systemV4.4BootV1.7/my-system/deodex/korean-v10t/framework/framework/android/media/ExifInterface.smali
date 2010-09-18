.class public Landroid/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# static fields
.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_DATE_TIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final WHITEBALANCE_AUTO:I = 0x0

.field public static final WHITEBALANCE_MANUAL:I = 0x1

.field private static sExifObj:Landroid/media/ExifInterface;


# instance fields
.field private mCachedAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private mSavedAttributes:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const-string v0, "exif"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    sput-object v0, Landroid/media/ExifInterface;->sExifObj:Landroid/media/ExifInterface;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v0, p0, Landroid/media/ExifInterface;->mSavedAttributes:Z

    .line 77
    iput-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/ExifInterface;->mCachedAttributes:Ljava/util/HashMap;

    return-void
.end method

.method private native appendThumbnailNative(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native commitChangesNative(Ljava/lang/String;)V
.end method

.method public static convertRationalLatLonToDecimalString(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8
    .parameter "rationalString"
    .parameter "ref"
    .parameter "usePositiveNegative"

    .prologue
    .line 370
    invoke-static {p0, p1}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    .line 372
    .local v2, result:F
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, preliminaryResult:Ljava/lang/String;
    if-eqz p2, :cond_33

    .line 374
    const-string v3, "S"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string v3, "E"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    :cond_1a
    const-string v3, "-"

    move-object v0, v3

    .line 375
    .local v0, neg:Ljava/lang/String;
    :goto_1d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 377
    .end local v0           #neg:Ljava/lang/String;
    :goto_2e
    return-object v3

    .line 374
    :cond_2f
    const-string v3, ""

    move-object v0, v3

    goto :goto_1d

    .line 377
    :cond_33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xba

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2e
.end method

.method public static convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .registers 12
    .parameter "rationalString"
    .parameter "ref"

    .prologue
    const-string v7, "/"

    .line 341
    :try_start_2
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, parts:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v4, v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, pair:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v0, v7

    .line 348
    .local v0, degrees:I
    const/4 v7, 0x1

    aget-object v7, v4, v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 349
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v2, v7

    .line 352
    .local v2, minutes:I
    const/4 v7, 0x2

    aget-object v7, v4, v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 353
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    div-float v6, v7, v8

    .line 356
    .local v6, seconds:F
    int-to-float v7, v0

    int-to-float v8, v2

    const/high16 v9, 0x4270

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    const/high16 v8, 0x4561

    div-float v8, v6, v8

    add-float v5, v7, v8

    .line 357
    .local v5, result:F
    const-string v7, "S"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_87

    const-string v7, "W"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_84
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_84} :catch_8b

    move-result v7

    if-eqz v7, :cond_89

    .line 358
    :cond_87
    neg-float v7, v5

    .line 364
    .end local v0           #degrees:I
    .end local v2           #minutes:I
    .end local v3           #pair:[Ljava/lang/String;
    .end local v4           #parts:[Ljava/lang/String;
    .end local v5           #result:F
    .end local v6           #seconds:F
    :goto_88
    return v7

    .restart local v0       #degrees:I
    .restart local v2       #minutes:I
    .restart local v3       #pair:[Ljava/lang/String;
    .restart local v4       #parts:[Ljava/lang/String;
    .restart local v5       #result:F
    .restart local v6       #seconds:F
    :cond_89
    move v7, v5

    .line 360
    goto :goto_88

    .line 361
    .end local v0           #degrees:I
    .end local v2           #minutes:I
    .end local v3           #pair:[Ljava/lang/String;
    .end local v4           #parts:[Ljava/lang/String;
    .end local v5           #result:F
    .end local v6           #seconds:F
    :catch_8b
    move-exception v7

    move-object v1, v7

    .line 364
    .local v1, ex:Ljava/lang/RuntimeException;
    const/4 v7, 0x0

    goto :goto_88
.end method

.method public static declared-synchronized createInstance()Landroid/media/ExifInterface;
    .registers 3

    .prologue
    .line 299
    const-class v1, Landroid/media/ExifInterface;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/media/ExifInterface;->instance()Landroid/media/ExifInterface;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result-object v0

    .line 300
    .local v0, exif:Landroid/media/ExifInterface;
    monitor-exit v1

    return-object v0

    .line 299
    .end local v0           #exif:Landroid/media/ExifInterface;
    :catchall_9
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private native getAttributesNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static declared-synchronized getExifThumbnail(Ljava/lang/String;)[B
    .registers 4
    .parameter "filename"

    .prologue
    .line 122
    const-class v1, Landroid/media/ExifInterface;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/media/ExifInterface;->instance()Landroid/media/ExifInterface;

    move-result-object v0

    .line 123
    .local v0, exif:Landroid/media/ExifInterface;
    if-eqz v0, :cond_12

    .line 124
    invoke-virtual {v0, p0}, Landroid/media/ExifInterface;->setFilename(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_14

    move-result-object v2

    .line 127
    :goto_10
    monitor-exit v1

    return-object v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_10

    .line 122
    .end local v0           #exif:Landroid/media/ExifInterface;
    :catchall_14
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static getLatLng(Ljava/util/HashMap;)[F
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[F"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_4

    .line 317
    const/4 v5, 0x0

    .line 335
    :goto_3
    return-object v5

    .line 320
    :cond_4
    const-string v5, "GPSLatitude"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 321
    .local v1, latValue:Ljava/lang/String;
    const-string v5, "GPSLatitudeRef"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 322
    .local v0, latRef:Ljava/lang/String;
    const-string v5, "GPSLongitude"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 323
    .local v4, lngValue:Ljava/lang/String;
    const-string v5, "GPSLongitudeRef"

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 324
    .local v3, lngRef:Ljava/lang/String;
    const/4 v2, 0x0

    .line 326
    .local v2, latlng:[F
    if-eqz v1, :cond_3e

    if-eqz v0, :cond_3e

    if-eqz v4, :cond_3e

    if-eqz v3, :cond_3e

    .line 328
    const/4 v5, 0x2

    new-array v2, v5, [F

    .line 329
    const/4 v5, 0x0

    invoke-static {v1, v0}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v6

    aput v6, v2, v5

    .line 331
    const/4 v5, 0x1

    invoke-static {v4, v3}, Landroid/media/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v6

    aput v6, v2, v5

    :cond_3e
    move-object v5, v2

    .line 335
    goto :goto_3
.end method

.method private native getThumbnailNative(Ljava/lang/String;)[B
.end method

.method private static declared-synchronized instance()Landroid/media/ExifInterface;
    .registers 2

    .prologue
    .line 91
    const-class v0, Landroid/media/ExifInterface;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/media/ExifInterface;->sExifObj:Landroid/media/ExifInterface;

    if-nez v1, :cond_e

    .line 92
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1}, Landroid/media/ExifInterface;-><init>()V

    sput-object v1, Landroid/media/ExifInterface;->sExifObj:Landroid/media/ExifInterface;

    .line 95
    :cond_e
    sget-object v1, Landroid/media/ExifInterface;->sExifObj:Landroid/media/ExifInterface;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 91
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized loadExifData(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 5
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    const-class v2, Landroid/media/ExifInterface;

    monitor-enter v2

    :try_start_3
    invoke-static {}, Landroid/media/ExifInterface;->instance()Landroid/media/ExifInterface;

    move-result-object v0

    .line 105
    .local v0, exif:Landroid/media/ExifInterface;
    const/4 v1, 0x0

    .line 106
    .local v1, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_11

    .line 107
    invoke-virtual {v0, p0}, Landroid/media/ExifInterface;->setFilename(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Landroid/media/ExifInterface;->getAttributes()Ljava/util/HashMap;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_13

    move-result-object v1

    .line 110
    :cond_11
    monitor-exit v2

    return-object v1

    .line 104
    .end local v0           #exif:Landroid/media/ExifInterface;
    .end local v1           #exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_13
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public static makeLatLongString(D)Ljava/lang/String;
    .registers 15
    .parameter "d"

    .prologue
    const-wide/high16 v10, 0x404e

    const-string v12, "/1,"

    .line 383
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 385
    double-to-int v0, p0

    .line 387
    .local v0, degrees:I
    int-to-double v6, v0

    sub-double v2, p0, v6

    .line 388
    .local v2, remainder:D
    mul-double v6, v2, v10

    double-to-int v1, v6

    .line 390
    .local v1, minutes:I
    mul-double v6, v2, v10

    int-to-double v8, v1

    sub-double/2addr v6, v8

    mul-double/2addr v6, v10

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    double-to-int v5, v6

    .line 392
    .local v5, seconds:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/1,"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/1,"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/1000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, retVal:Ljava/lang/String;
    return-object v4
.end method

.method public static makeLatStringRef(D)Ljava/lang/String;
    .registers 4
    .parameter "lat"

    .prologue
    .line 397
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_9

    const-string v0, "N"

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "S"

    goto :goto_8
.end method

.method public static makeLonStringRef(D)Ljava/lang/String;
    .registers 4
    .parameter "lon"

    .prologue
    .line 401
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_9

    const-string v0, "W"

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "E"

    goto :goto_8
.end method

.method public static orientationToString(I)Ljava/lang/String;
    .registers 2
    .parameter "orientation"

    .prologue
    .line 241
    packed-switch p0, :pswitch_data_1e

    .line 267
    const-string v0, "Undefined"

    .line 270
    .local v0, orientationString:Ljava/lang/String;
    :goto_5
    return-object v0

    .line 243
    .end local v0           #orientationString:Ljava/lang/String;
    :pswitch_6
    const-string v0, "Normal"

    .line 244
    .restart local v0       #orientationString:Ljava/lang/String;
    goto :goto_5

    .line 246
    .end local v0           #orientationString:Ljava/lang/String;
    :pswitch_9
    const-string v0, "Flipped horizontal"

    .line 247
    .restart local v0       #orientationString:Ljava/lang/String;
    goto :goto_5

    .line 249
    .end local v0           #orientationString:Ljava/lang/String;
    :pswitch_c
    const-string v0, "Rotated 180 degrees"

    .line 250
    .restart local v0       #orientationString:Ljava/lang/String;
    goto :goto_5

    .line 252
    .end local v0           #orientationString:Ljava/lang/String;
    :pswitch_f
    const-string v0, "Upside down mirror"

    .line 253
    .restart local v0       #orientationString:Ljava/lang/String;
    goto :goto_5

    .line 255
    .end local v0           #orientationString:Ljava/lang/String;
    :pswitch_12
    const-string v0, "Transposed"

    .line 256
    .restart local v0       #orientationString:Ljava/lang/String;
    goto :goto_5

    .line 258
    .end local v0           #orientationString:Ljava/lang/String;
    :pswitch_15
    const-string v0, "Rotated 90 degrees"

    .line 259
    .restart local v0       #orientationString:Ljava/lang/String;
    goto :goto_5

    .line 261
    .end local v0           #orientationString:Ljava/lang/String;
    :pswitch_18
    const-string v0, "Transversed"

    .line 262
    .restart local v0       #orientationString:Ljava/lang/String;
    goto :goto_5

    .line 264
    .end local v0           #orientationString:Ljava/lang/String;
    :pswitch_1b
    const-string v0, "Rotated 270 degrees"

    .line 265
    .restart local v0       #orientationString:Ljava/lang/String;
    goto :goto_5

    .line 241
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method

.method private native saveAttributesNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static declared-synchronized saveExifData(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 5
    .parameter "filename"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v1, Landroid/media/ExifInterface;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/media/ExifInterface;->instance()Landroid/media/ExifInterface;

    move-result-object v0

    .line 115
    .local v0, exif:Landroid/media/ExifInterface;
    if-eqz v0, :cond_f

    .line 116
    invoke-virtual {v0, p0}, Landroid/media/ExifInterface;->setFilename(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p1}, Landroid/media/ExifInterface;->saveAttributes(Ljava/util/HashMap;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 119
    :cond_f
    monitor-exit v1

    return-void

    .line 114
    .end local v0           #exif:Landroid/media/ExifInterface;
    :catchall_11
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static whiteBalanceToString(I)Ljava/lang/String;
    .registers 2
    .parameter "whitebalance"

    .prologue
    .line 223
    packed-switch p0, :pswitch_data_c

    .line 229
    const-string v0, ""

    :goto_5
    return-object v0

    .line 225
    :pswitch_6
    const-string v0, "Auto"

    goto :goto_5

    .line 227
    :pswitch_9
    const-string v0, "Manual"

    goto :goto_5

    .line 223
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public appendThumbnail(Ljava/lang/String;)Z
    .registers 4
    .parameter "thumbnailFileName"

    .prologue
    .line 279
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mSavedAttributes:Z

    if-nez v0, :cond_c

    .line 280
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must call saveAttributes before calling appendThumbnail"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_c
    iget-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/media/ExifInterface;->appendThumbnailNative(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 284
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public commitChanges()V
    .registers 3

    .prologue
    .line 292
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mSavedAttributes:Z

    if-nez v0, :cond_c

    .line 293
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Must call saveAttributes before calling commitChanges"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_c
    iget-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->commitChangesNative(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public getAttributes()Ljava/util/HashMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v10, 0x20

    .line 184
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Landroid/media/ExifInterface;->mCachedAttributes:Ljava/util/HashMap;

    .line 186
    iget-object v9, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v9}, Landroid/media/ExifInterface;->getAttributesNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, attrStr:Ljava/lang/String;
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 190
    .local v8, ptr:I
    const/4 v9, 0x0

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 192
    .local v4, count:I
    add-int/lit8 v8, v8, 0x1

    .line 194
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1f
    if-ge v6, v4, :cond_5b

    .line 196
    const/16 v9, 0x3d

    invoke-virtual {v2, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 197
    .local v5, equalPos:I
    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, attrName:Ljava/lang/String;
    add-int/lit8 v8, v5, 0x1

    .line 201
    invoke-virtual {v2, v10, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 202
    .local v7, lenPos:I
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 203
    .local v0, attrLen:I
    add-int/lit8 v8, v7, 0x1

    .line 206
    add-int v9, v8, v0

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, attrValue:Ljava/lang/String;
    add-int/2addr v8, v0

    .line 209
    const-string v9, "hasThumbnail"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_55

    .line 210
    const-string v9, "true"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    .line 194
    :goto_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 212
    :cond_55
    iget-object v9, p0, Landroid/media/ExifInterface;->mCachedAttributes:Ljava/util/HashMap;

    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 215
    .end local v0           #attrLen:I
    .end local v1           #attrName:Ljava/lang/String;
    .end local v3           #attrValue:Ljava/lang/String;
    .end local v5           #equalPos:I
    .end local v7           #lenPos:I
    :cond_5b
    iget-object v9, p0, Landroid/media/ExifInterface;->mCachedAttributes:Ljava/util/HashMap;

    return-object v9
.end method

.method public getThumbnail()[B
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/ExifInterface;->getThumbnailNative(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public hasThumbnail()Z
    .registers 2

    .prologue
    .line 305
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mSavedAttributes:Z

    if-nez v0, :cond_7

    .line 306
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getAttributes()Ljava/util/HashMap;

    .line 308
    :cond_7
    iget-boolean v0, p0, Landroid/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public saveAttributes(Ljava/util/HashMap;)V
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "hasThumbnail"

    const-string v9, " "

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v5

    .line 153
    .local v5, size:I
    const-string v7, "hasThumbnail"

    invoke-virtual {p1, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 154
    add-int/lit8 v5, v5, -0x1

    .line 156
    :cond_17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_35
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_89

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 158
    .local v1, iter:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 159
    .local v2, key:Ljava/lang/String;
    const-string v7, "hasThumbnail"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_35

    .line 163
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 164
    .local v6, val:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 168
    .end local v1           #iter:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #key:Ljava/lang/String;
    .end local v6           #val:Ljava/lang/String;
    :cond_89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, s:Ljava/lang/String;
    iget-object v7, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v7, v3}, Landroid/media/ExifInterface;->saveAttributesNative(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v7, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v7}, Landroid/media/ExifInterface;->commitChangesNative(Ljava/lang/String;)V

    .line 171
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/media/ExifInterface;->mSavedAttributes:Z

    .line 172
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .registers 3
    .parameter "filename"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 132
    :cond_c
    iput-object p1, p0, Landroid/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/ExifInterface;->mCachedAttributes:Ljava/util/HashMap;

    .line 135
    :cond_11
    return-void
.end method
