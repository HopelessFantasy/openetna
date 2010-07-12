.class public Landroid/location/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_DEGREES:I = 0x0

.field public static final FORMAT_MINUTES:I = 0x1

.field public static final FORMAT_SECONDS:I = 0x2


# instance fields
.field private mAccuracy:F

.field private mAltitude:D

.field private mBearing:F

.field private mDistance:F

.field private mExtras:Landroid/os/Bundle;

.field private mHasAccuracy:Z

.field private mHasAltitude:Z

.field private mHasBearing:Z

.field private mHasSpeed:Z

.field private mInitialBearing:F

.field private mLat1:D

.field private mLat2:D

.field private mLatitude:D

.field private mLon1:D

.field private mLon2:D

.field private mLongitude:D

.field private mProvider:Ljava/lang/String;

.field private mResults:[F

.field private mSpeed:F

.field private mTime:J

.field private mVerticalAccuracy:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 742
    new-instance v0, Landroid/location/Location$1;

    invoke-direct {v0}, Landroid/location/Location$1;-><init>()V

    sput-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .registers 8
    .parameter "l"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 62
    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    .line 63
    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    .line 64
    iput-boolean v5, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 65
    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    .line 66
    iput-boolean v5, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 67
    iput v4, p0, Landroid/location/Location;->mSpeed:F

    .line 68
    iput-boolean v5, p0, Landroid/location/Location;->mHasBearing:Z

    .line 69
    iput v4, p0, Landroid/location/Location;->mBearing:F

    .line 70
    iput-boolean v5, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 71
    iput v4, p0, Landroid/location/Location;->mAccuracy:F

    .line 73
    iput v4, p0, Landroid/location/Location;->mVerticalAccuracy:F

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 79
    iput-wide v2, p0, Landroid/location/Location;->mLat1:D

    .line 80
    iput-wide v2, p0, Landroid/location/Location;->mLon1:D

    .line 81
    iput-wide v2, p0, Landroid/location/Location;->mLat2:D

    .line 82
    iput-wide v2, p0, Landroid/location/Location;->mLon2:D

    .line 83
    iput v4, p0, Landroid/location/Location;->mDistance:F

    .line 84
    iput v4, p0, Landroid/location/Location;->mInitialBearing:F

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/location/Location;->mResults:[F

    .line 118
    invoke-virtual {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .parameter "provider"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 62
    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    .line 63
    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    .line 64
    iput-boolean v5, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 65
    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    .line 66
    iput-boolean v5, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 67
    iput v4, p0, Landroid/location/Location;->mSpeed:F

    .line 68
    iput-boolean v5, p0, Landroid/location/Location;->mHasBearing:Z

    .line 69
    iput v4, p0, Landroid/location/Location;->mBearing:F

    .line 70
    iput-boolean v5, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 71
    iput v4, p0, Landroid/location/Location;->mAccuracy:F

    .line 73
    iput v4, p0, Landroid/location/Location;->mVerticalAccuracy:F

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 79
    iput-wide v2, p0, Landroid/location/Location;->mLat1:D

    .line 80
    iput-wide v2, p0, Landroid/location/Location;->mLon1:D

    .line 81
    iput-wide v2, p0, Landroid/location/Location;->mLat2:D

    .line 82
    iput-wide v2, p0, Landroid/location/Location;->mLon2:D

    .line 83
    iput v4, p0, Landroid/location/Location;->mDistance:F

    .line 84
    iput v4, p0, Landroid/location/Location;->mInitialBearing:F

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/location/Location;->mResults:[F

    .line 110
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 111
    return-void
.end method

.method static synthetic access$002(Landroid/location/Location;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    return-wide p1
.end method

.method static synthetic access$1002(Landroid/location/Location;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Landroid/location/Location;->mAccuracy:F

    return p1
.end method

.method static synthetic access$102(Landroid/location/Location;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    return-wide p1
.end method

.method static synthetic access$1102(Landroid/location/Location;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Landroid/location/Location;->mVerticalAccuracy:F

    return p1
.end method

.method static synthetic access$1202(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$202(Landroid/location/Location;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    return-wide p1
.end method

.method static synthetic access$302(Landroid/location/Location;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Landroid/location/Location;->mHasAltitude:Z

    return p1
.end method

.method static synthetic access$402(Landroid/location/Location;D)D
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    return-wide p1
.end method

.method static synthetic access$502(Landroid/location/Location;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Landroid/location/Location;->mHasSpeed:Z

    return p1
.end method

.method static synthetic access$602(Landroid/location/Location;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    return p1
.end method

.method static synthetic access$702(Landroid/location/Location;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Landroid/location/Location;->mHasBearing:Z

    return p1
.end method

.method static synthetic access$802(Landroid/location/Location;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Landroid/location/Location;->mBearing:F

    return p1
.end method

.method static synthetic access$902(Landroid/location/Location;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Landroid/location/Location;->mHasAccuracy:Z

    return p1
.end method

.method private static computeDistanceAndBearing(DDDD[F)V
    .registers 72
    .parameter "lat1"
    .parameter "lon1"
    .parameter "lat2"
    .parameter "lon2"
    .parameter "results"

    .prologue
    .line 289
    const/16 v4, 0x14

    .line 291
    .local v4, MAXITERS:I
    const-wide v5, 0x3f91df46a2529d39L

    mul-double p0, p0, v5

    .line 292
    const-wide v5, 0x3f91df46a2529d39L

    mul-double p4, p4, v5

    .line 293
    const-wide v5, 0x3f91df46a2529d39L

    mul-double p2, p2, v5

    .line 294
    const-wide v5, 0x3f91df46a2529d39L

    mul-double p6, p6, v5

    .line 296
    const-wide v5, 0x415854a640000000L

    .line 297
    .local v5, a:D
    const-wide v7, 0x41583fc4141bda51L

    .line 298
    .local v7, b:D
    sub-double v9, v5, v7

    div-double v25, v9, v5

    .line 299
    .local v25, f:D
    mul-double/2addr v5, v5

    mul-double v9, v7, v7

    sub-double/2addr v5, v9

    mul-double v9, v7, v7

    div-double/2addr v5, v9

    .line 301
    .local v5, aSqMinusBSqOverBSq:D
    sub-double p6, p6, p2

    .line 302
    .local p6, L:D
    const-wide/16 p2, 0x0

    .line 303
    .local p2, A:D
    const-wide/high16 v9, 0x3ff0

    sub-double v9, v9, v25

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide p0

    .end local p0
    mul-double p0, p0, v9

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    .line 304
    .local p0, U1:D
    const-wide/high16 v9, 0x3ff0

    sub-double v9, v9, v25

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->tan(D)D

    move-result-wide p4

    .end local p4
    mul-double p4, p4, v9

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->atan(D)D

    move-result-wide p4

    .line 306
    .local p4, U2:D
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    .line 307
    .local v19, cosU1:D
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    .line 308
    .local v23, cosU2:D
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    .line 309
    .local v38, sinU1:D
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v42

    .line 310
    .local v42, sinU2:D
    mul-double v21, v19, v23

    .line 311
    .local v21, cosU1cosU2:D
    mul-double v40, v38, v42

    .line 313
    .local v40, sinU1sinU2:D
    const-wide/16 v27, 0x0

    .line 314
    .local v27, sigma:D
    const-wide/16 v13, 0x0

    .line 315
    .local v13, deltaSigma:D
    const-wide/16 v11, 0x0

    .line 316
    .local v11, cosSqAlpha:D
    const-wide/16 p0, 0x0

    .line 317
    .local p0, cos2SM:D
    const-wide/16 v9, 0x0

    .line 318
    .local v9, cosSigma:D
    const-wide/16 v31, 0x0

    .line 319
    .local v31, sinSigma:D
    const-wide/16 p4, 0x0

    .line 320
    .local p4, cosLambda:D
    const-wide/16 v29, 0x0

    .line 322
    .local v29, sinLambda:D
    move-wide/from16 v16, p6

    .line 323
    .local v16, lambda:D
    const/4 v15, 0x0

    .local v15, iter:I
    move/from16 v54, v15

    .end local v15           #iter:I
    .local v54, iter:I
    move-wide/from16 v55, v16

    .end local v16           #lambda:D
    .local v55, lambda:D
    move-wide/from16 v15, v55

    .end local v55           #lambda:D
    .local v15, lambda:D
    move-wide/from16 v17, v27

    .end local v27           #sigma:D
    .local v17, sigma:D
    move/from16 v27, v54

    .end local v54           #iter:I
    .local v27, iter:I
    move-wide/from16 v57, v31

    .end local v31           #sinSigma:D
    .local v57, sinSigma:D
    move-wide/from16 v59, p0

    .end local p0           #cos2SM:D
    .local v59, cos2SM:D
    move-wide/from16 p0, p2

    .end local p2           #A:D
    .local p0, A:D
    move-wide/from16 p2, v59

    .end local v59           #cos2SM:D
    .local p2, cos2SM:D
    move-wide/from16 v61, v29

    .end local v29           #sinLambda:D
    .local v61, sinLambda:D
    move-wide/from16 v28, v61

    .end local v61           #sinLambda:D
    .local v28, sinLambda:D
    move-wide/from16 v30, v57

    .end local v57           #sinSigma:D
    .local v30, sinSigma:D
    :goto_92
    move/from16 v0, v27

    move v1, v4

    if-ge v0, v1, :cond_256

    .line 324
    move-wide/from16 v28, v15

    .line 325
    .local v28, lambdaOrig:D
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    .line 326
    .end local p4           #cosLambda:D
    .local v13, cosLambda:D
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v34

    .line 327
    .local v34, sinLambda:D
    mul-double p0, v23, v34

    .line 328
    .local p0, t1:D
    mul-double p2, v19, v42

    mul-double p4, v38, v23

    mul-double p4, p4, v13

    sub-double p2, p2, p4

    .line 329
    .local p2, t2:D
    mul-double p0, p0, p0

    mul-double p2, p2, p2

    add-double p0, p0, p2

    .line 330
    .local p0, sinSqSigma:D
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->sqrt(D)D

    .end local p2           #t2:D
    move-result-wide v36

    .line 331
    .end local v30           #sinSigma:D
    .local v36, sinSigma:D
    mul-double p0, v21, v13

    add-double v15, v40, p0

    .line 332
    .end local v9           #cosSigma:D
    .local v15, cosSigma:D
    move-wide/from16 v0, v36

    move-wide v2, v15

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    .end local p0           #sinSqSigma:D
    move-result-wide v30

    .line 333
    .end local v17           #sigma:D
    .local v30, sigma:D
    const-wide/16 p0, 0x0

    cmpl-double p0, v36, p0

    if-nez p0, :cond_22c

    const-wide/16 p0, 0x0

    move-wide/from16 v32, p0

    .line 335
    .local v32, sinAlpha:D
    :goto_ca
    const-wide/high16 p0, 0x3ff0

    mul-double p2, v32, v32

    sub-double v17, p0, p2

    .line 336
    .end local v11           #cosSqAlpha:D
    .local v17, cosSqAlpha:D
    const-wide/16 p0, 0x0

    cmpl-double p0, v17, p0

    if-nez p0, :cond_234

    const-wide/16 p0, 0x0

    move-wide/from16 v9, p0

    .line 339
    .local v9, cos2SM:D
    :goto_da
    mul-double p2, v17, v5

    .line 340
    .local p2, uSquared:D
    const-wide/high16 p0, 0x3ff0

    const-wide/high16 p4, 0x40d0

    div-double p4, p2, p4

    const-wide/high16 v11, 0x40b0

    const-wide/high16 v44, -0x3f78

    const-wide/high16 v46, 0x4074

    const-wide v48, 0x4065e00000000000L

    mul-double v48, v48, p2

    sub-double v46, v46, v48

    mul-double v46, v46, p2

    add-double v44, v44, v46

    mul-double v44, v44, p2

    add-double v11, v11, v44

    mul-double p4, p4, v11

    add-double p0, p0, p4

    .line 343
    .local p0, A:D
    const-wide/high16 p4, 0x4090

    div-double p4, p2, p4

    const-wide/high16 v11, 0x4070

    const-wide/high16 v44, -0x3fa0

    const-wide v46, 0x4052800000000000L

    const-wide v48, 0x4047800000000000L

    mul-double v48, v48, p2

    sub-double v46, v46, v48

    mul-double v46, v46, p2

    add-double v44, v44, v46

    mul-double p2, p2, v44

    add-double p2, p2, v11

    mul-double p2, p2, p4

    .line 346
    .local p2, B:D
    const-wide/high16 p4, 0x4030

    div-double p4, v25, p4

    mul-double p4, p4, v17

    const-wide/high16 v11, 0x4010

    const-wide/high16 v44, 0x4010

    const-wide/high16 v46, 0x4008

    mul-double v46, v46, v17

    sub-double v44, v44, v46

    mul-double v44, v44, v25

    add-double v11, v11, v44

    mul-double p4, p4, v11

    .line 349
    .local p4, C:D
    mul-double v11, v9, v9

    .line 350
    .local v11, cos2SMSq:D
    mul-double v44, p2, v36

    const-wide/high16 v46, 0x4010

    div-double v46, p2, v46

    const-wide/high16 v48, -0x4010

    const-wide/high16 v50, 0x4000

    mul-double v50, v50, v11

    add-double v48, v48, v50

    mul-double v48, v48, v15

    const-wide/high16 v50, 0x4018

    div-double p2, p2, v50

    mul-double p2, p2, v9

    const-wide/high16 v50, -0x3ff8

    const-wide/high16 v52, 0x4010

    mul-double v52, v52, v36

    mul-double v52, v52, v36

    add-double v50, v50, v52

    mul-double p2, p2, v50

    const-wide/high16 v50, -0x3ff8

    const-wide/high16 v52, 0x4010

    mul-double v11, v11, v52

    add-double v11, v11, v50

    mul-double p2, p2, v11

    sub-double p2, v48, p2

    mul-double p2, p2, v46

    add-double p2, p2, v9

    mul-double v11, v44, p2

    .line 357
    .local v11, deltaSigma:D
    const-wide/high16 p2, 0x3ff0

    sub-double p2, p2, p4

    mul-double p2, p2, v25

    mul-double p2, p2, v32

    mul-double v32, p4, v36

    mul-double p4, p4, v15

    const-wide/high16 v44, -0x4010

    const-wide/high16 v46, 0x4000

    mul-double v46, v46, v9

    mul-double v46, v46, v9

    add-double v44, v44, v46

    mul-double p4, p4, v44

    add-double p4, p4, v9

    mul-double p4, p4, v32

    add-double p4, p4, v30

    mul-double p2, p2, p4

    add-double p4, p6, p2

    .line 363
    .local p4, lambda:D
    sub-double p2, p4, v28

    div-double p2, p2, p4

    .line 364
    .local p2, delta:D
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    .end local v32           #sinAlpha:D
    move-result-wide p2

    .end local p2           #delta:D
    const-wide v28, 0x3d719799812dea11L

    cmpg-double p2, p2, v28

    if-gez p2, :cond_240

    .end local v28           #lambdaOrig:D
    move-wide/from16 p6, v15

    .end local v15           #cosSigma:D
    .local p6, cosSigma:D
    move-wide/from16 p2, v9

    .end local v9           #cos2SM:D
    .local p2, cos2SM:D
    move-wide/from16 v4, v17

    .end local v5           #aSqMinusBSqOverBSq:D
    .end local v17           #cosSqAlpha:D
    .local v4, cosSqAlpha:D
    move-wide/from16 v17, v36

    .end local v36           #sinSigma:D
    .local v17, sinSigma:D
    move-wide/from16 v15, v34

    .end local v34           #sinLambda:D
    .local v15, sinLambda:D
    move-wide v9, v11

    .end local v11           #deltaSigma:D
    .local v9, deltaSigma:D
    move-wide/from16 v11, p4

    .end local p4           #lambda:D
    .local v11, lambda:D
    move-wide/from16 p4, v13

    .end local v13           #cosLambda:D
    .local p4, cosLambda:D
    move-wide/from16 v13, v30

    .line 369
    .end local v30           #sigma:D
    .local v13, sigma:D
    :goto_1ad
    mul-double p0, p0, v7

    sub-double p2, v13, v9

    mul-double p0, p0, p2

    move-wide/from16 v0, p0

    double-to-float v0, v0

    move/from16 p0, v0

    .line 370
    .local p0, distance:F
    const/16 p1, 0x0

    aput p0, p8, p1

    .line 371
    .end local p2           #cos2SM:D
    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 p0, v0

    .end local p0           #distance:F
    const/16 p1, 0x1

    move/from16 v0, p0

    move/from16 v1, p1

    if-le v0, v1, :cond_22b

    .line 372
    mul-double p0, v23, v15

    mul-double p2, v19, v42

    mul-double p6, v38, v23

    mul-double p6, p6, p4

    sub-double p2, p2, p6

    invoke-static/range {p0 .. p3}, Ljava/lang/Math;->atan2(DD)D

    .end local p6           #cosSigma:D
    move-result-wide p0

    move-wide/from16 v0, p0

    double-to-float v0, v0

    move/from16 p0, v0

    .line 374
    .local p0, initialBearing:F
    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 p0, v0

    const-wide p2, 0x404ca5dc1a63c1f8L

    mul-double p0, p0, p2

    move-wide/from16 v0, p0

    double-to-float v0, v0

    move/from16 p0, v0

    .line 375
    const/16 p1, 0x1

    aput p0, p8, p1

    .line 376
    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 p0, v0

    .end local p0           #initialBearing:F
    const/16 p1, 0x2

    move/from16 v0, p0

    move/from16 v1, p1

    if-le v0, v1, :cond_22b

    .line 377
    mul-double p0, v19, v15

    move-wide/from16 v0, v38

    neg-double v0, v0

    move-wide/from16 p2, v0

    mul-double p2, p2, v23

    mul-double p6, v19, v42

    mul-double p4, p4, p6

    add-double p2, p2, p4

    invoke-static/range {p0 .. p3}, Ljava/lang/Math;->atan2(DD)D

    .end local p4           #cosLambda:D
    move-result-wide p0

    move-wide/from16 v0, p0

    double-to-float v0, v0

    move/from16 p0, v0

    .line 379
    .local p0, finalBearing:F
    move/from16 v0, p0

    float-to-double v0, v0

    move-wide/from16 p0, v0

    const-wide p2, 0x404ca5dc1a63c1f8L

    mul-double p0, p0, p2

    move-wide/from16 v0, p0

    double-to-float v0, v0

    move/from16 p0, v0

    .line 380
    const/16 p1, 0x2

    aput p0, p8, p1

    .line 383
    .end local p0           #finalBearing:F
    :cond_22b
    return-void

    .line 333
    .end local v9           #deltaSigma:D
    .end local v17           #sinSigma:D
    .local v4, MAXITERS:I
    .restart local v5       #aSqMinusBSqOverBSq:D
    .local v11, cosSqAlpha:D
    .local v13, cosLambda:D
    .local v15, cosSigma:D
    .restart local v28       #lambdaOrig:D
    .restart local v30       #sigma:D
    .restart local v34       #sinLambda:D
    .restart local v36       #sinSigma:D
    .local p6, L:D
    :cond_22c
    mul-double p0, v21, v34

    div-double p0, p0, v36

    move-wide/from16 v32, p0

    goto/16 :goto_ca

    .line 336
    .end local v11           #cosSqAlpha:D
    .local v17, cosSqAlpha:D
    .restart local v32       #sinAlpha:D
    :cond_234
    const-wide/high16 p0, 0x4000

    mul-double p0, p0, v40

    div-double p0, p0, v17

    sub-double p0, v15, p0

    move-wide/from16 v9, p0

    goto/16 :goto_da

    .line 323
    .end local v28           #lambdaOrig:D
    .end local v32           #sinAlpha:D
    .local v9, cos2SM:D
    .local v11, deltaSigma:D
    .local p0, A:D
    .local p4, lambda:D
    :cond_240
    add-int/lit8 p2, v27, 0x1

    .end local v27           #iter:I
    .local p2, iter:I
    move/from16 v27, p2

    .end local p2           #iter:I
    .restart local v27       #iter:I
    move-wide/from16 v28, v34

    .end local v34           #sinLambda:D
    .local v28, sinLambda:D
    move-wide/from16 p2, v9

    .end local v9           #cos2SM:D
    .local p2, cos2SM:D
    move-wide v9, v15

    .end local v15           #cosSigma:D
    .local v9, cosSigma:D
    move-wide/from16 v15, p4

    .end local p4           #lambda:D
    .local v15, lambda:D
    move-wide/from16 p4, v13

    .end local v13           #cosLambda:D
    .local p4, cosLambda:D
    move-wide v13, v11

    .end local v11           #deltaSigma:D
    .local v13, deltaSigma:D
    move-wide/from16 v11, v17

    .end local v17           #cosSqAlpha:D
    .local v11, cosSqAlpha:D
    move-wide/from16 v17, v30

    .end local v30           #sigma:D
    .local v17, sigma:D
    move-wide/from16 v30, v36

    .end local v36           #sinSigma:D
    .local v30, sinSigma:D
    goto/16 :goto_92

    :cond_256
    move-wide/from16 p6, v9

    .end local v9           #cosSigma:D
    .local p6, cosSigma:D
    move-wide v4, v11

    .end local v5           #aSqMinusBSqOverBSq:D
    .end local v11           #cosSqAlpha:D
    .local v4, cosSqAlpha:D
    move-wide v11, v15

    .end local v15           #lambda:D
    .local v11, lambda:D
    move-wide v9, v13

    .end local v13           #deltaSigma:D
    .local v9, deltaSigma:D
    move-wide/from16 v15, v28

    .end local v28           #sinLambda:D
    .local v15, sinLambda:D
    move-wide/from16 v13, v17

    .end local v17           #sigma:D
    .local v13, sigma:D
    move-wide/from16 v17, v30

    .end local v30           #sinSigma:D
    .local v17, sinSigma:D
    goto/16 :goto_1ad
.end method

.method public static convert(Ljava/lang/String;)D
    .registers 12
    .parameter "coordinate"

    .prologue
    .line 224
    if-nez p0, :cond_a

    .line 225
    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0
    const-string v0, "coordinate"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 228
    .restart local p0
    :cond_a
    const/4 v0, 0x0

    .line 229
    .local v0, negative:Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_136

    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v0           #negative:Z
    move-result-object p0

    .line 231
    const/4 v0, 0x1

    .restart local v0       #negative:Z
    move v4, v0

    .line 234
    .end local v0           #negative:Z
    .local v4, negative:Z
    :goto_1b
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v0, ":"

    invoke-direct {v3, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .local v3, st:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 236
    .local v1, tokens:I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_42

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #tokens:I
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coordinate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    .restart local v1       #tokens:I
    .restart local p0
    :cond_42
    :try_start_42
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, degrees:Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_53

    .line 243
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 244
    .end local v1           #tokens:I
    .local v0, val:D
    if-eqz v4, :cond_51

    neg-double v2, v0

    .line 278
    .end local v3           #st:Ljava/util/StringTokenizer;
    :goto_50
    return-wide v2

    .restart local v3       #st:Ljava/util/StringTokenizer;
    :cond_51
    move-wide v2, v0

    .line 244
    goto :goto_50

    .line 247
    .local v0, degrees:Ljava/lang/String;
    .restart local v1       #tokens:I
    :cond_53
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, minutes:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 250
    .local v0, deg:I
    const-wide/16 v5, 0x0

    .line 252
    .local v5, sec:D
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 253
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .end local v1           #minutes:Ljava/lang/String;
    int-to-double v1, v1

    .line 254
    .local v1, min:D
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, seconds:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    move-wide v2, v1

    .line 260
    .end local v1           #min:D
    .end local v3           #seconds:Ljava/lang/String;
    .local v2, min:D
    :goto_71
    if-eqz v4, :cond_ca

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_ca

    const-wide/16 v7, 0x0

    cmpl-double v1, v2, v7

    if-nez v1, :cond_ca

    const-wide/16 v7, 0x0

    cmpl-double v1, v5, v7

    if-nez v1, :cond_ca

    const/4 v1, 0x1

    .line 264
    .local v1, isNegative180:Z
    :goto_84
    int-to-double v7, v0

    const-wide/16 v9, 0x0

    cmpg-double v7, v7, v9

    if-ltz v7, :cond_91

    const/16 v7, 0xb3

    if-le v0, v7, :cond_cc

    if-nez v1, :cond_cc

    .line 265
    :cond_91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .end local v0           #deg:I
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #isNegative180:Z
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coordinate="

    .end local v2           #min:D
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_aa
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_aa} :catch_aa

    .line 279
    .end local v5           #sec:D
    :catch_aa
    move-exception v0

    .line 280
    .local v0, nfe:Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .end local v0           #nfe:Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coordinate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    .local v0, deg:I
    .local v1, minutes:Ljava/lang/String;
    .local v3, st:Ljava/util/StringTokenizer;
    .restart local v5       #sec:D
    .restart local p0
    :cond_c4
    :try_start_c4
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .local v1, min:D
    move-wide v2, v1

    .end local v1           #min:D
    .end local v3           #st:Ljava/util/StringTokenizer;
    .restart local v2       #min:D
    goto :goto_71

    .line 260
    :cond_ca
    const/4 v1, 0x0

    goto :goto_84

    .line 267
    .local v1, isNegative180:Z
    :cond_cc
    const-wide/16 v7, 0x0

    cmpg-double v1, v2, v7

    if-ltz v1, :cond_db

    .end local v1           #isNegative180:Z
    const-wide v7, 0x404d800000000000L

    cmpl-double v1, v2, v7

    if-lez v1, :cond_f4

    .line 268
    :cond_db
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .end local v0           #deg:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coordinate="

    .end local v2           #min:D
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    .restart local v0       #deg:I
    .restart local v2       #min:D
    :cond_f4
    const-wide/16 v7, 0x0

    cmpg-double v1, v5, v7

    if-ltz v1, :cond_103

    const-wide v7, 0x404d800000000000L

    cmpl-double v1, v5, v7

    if-lez v1, :cond_11c

    .line 272
    :cond_103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .end local v0           #deg:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "coordinate="

    .end local v2           #min:D
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11c
    .catch Ljava/lang/NumberFormatException; {:try_start_c4 .. :try_end_11c} :catch_aa

    .line 276
    .restart local v0       #deg:I
    .restart local v2       #min:D
    :cond_11c
    int-to-double v0, v0

    const-wide v7, 0x40ac200000000000L

    mul-double/2addr v0, v7

    const-wide/high16 v7, 0x404e

    mul-double/2addr v2, v7

    add-double/2addr v0, v2

    add-double/2addr v0, v5

    .line 277
    .local v0, val:D
    const-wide v2, 0x40ac200000000000L

    div-double/2addr v0, v2

    .line 278
    if-eqz v4, :cond_133

    .end local v2           #min:D
    neg-double v2, v0

    goto/16 :goto_50

    :cond_133
    move-wide v2, v0

    goto/16 :goto_50

    .end local v4           #negative:Z
    .end local v5           #sec:D
    .local v0, negative:Z
    :cond_136
    move v4, v0

    .end local v0           #negative:Z
    .restart local v4       #negative:Z
    goto/16 :goto_1b
.end method

.method public static convert(DI)Ljava/lang/String;
    .registers 14
    .parameter "coordinate"
    .parameter "outputType"

    .prologue
    const/16 v10, 0x3a

    const/4 v9, 0x1

    const-wide/high16 v7, 0x404e

    const/4 v6, 0x2

    .line 176
    const-wide v4, -0x3f99800000000000L

    cmpg-double v4, p0, v4

    if-ltz v4, :cond_1e

    const-wide v4, 0x4066800000000000L

    cmpl-double v4, p0, v4

    if-gtz v4, :cond_1e

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 178
    :cond_1e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "coordinate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 180
    :cond_37
    if-eqz p2, :cond_56

    if-eq p2, v9, :cond_56

    if-eq p2, v6, :cond_56

    .line 183
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "outputType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 186
    :cond_56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v3, sb:Ljava/lang/StringBuilder;
    const-wide/16 v4, 0x0

    cmpg-double v4, p0, v4

    if-gez v4, :cond_67

    .line 190
    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    neg-double p0, p0

    .line 194
    :cond_67
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v4, "###.#####"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, df:Ljava/text/DecimalFormat;
    if-eq p2, v9, :cond_72

    if-ne p2, v6, :cond_90

    .line 196
    :cond_72
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 197
    .local v0, degrees:I
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    int-to-double v4, v0

    sub-double/2addr p0, v4

    .line 200
    mul-double/2addr p0, v7

    .line 201
    if-ne p2, v6, :cond_90

    .line 202
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 203
    .local v2, minutes:I
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    int-to-double v4, v2

    sub-double/2addr p0, v4

    .line 206
    mul-double/2addr p0, v7

    .line 209
    .end local v0           #degrees:I
    .end local v2           #minutes:I
    :cond_90
    invoke-virtual {v1, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static distanceBetween(DDDD[F)V
    .registers 11
    .parameter "startLatitude"
    .parameter "startLongitude"
    .parameter "endLatitude"
    .parameter "endLongitude"
    .parameter "results"

    .prologue
    .line 405
    if-eqz p8, :cond_6

    array-length v0, p8

    const/4 v1, 0x1

    if-ge v0, v1, :cond_e

    .line 406
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "results is null or has length < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_e
    invoke-static/range {p0 .. p8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    .line 410
    return-void
.end method


# virtual methods
.method public bearingTo(Landroid/location/Location;)F
    .registers 12
    .parameter "dest"

    .prologue
    .line 449
    iget-object v9, p0, Landroid/location/Location;->mResults:[F

    monitor-enter v9

    .line 451
    :try_start_3
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_23

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_23

    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat2:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_23

    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon2:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4e

    .line 453
    :cond_23
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v4, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v6, p1, Landroid/location/Location;->mLongitude:D

    iget-object v8, p0, Landroid/location/Location;->mResults:[F

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    .line 455
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat1:D

    .line 456
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon1:D

    .line 457
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat2:D

    .line 458
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon2:D

    .line 459
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mDistance:F

    .line 460
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mInitialBearing:F

    .line 462
    :cond_4e
    iget v0, p0, Landroid/location/Location;->mInitialBearing:F

    monitor-exit v9

    return v0

    .line 463
    :catchall_52
    move-exception v0

    monitor-exit v9
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 771
    const/4 v0, 0x0

    return v0
.end method

.method public distanceTo(Landroid/location/Location;)F
    .registers 12
    .parameter "dest"

    .prologue
    .line 422
    iget-object v9, p0, Landroid/location/Location;->mResults:[F

    monitor-enter v9

    .line 423
    :try_start_3
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_23

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_23

    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat2:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_23

    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon2:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4e

    .line 425
    :cond_23
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v4, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v6, p1, Landroid/location/Location;->mLongitude:D

    iget-object v8, p0, Landroid/location/Location;->mResults:[F

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    .line 427
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat1:D

    .line 428
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon1:D

    .line 429
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat2:D

    .line 430
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon2:D

    .line 431
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mDistance:F

    .line 432
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mInitialBearing:F

    .line 434
    :cond_4e
    iget v0, p0, Landroid/location/Location;->mDistance:F

    monitor-exit v9

    return v0

    .line 435
    :catchall_52
    move-exception v0

    monitor-exit v9
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 6
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/Location;->mTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/Location;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/Location;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHasAltitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/location/Location;->mHasAltitude:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAltitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHasSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/location/Location;->mHasSpeed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHasBearing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/location/Location;->mHasBearing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBearing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHasAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/location/Location;->mHasAccuracy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/Location;->mAccuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mVerticalAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/Location;->mVerticalAccuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public getAccuracy()F
    .registers 2

    .prologue
    .line 646
    iget v0, p0, Landroid/location/Location;->mAccuracy:F

    return v0
.end method

.method public getAltitude()D
    .registers 3

    .prologue
    .line 538
    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    return-wide v0
.end method

.method public getBearing()F
    .registers 2

    .prologue
    .line 606
    iget v0, p0, Landroid/location/Location;->mBearing:F

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 712
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHorizontalAccuracy()F
    .registers 2

    .prologue
    .line 675
    iget v0, p0, Landroid/location/Location;->mAccuracy:F

    return v0
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 501
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 515
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .registers 2

    .prologue
    .line 572
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    return v0
.end method

.method public getTime()J
    .registers 3

    .prologue
    .line 486
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    return-wide v0
.end method

.method public getVerticalAccuracy()F
    .registers 2

    .prologue
    .line 681
    iget v0, p0, Landroid/location/Location;->mVerticalAccuracy:F

    return v0
.end method

.method public hasAccuracy()Z
    .registers 2

    .prologue
    .line 638
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    return v0
.end method

.method public hasAltitude()Z
    .registers 2

    .prologue
    .line 530
    iget-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    return v0
.end method

.method public hasBearing()Z
    .registers 2

    .prologue
    .line 598
    iget-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    return v0
.end method

.method public hasSpeed()Z
    .registers 2

    .prologue
    .line 564
    iget-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    return v0
.end method

.method public removeAccuracy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 690
    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    .line 692
    iput v0, p0, Landroid/location/Location;->mVerticalAccuracy:F

    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 695
    return-void
.end method

.method public removeAltitude()V
    .registers 3

    .prologue
    .line 555
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 556
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 557
    return-void
.end method

.method public removeBearing()V
    .registers 2

    .prologue
    .line 629
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 630
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    .line 631
    return-void
.end method

.method public removeSpeed()V
    .registers 2

    .prologue
    .line 589
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 590
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 591
    return-void
.end method

.method public reset()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 147
    iput-object v6, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 149
    iput-wide v4, p0, Landroid/location/Location;->mLatitude:D

    .line 150
    iput-wide v4, p0, Landroid/location/Location;->mLongitude:D

    .line 151
    iput-boolean v3, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 152
    iput-wide v4, p0, Landroid/location/Location;->mAltitude:D

    .line 153
    iput-boolean v3, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 154
    iput v2, p0, Landroid/location/Location;->mSpeed:F

    .line 155
    iput-boolean v3, p0, Landroid/location/Location;->mHasBearing:Z

    .line 156
    iput v2, p0, Landroid/location/Location;->mBearing:F

    .line 157
    iput-boolean v3, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 158
    iput v2, p0, Landroid/location/Location;->mAccuracy:F

    .line 160
    iput v2, p0, Landroid/location/Location;->mVerticalAccuracy:F

    .line 162
    iput-object v6, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 163
    return-void
.end method

.method public set(Landroid/location/Location;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 125
    iget-object v0, p1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 126
    iget-wide v0, p1, Landroid/location/Location;->mTime:J

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 127
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    .line 128
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    .line 129
    iget-boolean v0, p1, Landroid/location/Location;->mHasAltitude:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 130
    iget-wide v0, p1, Landroid/location/Location;->mAltitude:D

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 131
    iget-boolean v0, p1, Landroid/location/Location;->mHasSpeed:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 132
    iget v0, p1, Landroid/location/Location;->mSpeed:F

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 133
    iget-boolean v0, p1, Landroid/location/Location;->mHasBearing:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    .line 134
    iget v0, p1, Landroid/location/Location;->mBearing:F

    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 135
    iget-boolean v0, p1, Landroid/location/Location;->mHasAccuracy:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 136
    iget v0, p1, Landroid/location/Location;->mAccuracy:F

    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    .line 138
    iget v0, p1, Landroid/location/Location;->mVerticalAccuracy:F

    iput v0, p0, Landroid/location/Location;->mVerticalAccuracy:F

    .line 140
    iget-object v0, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_3c

    const/4 v0, 0x0

    :goto_39
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 141
    return-void

    .line 140
    :cond_3c
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_39
.end method

.method public setAccuracy(F)V
    .registers 3
    .parameter "accuracy"

    .prologue
    .line 654
    iput p1, p0, Landroid/location/Location;->mAccuracy:F

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 656
    return-void
.end method

.method public setAltitude(D)V
    .registers 4
    .parameter "altitude"

    .prologue
    .line 546
    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 548
    return-void
.end method

.method public setBearing(F)V
    .registers 4
    .parameter "bearing"

    .prologue
    const/high16 v1, 0x43b4

    .line 614
    :goto_2
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    .line 615
    add-float/2addr p1, v1

    goto :goto_2

    .line 617
    :cond_9
    :goto_9
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_f

    .line 618
    sub-float/2addr p1, v1

    goto :goto_9

    .line 620
    :cond_f
    iput p1, p0, Landroid/location/Location;->mBearing:F

    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    .line 622
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 3
    .parameter "extras"

    .prologue
    .line 720
    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 721
    return-void

    .line 720
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_3
.end method

.method public setHorizontalAccuracy(F)V
    .registers 2
    .parameter "horizontalAccuracy"

    .prologue
    .line 663
    iput p1, p0, Landroid/location/Location;->mAccuracy:F

    .line 664
    return-void
.end method

.method public setLatitude(D)V
    .registers 3
    .parameter "latitude"

    .prologue
    .line 508
    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    .line 509
    return-void
.end method

.method public setLongitude(D)V
    .registers 3
    .parameter "longitude"

    .prologue
    .line 522
    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    .line 523
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .registers 2
    .parameter "provider"

    .prologue
    .line 478
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 479
    return-void
.end method

.method public setSpeed(F)V
    .registers 3
    .parameter "speed"

    .prologue
    .line 580
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 582
    return-void
.end method

.method public setTime(J)V
    .registers 3
    .parameter "time"

    .prologue
    .line 494
    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    .line 495
    return-void
.end method

.method public setVerticalAccuracy(F)V
    .registers 2
    .parameter "verticalAccuracy"

    .prologue
    .line 669
    iput p1, p0, Landroid/location/Location;->mVerticalAccuracy:F

    .line 670
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location[mProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/Location;->mTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/Location;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/Location;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mHasAltitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/location/Location;->mHasAltitude:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mAltitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mHasSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/location/Location;->mHasSpeed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mHasBearing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/location/Location;->mHasBearing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mBearing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mHasAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/location/Location;->mHasAccuracy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/Location;->mAccuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mVerticalAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/Location;->mVerticalAccuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 775
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 776
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 777
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 778
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 779
    iget-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    if-eqz v0, :cond_55

    move v0, v3

    :goto_1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 781
    iget-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    if-eqz v0, :cond_57

    move v0, v3

    :goto_28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 783
    iget-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    if-eqz v0, :cond_59

    move v0, v3

    :goto_35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    iget v0, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 785
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-eqz v0, :cond_5b

    move v0, v3

    :goto_42
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    iget v0, p0, Landroid/location/Location;->mAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 788
    iget v0, p0, Landroid/location/Location;->mVerticalAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 790
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 791
    return-void

    :cond_55
    move v0, v2

    .line 779
    goto :goto_1b

    :cond_57
    move v0, v2

    .line 781
    goto :goto_28

    :cond_59
    move v0, v2

    .line 783
    goto :goto_35

    :cond_5b
    move v0, v2

    .line 785
    goto :goto_42
.end method
