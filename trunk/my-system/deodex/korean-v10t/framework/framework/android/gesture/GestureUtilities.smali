.class final Landroid/gesture/GestureUtilities;
.super Ljava/lang/Object;
.source "GestureUtilities.java"


# static fields
.field private static final TEMPORAL_SAMPLING_RATE:I = 0x10


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static closeStream(Ljava/io/Closeable;)V
    .registers 4
    .parameter "stream"

    .prologue
    .line 41
    if-eqz p0, :cond_5

    .line 43
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 48
    :cond_5
    :goto_5
    return-void

    .line 44
    :catch_6
    move-exception v0

    .line 45
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Gestures"

    const-string v2, "Could not close stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method static computeCentroid([F)[F
    .registers 10
    .parameter "points"

    .prologue
    const/high16 v8, 0x4000

    .line 268
    const/4 v1, 0x0

    .line 269
    .local v1, centerX:F
    const/4 v2, 0x0

    .line 270
    .local v2, centerY:F
    array-length v3, p0

    .line 271
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    if-ge v4, v3, :cond_13

    .line 272
    aget v5, p0, v4

    add-float/2addr v1, v5

    .line 273
    add-int/lit8 v4, v4, 0x1

    .line 274
    aget v5, p0, v4

    add-float/2addr v2, v5

    .line 271
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 276
    :cond_13
    const/4 v5, 0x2

    new-array v0, v5, [F

    .line 277
    .local v0, center:[F
    const/4 v5, 0x0

    mul-float v6, v8, v1

    int-to-float v7, v3

    div-float/2addr v6, v7

    aput v6, v0, v5

    .line 278
    const/4 v5, 0x1

    mul-float v6, v8, v2

    int-to-float v7, v3

    div-float/2addr v6, v7

    aput v6, v0, v5

    .line 280
    return-object v0
.end method

.method private static computeCoVariance([F)[[D
    .registers 13
    .parameter "points"

    .prologue
    const/4 v5, 0x2

    const-wide/16 v7, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 290
    filled-new-array {v5, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 291
    .local v0, array:[[D
    aget-object v5, v0, v10

    aput-wide v7, v5, v10

    .line 292
    aget-object v5, v0, v10

    aput-wide v7, v5, v11

    .line 293
    aget-object v5, v0, v11

    aput-wide v7, v5, v10

    .line 294
    aget-object v5, v0, v11

    aput-wide v7, v5, v11

    .line 295
    array-length v1, p0

    .line 296
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_23
    if-ge v2, v1, :cond_54

    .line 297
    aget v3, p0, v2

    .line 298
    .local v3, x:F
    add-int/lit8 v2, v2, 0x1

    .line 299
    aget v4, p0, v2

    .line 300
    .local v4, y:F
    aget-object v5, v0, v10

    aget-wide v6, v5, v10

    mul-float v8, v3, v3

    float-to-double v8, v8

    add-double/2addr v6, v8

    aput-wide v6, v5, v10

    .line 301
    aget-object v5, v0, v10

    aget-wide v6, v5, v11

    mul-float v8, v3, v4

    float-to-double v8, v8

    add-double/2addr v6, v8

    aput-wide v6, v5, v11

    .line 302
    aget-object v5, v0, v11

    aget-object v6, v0, v10

    aget-wide v6, v6, v11

    aput-wide v6, v5, v10

    .line 303
    aget-object v5, v0, v11

    aget-wide v6, v5, v11

    mul-float v8, v4, v4

    float-to-double v8, v8

    add-double/2addr v6, v8

    aput-wide v6, v5, v11

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 305
    .end local v3           #x:F
    .end local v4           #y:F
    :cond_54
    aget-object v5, v0, v10

    aget-wide v6, v5, v10

    div-int/lit8 v8, v1, 0x2

    int-to-double v8, v8

    div-double/2addr v6, v8

    aput-wide v6, v5, v10

    .line 306
    aget-object v5, v0, v10

    aget-wide v6, v5, v11

    div-int/lit8 v8, v1, 0x2

    int-to-double v8, v8

    div-double/2addr v6, v8

    aput-wide v6, v5, v11

    .line 307
    aget-object v5, v0, v11

    aget-wide v6, v5, v10

    div-int/lit8 v8, v1, 0x2

    int-to-double v8, v8

    div-double/2addr v6, v8

    aput-wide v6, v5, v10

    .line 308
    aget-object v5, v0, v11

    aget-wide v6, v5, v11

    div-int/lit8 v8, v1, 0x2

    int-to-double v8, v8

    div-double/2addr v6, v8

    aput-wide v6, v5, v11

    .line 310
    return-object v0
.end method

.method private static computeOrientation([[D)[D
    .registers 10
    .parameter "covarianceMatrix"

    .prologue
    .line 420
    const/4 v0, 0x2

    new-array v4, v0, [D

    .line 421
    .local v4, targetVector:[D
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    aget-object v0, p0, v0

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_25

    .line 422
    :cond_1b
    const/4 v0, 0x0

    const-wide/high16 v1, 0x3ff0

    aput-wide v1, v4, v0

    .line 423
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    aput-wide v1, v4, v0

    .line 426
    :cond_25
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    neg-double v0, v0

    const/4 v2, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    sub-double/2addr v0, v2

    .line 427
    .local v0, a:D
    const/4 v2, 0x0

    aget-object v2, p0, v2

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    const/4 v5, 0x1

    aget-object v5, p0, v5

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    mul-double/2addr v2, v5

    const/4 v5, 0x0

    aget-object v5, p0, v5

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    const/4 v7, 0x1

    aget-object v7, p0, v7

    const/4 v8, 0x0

    aget-wide v7, v7, v8

    mul-double/2addr v5, v7

    sub-double/2addr v2, v5

    .line 429
    .local v2, b:D
    const-wide/high16 v5, 0x4000

    div-double v5, v0, v5

    .line 430
    .local v5, value:D
    const-wide/high16 v0, 0x4000

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->pow(DD)D

    .end local v0           #a:D
    move-result-wide v0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 431
    .local v2, rightside:D
    neg-double v0, v5

    add-double/2addr v0, v2

    .line 432
    .local v0, lambda1:D
    neg-double v5, v5

    sub-double v2, v5, v2

    .line 433
    .local v2, lambda2:D
    cmpl-double v5, v0, v2

    if-nez v5, :cond_71

    .line 434
    .end local v5           #value:D
    const/4 p0, 0x0

    const-wide/16 v0, 0x0

    aput-wide v0, v4, p0

    .line 435
    .end local v0           #lambda1:D
    .end local p0
    const/4 p0, 0x1

    const-wide/16 v0, 0x0

    aput-wide v0, v4, p0

    .line 441
    .end local v2           #lambda2:D
    :goto_70
    return-object v4

    .line 437
    .restart local v0       #lambda1:D
    .restart local v2       #lambda2:D
    .restart local p0
    :cond_71
    cmpl-double v5, v0, v2

    if-lez v5, :cond_8c

    .line 438
    .local v0, lambda:D
    :goto_75
    const/4 v2, 0x0

    const-wide/high16 v5, 0x3ff0

    aput-wide v5, v4, v2

    .line 439
    .end local v2           #lambda2:D
    const/4 v2, 0x1

    const/4 v3, 0x0

    aget-object v3, p0, v3

    const/4 v5, 0x0

    aget-wide v5, v3, v5

    sub-double/2addr v0, v5

    const/4 v3, 0x0

    aget-object p0, p0, v3

    .end local v0           #lambda:D
    .end local p0
    const/4 v3, 0x1

    aget-wide v5, p0, v3

    div-double/2addr v0, v5

    aput-wide v0, v4, v2

    goto :goto_70

    .local v0, lambda1:D
    .restart local v2       #lambda2:D
    .restart local p0
    :cond_8c
    move-wide v0, v2

    .line 437
    goto :goto_75
.end method

.method static computeOrientedBoundingBox(Ljava/util/ArrayList;)Landroid/gesture/OrientedBoundingBox;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;)",
            "Landroid/gesture/OrientedBoundingBox;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, pts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GesturePoint;>;"
    new-instance v1, Landroid/gesture/GestureStroke;

    invoke-direct {v1, p0}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    .line 372
    .local v1, stroke:Landroid/gesture/GestureStroke;
    const/16 v2, 0x10

    invoke-static {v1, v2}, Landroid/gesture/GestureUtilities;->temporalSampling(Landroid/gesture/GestureStroke;I)[F

    move-result-object v0

    .line 373
    .local v0, points:[F
    invoke-static {v0}, Landroid/gesture/GestureUtilities;->computeOrientedBoundingBox([F)Landroid/gesture/OrientedBoundingBox;

    move-result-object v2

    return-object v2
.end method

.method static computeOrientedBoundingBox([F)Landroid/gesture/OrientedBoundingBox;
    .registers 3
    .parameter "points"

    .prologue
    .line 377
    invoke-static {p0}, Landroid/gesture/GestureUtilities;->computeCentroid([F)[F

    move-result-object v0

    .line 378
    .local v0, meanVector:[F
    invoke-static {p0, v0}, Landroid/gesture/GestureUtilities;->computeOrientedBoundingBox([F[F)Landroid/gesture/OrientedBoundingBox;

    move-result-object v1

    return-object v1
.end method

.method static computeOrientedBoundingBox([F[F)Landroid/gesture/OrientedBoundingBox;
    .registers 12
    .parameter "points"
    .parameter "centroid"

    .prologue
    .line 382
    const/4 v0, 0x0

    aget v0, p1, v0

    neg-float v0, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    neg-float v1, v1

    invoke-static {p0, v0, v1}, Landroid/gesture/GestureUtilities;->translate([FFF)[F

    .line 384
    invoke-static {p0}, Landroid/gesture/GestureUtilities;->computeCoVariance([F)[[D

    move-result-object v0

    .line 385
    .local v0, array:[[D
    invoke-static {v0}, Landroid/gesture/GestureUtilities;->computeOrientation([[D)[D

    move-result-object v0

    .line 388
    .local v0, targetVector:[D
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_62

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_62

    .line 389
    const v0, -0x4036f025

    .local v0, angle:F
    move v1, v0

    .line 395
    .end local v0           #angle:F
    .local v1, angle:F
    :goto_29
    const v5, 0x7f7fffff

    .line 396
    .local v5, minx:F
    const v6, 0x7f7fffff

    .line 397
    .local v6, miny:F
    const/4 v3, 0x1

    .line 398
    .local v3, maxx:F
    const/4 v4, 0x1

    .line 399
    .local v4, maxy:F
    array-length v0, p0

    .line 400
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    move v7, v6

    .end local v6           #miny:F
    .local v7, miny:F
    move v6, v5

    .end local v5           #minx:F
    .local v6, minx:F
    move v5, v4

    .end local v4           #maxy:F
    .local v5, maxy:F
    move v4, v3

    .end local v3           #maxx:F
    .local v4, maxx:F
    :goto_37
    if-ge v2, v0, :cond_74

    .line 401
    aget v3, p0, v2

    cmpg-float v3, v3, v6

    if-gez v3, :cond_42

    .line 402
    aget v3, p0, v2

    .end local v6           #minx:F
    .local v3, minx:F
    move v6, v3

    .line 404
    .end local v3           #minx:F
    .restart local v6       #minx:F
    :cond_42
    aget v3, p0, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8f

    .line 405
    aget v3, p0, v2

    .line 407
    .end local v4           #maxx:F
    .local v3, maxx:F
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    .line 408
    aget v4, p0, v2

    cmpg-float v4, v4, v7

    if-gez v4, :cond_55

    .line 409
    aget v4, p0, v2

    .end local v7           #miny:F
    .local v4, miny:F
    move v7, v4

    .line 411
    .end local v4           #miny:F
    .restart local v7       #miny:F
    :cond_55
    aget v4, p0, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8d

    .line 412
    aget v4, p0, v2

    .line 400
    .end local v5           #maxy:F
    .local v4, maxy:F
    :goto_5d
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4           #maxy:F
    .restart local v5       #maxy:F
    move v4, v3

    .end local v3           #maxx:F
    .local v4, maxx:F
    goto :goto_37

    .line 391
    .end local v1           #angle:F
    .end local v2           #i:I
    .end local v4           #maxx:F
    .end local v5           #maxy:F
    .end local v6           #minx:F
    .end local v7           #miny:F
    .local v0, targetVector:[D
    :cond_62
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .end local v0           #targetVector:[D
    double-to-float v0, v0

    .line 392
    .local v0, angle:F
    neg-float v1, v0

    float-to-double v1, v1

    invoke-static {p0, v1, v2}, Landroid/gesture/GestureUtilities;->rotate([FD)[F

    move v1, v0

    .end local v0           #angle:F
    .restart local v1       #angle:F
    goto :goto_29

    .line 416
    .local v0, count:I
    .restart local v2       #i:I
    .restart local v4       #maxx:F
    .restart local v5       #maxy:F
    .restart local v6       #minx:F
    .restart local v7       #miny:F
    :cond_74
    new-instance v0, Landroid/gesture/OrientedBoundingBox;

    .end local v0           #count:I
    const/high16 p0, 0x4334

    mul-float/2addr p0, v1

    float-to-double v1, p0

    const-wide v8, 0x400921fb54442d18L

    div-double/2addr v1, v8

    double-to-float v1, v1

    const/4 p0, 0x0

    aget v2, p1, p0

    .end local v1           #angle:F
    .end local v2           #i:I
    .end local p0
    const/4 p0, 0x1

    aget v3, p1, p0

    sub-float/2addr v4, v6

    sub-float/2addr v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/gesture/OrientedBoundingBox;-><init>(FFFFF)V

    .end local v4           #maxx:F
    .end local v5           #maxy:F
    return-object v0

    .restart local v0       #count:I
    .restart local v1       #angle:F
    .restart local v2       #i:I
    .restart local v3       #maxx:F
    .restart local v5       #maxy:F
    .restart local p0
    :cond_8d
    move v4, v5

    .end local v5           #maxy:F
    .local v4, maxy:F
    goto :goto_5d

    .end local v3           #maxx:F
    .local v4, maxx:F
    .restart local v5       #maxy:F
    :cond_8f
    move v3, v4

    .end local v4           #maxx:F
    .restart local v3       #maxx:F
    goto :goto_4a
.end method

.method static computeStraightness([F)D
    .registers 8
    .parameter "points"

    .prologue
    .line 325
    invoke-static {p0}, Landroid/gesture/GestureUtilities;->computeTotalLength([F)F

    move-result v2

    .line 326
    .local v2, totalLen:F
    const/4 v3, 0x2

    aget v3, p0, v3

    const/4 v4, 0x0

    aget v4, p0, v4

    sub-float v0, v3, v4

    .line 327
    .local v0, dx:F
    const/4 v3, 0x3

    aget v3, p0, v3

    const/4 v4, 0x1

    aget v4, p0, v4

    sub-float v1, v3, v4

    .line 328
    .local v1, dy:F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    float-to-double v5, v2

    div-double/2addr v3, v5

    return-wide v3
.end method

.method static computeStraightness([FF)D
    .registers 8
    .parameter "points"
    .parameter "totalLen"

    .prologue
    .line 332
    const/4 v2, 0x2

    aget v2, p0, v2

    const/4 v3, 0x0

    aget v3, p0, v3

    sub-float v0, v2, v3

    .line 333
    .local v0, dx:F
    const/4 v2, 0x3

    aget v2, p0, v2

    const/4 v3, 0x1

    aget v3, p0, v3

    sub-float v1, v2, v3

    .line 334
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    float-to-double v4, p1

    div-double/2addr v2, v4

    return-wide v2
.end method

.method static computeTotalLength([F)F
    .registers 10
    .parameter "points"

    .prologue
    .line 314
    const/4 v4, 0x0

    .line 315
    .local v4, sum:F
    array-length v5, p0

    const/4 v6, 0x4

    sub-int v0, v5, v6

    .line 316
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_6
    if-ge v3, v0, :cond_2a

    .line 317
    add-int/lit8 v5, v3, 0x2

    aget v5, p0, v5

    aget v6, p0, v3

    sub-float v1, v5, v6

    .line 318
    .local v1, dx:F
    add-int/lit8 v5, v3, 0x3

    aget v5, p0, v5

    add-int/lit8 v6, v3, 0x1

    aget v6, p0, v6

    sub-float v2, v5, v6

    .line 319
    .local v2, dy:F
    float-to-double v5, v4

    mul-float v7, v1, v1

    mul-float v8, v2, v2

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-float v4, v5

    .line 316
    add-int/lit8 v3, v3, 0x2

    goto :goto_6

    .line 321
    .end local v1           #dx:F
    .end local v2           #dy:F
    :cond_2a
    return v4
.end method

.method static cosineDistance([F[F)D
    .registers 7
    .parameter "vector1"
    .parameter "vector2"

    .prologue
    .line 362
    const/4 v2, 0x0

    .line 363
    .local v2, sum:F
    array-length v1, p0

    .line 364
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, v1, :cond_e

    .line 365
    aget v3, p0, v0

    aget v4, p1, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 367
    :cond_e
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    return-wide v3
.end method

.method private static plot(FF[FI)V
    .registers 23
    .parameter "x"
    .parameter "y"
    .parameter "sample"
    .parameter "sampleSize"

    .prologue
    .line 152
    const/4 v4, 0x0

    cmpg-float v4, p0, v4

    if-gez v4, :cond_7

    const/16 p0, 0x0

    .line 153
    :cond_7
    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-gez v4, :cond_e

    const/16 p1, 0x0

    .line 154
    :cond_e
    move/from16 v0, p0

    float-to-double v0, v0

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v14, v4

    .line 155
    .local v14, xFloor:I
    move/from16 v0, p0

    float-to-double v0, v0

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v13, v4

    .line 156
    .local v13, xCeiling:I
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    move-wide v0, v4

    double-to-int v0, v0

    move/from16 v16, v0

    .line 157
    .local v16, yFloor:I
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v15, v4

    .line 160
    .local v15, yCeiling:I
    int-to-float v4, v14

    cmpl-float v4, p0, v4

    if-nez v4, :cond_53

    move/from16 v0, v16

    int-to-float v0, v0

    move v4, v0

    cmpl-float v4, p1, v4

    if-nez v4, :cond_53

    .line 161
    mul-int p0, v15, p3

    add-int p0, p0, v13

    .line 162
    .local p0, index:I
    aget p1, p2, p0

    .end local p1
    const/high16 p3, 0x3f80

    cmpg-float p1, p1, p3

    if-gez p1, :cond_52

    .line 163
    .end local p3
    const/high16 p1, 0x3f80

    aput p1, p2, p0

    .line 196
    :cond_52
    :goto_52
    return-void

    .line 166
    .local p0, x:F
    .restart local p1
    .restart local p3
    :cond_53
    int-to-float v4, v14

    sub-float v4, v4, p0

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    move/from16 v0, v16

    int-to-float v0, v0

    move v6, v0

    sub-float v6, v6, p1

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    .line 167
    .local v9, topLeft:D
    int-to-float v4, v13

    sub-float v4, v4, p0

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    move/from16 v0, v16

    int-to-float v0, v0

    move v6, v0

    sub-float v6, v6, p1

    float-to-double v6, v6

    const-wide/high16 v11, 0x4000

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    .line 168
    .local v11, topRight:D
    int-to-float v4, v14

    sub-float v4, v4, p0

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-float v6, v15

    sub-float v6, v6, p1

    float-to-double v6, v6

    const-wide/high16 v17, 0x4000

    move-wide v0, v6

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 169
    .local v4, btmLeft:D
    int-to-float v6, v13

    sub-float p0, v6, p0

    move/from16 v0, p0

    float-to-double v0, v0

    move-wide v6, v0

    const-wide/high16 v17, 0x4000

    move-wide v0, v6

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    .end local p0           #x:F
    move-result-wide v6

    move v0, v15

    int-to-float v0, v0

    move/from16 p0, v0

    sub-float p0, p0, p1

    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 p0, v0

    const-wide/high16 v17, 0x4000

    move-wide/from16 v0, p0

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double p0, p0, v6

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    .line 170
    .end local p1
    .local p0, btmRight:D
    add-double v6, v9, v11

    add-double/2addr v6, v4

    add-double v7, v6, p0

    .line 172
    .local v7, sum:D
    div-double/2addr v9, v7

    .line 173
    .local v9, value:D
    mul-int v6, v16, p3

    add-int/2addr v6, v14

    .line 174
    .local v6, index:I
    aget v17, p2, v6

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    cmpl-double v17, v9, v17

    if-lez v17, :cond_e9

    .line 175
    double-to-float v9, v9

    aput v9, p2, v6

    .line 178
    .end local v9           #value:D
    :cond_e9
    div-double v9, v11, v7

    .line 179
    .restart local v9       #value:D
    mul-int v6, v16, p3

    add-int/2addr v6, v13

    .line 180
    aget v11, p2, v6

    .end local v11           #topRight:D
    float-to-double v11, v11

    cmpl-double v11, v9, v11

    if-lez v11, :cond_f8

    .line 181
    double-to-float v9, v9

    aput v9, p2, v6

    .line 184
    .end local v9           #value:D
    :cond_f8
    div-double v5, v4, v7

    .line 185
    .end local v4           #btmLeft:D
    .end local v6           #index:I
    .local v5, value:D
    mul-int v4, v15, p3

    add-int/2addr v4, v14

    .line 186
    .local v4, index:I
    aget v9, p2, v4

    float-to-double v9, v9

    cmpl-double v9, v5, v9

    if-lez v9, :cond_107

    .line 187
    double-to-float v5, v5

    aput v5, p2, v4

    .line 190
    .end local v5           #value:D
    :cond_107
    div-double v4, p0, v7

    .line 191
    .local v4, value:D
    mul-int p0, v15, p3

    add-int p0, p0, v13

    .line 192
    .local p0, index:I
    aget p1, p2, p0

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide v6, v0

    cmpl-double p1, v4, v6

    if-lez p1, :cond_52

    .line 193
    move-wide v0, v4

    double-to-float v0, v0

    move/from16 p1, v0

    aput p1, p2, p0

    goto/16 :goto_52
.end method

.method static rotate([FD)[F
    .registers 15
    .parameter "points"
    .parameter "angle"

    .prologue
    .line 446
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 447
    .local v0, cos:D
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    .line 448
    .local v3, sin:D
    array-length v5, p0

    .line 449
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v5, :cond_2d

    .line 450
    aget v8, p0, v2

    float-to-double v8, v8

    mul-double/2addr v8, v0

    add-int/lit8 v10, v2, 0x1

    aget v10, p0, v10

    float-to-double v10, v10

    mul-double/2addr v10, v3

    sub-double/2addr v8, v10

    double-to-float v6, v8

    .line 451
    .local v6, x:F
    aget v8, p0, v2

    float-to-double v8, v8

    mul-double/2addr v8, v3

    add-int/lit8 v10, v2, 0x1

    aget v10, p0, v10

    float-to-double v10, v10

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    double-to-float v7, v8

    .line 452
    .local v7, y:F
    aput v6, p0, v2

    .line 453
    add-int/lit8 v8, v2, 0x1

    aput v7, p0, v8

    .line 449
    add-int/lit8 v2, v2, 0x2

    goto :goto_a

    .line 455
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_2d
    return-object p0
.end method

.method static scale([FFF)[F
    .registers 7
    .parameter "points"
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 468
    array-length v1, p0

    .line 469
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_13

    .line 470
    aget v2, p0, v0

    mul-float/2addr v2, p1

    aput v2, p0, v0

    .line 471
    add-int/lit8 v2, v0, 0x1

    aget v3, p0, v2

    mul-float/2addr v3, p2

    aput v3, p0, v2

    .line 469
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 473
    :cond_13
    return-object p0
.end method

.method static spatialSampling(Landroid/gesture/Gesture;I)[F
    .registers 25
    .parameter "gesture"
    .parameter "sampleMatrixDimension"

    .prologue
    .line 51
    const/4 v4, 0x1

    sub-int v4, p1, v4

    move v0, v4

    int-to-float v0, v0

    move/from16 v20, v0

    .line 52
    .local v20, targetPatchSize:F
    mul-int v4, p1, p1

    new-array v12, v4, [F

    .line 53
    .local v12, sample:[F
    const/4 v4, 0x0

    invoke-static {v12, v4}, Ljava/util/Arrays;->fill([FF)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Landroid/gesture/Gesture;->getBoundingBox()Landroid/graphics/RectF;

    move-result-object v4

    .line 56
    .local v4, rect:Landroid/graphics/RectF;
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float v5, v20, v5

    .line 57
    .local v5, sx:F
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float v6, v20, v6

    .line 58
    .local v6, sy:F
    cmpg-float v7, v5, v6

    if-gez v7, :cond_74

    move v13, v5

    .line 60
    .local v13, scale:F
    :goto_24
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    .end local v5           #sx:F
    neg-float v9, v5

    .line 61
    .local v9, preDx:F
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    .end local v4           #rect:Landroid/graphics/RectF;
    neg-float v10, v4

    .line 62
    .local v10, preDy:F
    const/high16 v4, 0x4000

    div-float v7, v20, v4

    .line 63
    .local v7, postDx:F
    const/high16 v4, 0x4000

    div-float v8, v20, v4

    .line 65
    .local v8, postDy:F
    invoke-virtual/range {p0 .. p0}, Landroid/gesture/Gesture;->getStrokes()Ljava/util/ArrayList;

    move-result-object v19

    .line 66
    .local v19, strokes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 72
    .local p0, count:I
    const/4 v4, 0x0

    .local v4, index:I
    move v5, v4

    .end local v4           #index:I
    .end local v6           #sy:F
    .local v5, index:I
    :goto_40
    move v0, v5

    move/from16 v1, p0

    if-ge v0, v1, :cond_185

    .line 73
    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/gesture/GestureStroke;

    .line 74
    .local v4, stroke:Landroid/gesture/GestureStroke;
    iget-object v6, v4, Landroid/gesture/GestureStroke;->points:[F

    .line 75
    .local v6, strokepoints:[F
    move-object v0, v6

    array-length v0, v0

    move/from16 v17, v0

    .line 77
    .local v17, size:I
    move/from16 v0, v17

    new-array v0, v0, [F

    move-object v11, v0

    .line 79
    .local v11, pts:[F
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5a
    move v0, v4

    move/from16 v1, v17

    if-ge v0, v1, :cond_76

    .line 80
    aget v14, v6, v4

    add-float/2addr v14, v9

    mul-float/2addr v14, v13

    add-float/2addr v14, v7

    aput v14, v11, v4

    .line 81
    add-int/lit8 v14, v4, 0x1

    add-int/lit8 v15, v4, 0x1

    aget v15, v6, v15

    add-float/2addr v15, v10

    mul-float/2addr v15, v13

    add-float/2addr v15, v8

    aput v15, v11, v14

    .line 79
    add-int/lit8 v4, v4, 0x2

    goto :goto_5a

    .end local v7           #postDx:F
    .end local v8           #postDy:F
    .end local v9           #preDx:F
    .end local v10           #preDy:F
    .end local v11           #pts:[F
    .end local v13           #scale:F
    .end local v17           #size:I
    .end local v19           #strokes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    .local v4, rect:Landroid/graphics/RectF;
    .local v5, sx:F
    .local v6, sy:F
    .local p0, gesture:Landroid/gesture/Gesture;
    :cond_74
    move v13, v6

    .line 58
    goto :goto_24

    .line 84
    .local v4, i:I
    .local v5, index:I
    .local v6, strokepoints:[F
    .restart local v7       #postDx:F
    .restart local v8       #postDy:F
    .restart local v9       #preDx:F
    .restart local v10       #preDy:F
    .restart local v11       #pts:[F
    .restart local v13       #scale:F
    .restart local v17       #size:I
    .restart local v19       #strokes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    .local p0, count:I
    :cond_76
    const/high16 v6, -0x4080

    .line 85
    .local v6, segmentEndX:F
    const/high16 v14, -0x4080

    .line 87
    .local v14, segmentEndY:F
    const/4 v4, 0x0

    :goto_7b
    move v0, v4

    move/from16 v1, v17

    if-ge v0, v1, :cond_180

    .line 89
    aget v15, v11, v4

    const/16 v16, 0x0

    cmpg-float v15, v15, v16

    if-gez v15, :cond_e0

    const/4 v15, 0x0

    .line 90
    .local v15, segmentStartX:F
    :goto_89
    add-int/lit8 v16, v4, 0x1

    aget v16, v11, v16

    const/16 v18, 0x0

    cmpg-float v16, v16, v18

    if-gez v16, :cond_e3

    const/16 v16, 0x0

    .line 92
    .local v16, segmentStartY:F
    :goto_95
    cmpl-float v18, v15, v20

    if-lez v18, :cond_9b

    .line 93
    move/from16 v15, v20

    .line 96
    :cond_9b
    cmpl-float v18, v16, v20

    if-lez v18, :cond_a1

    .line 97
    move/from16 v16, v20

    .line 100
    :cond_a1
    move v0, v15

    move/from16 v1, v16

    move-object v2, v12

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtilities;->plot(FF[FI)V

    .line 102
    const/high16 v18, -0x4080

    cmpl-float v18, v6, v18

    if-eqz v18, :cond_179

    .line 104
    cmpl-float v18, v6, v15

    if-lez v18, :cond_e8

    .line 105
    move v0, v15

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    .line 106
    .local v21, xpos:F
    sub-float v18, v14, v16

    sub-float v22, v6, v15

    div-float v18, v18, v22

    .line 107
    .local v18, slope:F
    :goto_c7
    cmpg-float v22, v21, v6

    if-gez v22, :cond_118

    .line 108
    sub-float v22, v21, v15

    mul-float v22, v22, v18

    add-float v22, v22, v16

    .line 109
    .local v22, ypos:F
    move/from16 v0, v21

    move/from16 v1, v22

    move-object v2, v12

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtilities;->plot(FF[FI)V

    .line 110
    const/high16 v22, 0x3f80

    add-float v21, v21, v22

    goto :goto_c7

    .line 89
    .end local v15           #segmentStartX:F
    .end local v16           #segmentStartY:F
    .end local v18           #slope:F
    .end local v21           #xpos:F
    .end local v22           #ypos:F
    :cond_e0
    aget v15, v11, v4

    goto :goto_89

    .line 90
    .restart local v15       #segmentStartX:F
    :cond_e3
    add-int/lit8 v16, v4, 0x1

    aget v16, v11, v16

    goto :goto_95

    .line 112
    .restart local v16       #segmentStartY:F
    :cond_e8
    cmpg-float v18, v6, v15

    if-gez v18, :cond_118

    .line 113
    move v0, v6

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    .line 114
    .restart local v21       #xpos:F
    sub-float v18, v14, v16

    sub-float v22, v6, v15

    div-float v18, v18, v22

    .line 115
    .restart local v18       #slope:F
    :goto_ff
    cmpg-float v22, v21, v15

    if-gez v22, :cond_118

    .line 116
    sub-float v22, v21, v15

    mul-float v22, v22, v18

    add-float v22, v22, v16

    .line 117
    .restart local v22       #ypos:F
    move/from16 v0, v21

    move/from16 v1, v22

    move-object v2, v12

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtilities;->plot(FF[FI)V

    .line 118
    const/high16 v22, 0x3f80

    add-float v21, v21, v22

    goto :goto_ff

    .line 123
    .end local v18           #slope:F
    .end local v21           #xpos:F
    .end local v22           #ypos:F
    :cond_118
    cmpl-float v18, v14, v16

    if-lez v18, :cond_14c

    .line 124
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v18, v0

    .line 125
    .local v18, ypos:F
    sub-float/2addr v6, v15

    sub-float v21, v14, v16

    div-float v6, v6, v21

    .local v6, invertSlope:F
    move/from16 v21, v18

    .line 126
    .end local v18           #ypos:F
    .local v21, ypos:F
    :goto_131
    cmpg-float v18, v21, v14

    if-gez v18, :cond_179

    .line 127
    sub-float v18, v21, v16

    mul-float v18, v18, v6

    add-float v18, v18, v15

    .line 128
    .local v18, xpos:F
    move/from16 v0, v18

    move/from16 v1, v21

    move-object v2, v12

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtilities;->plot(FF[FI)V

    .line 129
    const/high16 v18, 0x3f80

    add-float v18, v18, v21

    .end local v21           #ypos:F
    .local v18, ypos:F
    move/from16 v21, v18

    .end local v18           #ypos:F
    .restart local v21       #ypos:F
    goto :goto_131

    .line 131
    .end local v21           #ypos:F
    .local v6, segmentEndX:F
    :cond_14c
    cmpg-float v18, v14, v16

    if-gez v18, :cond_179

    .line 132
    move v0, v14

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v18, v0

    .line 133
    .restart local v18       #ypos:F
    sub-float/2addr v6, v15

    sub-float v14, v14, v16

    div-float/2addr v6, v14

    .line 134
    .end local v14           #segmentEndY:F
    .local v6, invertSlope:F
    :goto_161
    cmpg-float v14, v18, v16

    if-gez v14, :cond_179

    .line 135
    sub-float v14, v18, v16

    mul-float/2addr v14, v6

    add-float/2addr v14, v15

    .line 136
    .local v14, xpos:F
    move v0, v14

    move/from16 v1, v18

    move-object v2, v12

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtilities;->plot(FF[FI)V

    .line 137
    const/high16 v14, 0x3f80

    add-float v14, v14, v18

    .end local v18           #ypos:F
    .local v14, ypos:F
    move/from16 v18, v14

    .end local v14           #ypos:F
    .restart local v18       #ypos:F
    goto :goto_161

    .line 142
    .end local v6           #invertSlope:F
    .end local v18           #ypos:F
    :cond_179
    move v6, v15

    .line 143
    .local v6, segmentEndX:F
    move/from16 v14, v16

    .line 87
    .local v14, segmentEndY:F
    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_7b

    .line 72
    .end local v15           #segmentStartX:F
    .end local v16           #segmentStartY:F
    :cond_180
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .local v4, index:I
    move v5, v4

    .end local v4           #index:I
    .restart local v5       #index:I
    goto/16 :goto_40

    .line 148
    .end local v6           #segmentEndX:F
    .end local v11           #pts:[F
    .end local v14           #segmentEndY:F
    .end local v17           #size:I
    :cond_185
    return-object v12
.end method

.method static squaredEuclideanDistance([F[F)D
    .registers 9
    .parameter "vector1"
    .parameter "vector2"

    .prologue
    .line 345
    const-wide/16 v3, 0x0

    .line 346
    .local v3, squaredDistance:D
    array-length v2, p0

    .line 347
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    if-ge v1, v2, :cond_13

    .line 348
    aget v5, p0, v1

    aget v6, p1, v1

    sub-float v0, v5, v6

    .line 349
    .local v0, difference:F
    mul-float v5, v0, v0

    float-to-double v5, v5

    add-double/2addr v3, v5

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 351
    .end local v0           #difference:F
    :cond_13
    int-to-double v5, v2

    div-double v5, v3, v5

    return-wide v5
.end method

.method static temporalSampling(Landroid/gesture/GestureStroke;I)[F
    .registers 17
    .parameter "stroke"
    .parameter "sampleSize"

    .prologue
    .line 206
    iget v0, p0, Landroid/gesture/GestureStroke;->length:F

    const/4 v1, 0x1

    sub-int v1, p1, v1

    int-to-float v1, v1

    div-float v6, v0, v1

    .line 207
    .local v6, increment:F
    mul-int/lit8 v12, p1, 0x2

    .line 208
    .local v12, vectorLength:I
    new-array v11, v12, [F

    .line 209
    .local v11, vector:[F
    const/4 v1, 0x0

    .line 210
    .local v1, distanceSoFar:F
    iget-object v10, p0, Landroid/gesture/GestureStroke;->points:[F

    .line 211
    .local v10, pts:[F
    const/4 p0, 0x0

    aget v4, v10, p0

    .line 212
    .end local p0
    .local v4, lstPointX:F
    const/4 p0, 0x1

    aget v5, v10, p0

    .line 213
    .local v5, lstPointY:F
    const/4 p0, 0x0

    .line 214
    .local p0, index:I
    const/16 p1, 0x1

    .line 215
    .local p1, currentPointX:F
    const/4 v0, 0x1

    .line 216
    .local v0, currentPointY:F
    aput v4, v11, p0

    .line 217
    add-int/lit8 p0, p0, 0x1

    .line 218
    aput v5, v11, p0

    .line 219
    add-int/lit8 v3, p0, 0x1

    .line 220
    .end local p0           #index:I
    .local v3, index:I
    const/4 v2, 0x0

    .line 221
    .local v2, i:I
    array-length p0, v10

    div-int/lit8 p0, p0, 0x2

    .local p0, count:I
    move v7, v3

    .end local v3           #index:I
    .local v7, index:I
    move v9, v5

    .end local v5           #lstPointY:F
    .local v9, lstPointY:F
    move v8, v4

    .end local v4           #lstPointX:F
    .local v8, lstPointX:F
    move v4, v1

    .end local v1           #distanceSoFar:F
    .local v4, distanceSoFar:F
    move v1, v2

    .line 222
    .end local v2           #i:I
    .local v1, i:I
    :goto_2a
    if-ge v1, p0, :cond_8c

    .line 223
    const/4 v2, 0x1

    cmpl-float v2, p1, v2

    if-nez v2, :cond_8a

    .line 224
    add-int/lit8 v1, v1, 0x1

    .line 225
    if-lt v1, p0, :cond_42

    move p0, v1

    .line 254
    .end local v1           #i:I
    .local p0, i:I
    :goto_36
    move p0, v7

    .end local p1           #currentPointX:F
    :goto_37
    if-ge p0, v12, :cond_89

    .line 255
    aput v8, v11, p0

    .line 256
    add-int/lit8 p1, p0, 0x1

    aput v9, v11, p1

    .line 254
    add-int/lit8 p0, p0, 0x2

    goto :goto_37

    .line 228
    .restart local v1       #i:I
    .local p0, count:I
    .restart local p1       #currentPointX:F
    :cond_42
    mul-int/lit8 p1, v1, 0x2

    aget p1, v10, p1

    .line 229
    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v0, v10, v0

    move v5, v1

    .line 231
    .end local v1           #i:I
    .local v5, i:I
    :goto_4d
    sub-float v1, p1, v8

    .line 232
    .local v1, deltaX:F
    sub-float v2, v0, v9

    .line 233
    .local v2, deltaY:F
    mul-float v3, v1, v1

    mul-float v13, v2, v2

    add-float/2addr v3, v13

    float-to-double v13, v3

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v3, v13

    .line 234
    .local v3, distance:F
    add-float v13, v4, v3

    cmpl-float v13, v13, v6

    if-ltz v13, :cond_7d

    .line 235
    sub-float v4, v6, v4

    div-float/2addr v4, v3

    .line 236
    .local v4, ratio:F
    mul-float/2addr v1, v4

    add-float v3, v8, v1

    .line 237
    .local v3, nx:F
    mul-float v1, v4, v2

    add-float v4, v9, v1

    .line 238
    .local v4, ny:F
    aput v3, v11, v7

    .line 239
    .end local v1           #deltaX:F
    add-int/lit8 v1, v7, 0x1

    .line 240
    .end local v7           #index:I
    .local v1, index:I
    aput v4, v11, v1

    .line 241
    add-int/lit8 v2, v1, 0x1

    .line 242
    .end local v1           #index:I
    .local v2, index:I
    move v3, v3

    .line 243
    .end local v8           #lstPointX:F
    .local v3, lstPointX:F
    move v4, v4

    .line 244
    .end local v9           #lstPointY:F
    .local v4, lstPointY:F
    const/4 v1, 0x0

    .local v1, distanceSoFar:F
    :goto_77
    move v7, v2

    .end local v2           #index:I
    .restart local v7       #index:I
    move v9, v4

    .end local v4           #lstPointY:F
    .restart local v9       #lstPointY:F
    move v8, v3

    .end local v3           #lstPointX:F
    .restart local v8       #lstPointX:F
    move v4, v1

    .end local v1           #distanceSoFar:F
    .local v4, distanceSoFar:F
    move v1, v5

    .line 252
    .end local v5           #i:I
    .local v1, i:I
    goto :goto_2a

    .line 246
    .local v1, deltaX:F
    .local v2, deltaY:F
    .local v3, distance:F
    .restart local v5       #i:I
    :cond_7d
    move/from16 v2, p1

    .line 247
    .end local v8           #lstPointX:F
    .local v2, lstPointX:F
    move v8, v0

    .line 248
    .end local v9           #lstPointY:F
    .local v8, lstPointY:F
    const/16 p1, 0x1

    .line 249
    const/4 v0, 0x1

    .line 250
    add-float v1, v4, v3

    .end local v4           #distanceSoFar:F
    .local v1, distanceSoFar:F
    move v4, v8

    .end local v8           #lstPointY:F
    .local v4, lstPointY:F
    move v3, v2

    .end local v2           #lstPointX:F
    .local v3, lstPointX:F
    move v2, v7

    .end local v7           #index:I
    .local v2, index:I
    goto :goto_77

    .line 258
    .end local v1           #distanceSoFar:F
    .end local v2           #index:I
    .end local v3           #lstPointX:F
    .end local v5           #i:I
    .end local p1           #currentPointX:F
    .local v4, distanceSoFar:F
    .restart local v7       #index:I
    .local v8, lstPointX:F
    .restart local v9       #lstPointY:F
    .local p0, i:I
    :cond_89
    return-object v11

    .local v1, i:I
    .local p0, count:I
    .restart local p1       #currentPointX:F
    :cond_8a
    move v5, v1

    .end local v1           #i:I
    .restart local v5       #i:I
    goto :goto_4d

    .end local v5           #i:I
    .restart local v1       #i:I
    :cond_8c
    move p0, v1

    .end local v1           #i:I
    .local p0, i:I
    goto :goto_36
.end method

.method static translate([FFF)[F
    .registers 7
    .parameter "points"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 459
    array-length v1, p0

    .line 460
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_13

    .line 461
    aget v2, p0, v0

    add-float/2addr v2, p1

    aput v2, p0, v0

    .line 462
    add-int/lit8 v2, v0, 0x1

    aget v3, p0, v2

    add-float/2addr v3, p2

    aput v3, p0, v2

    .line 460
    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 464
    :cond_13
    return-object p0
.end method
