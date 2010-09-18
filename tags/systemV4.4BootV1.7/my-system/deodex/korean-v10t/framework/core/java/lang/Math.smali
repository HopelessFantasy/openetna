.class public final Ljava/lang/Math;
.super Ljava/lang/Object;
.source "Math.java"


# static fields
.field public static final E:D = 2.718281828459045

.field public static final PI:D = 3.141592653589793

.field private static random:Ljava/util/Random;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static native IEEEremainder(DD)D
.end method

.method public static abs(D)D
    .registers 6
    .parameter "d"

    .prologue
    .line 69
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 70
    .local v0, bits:J
    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    .line 71
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2
.end method

.method public static abs(F)F
    .registers 3
    .parameter "f"

    .prologue
    .line 93
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 94
    .local v0, bits:I
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 95
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1
.end method

.method public static abs(I)I
    .registers 2
    .parameter "i"

    .prologue
    .line 112
    if-ltz p0, :cond_4

    move v0, p0

    :goto_3
    return v0

    :cond_4
    neg-int v0, p0

    goto :goto_3
.end method

.method public static abs(J)J
    .registers 4
    .parameter "l"

    .prologue
    .line 126
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_8

    move-wide v0, p0

    :goto_7
    return-wide v0

    :cond_8
    neg-long v0, p0

    goto :goto_7
.end method

.method public static native acos(D)D
.end method

.method public static native asin(D)D
.end method

.method public static native atan(D)D
.end method

.method public static native atan2(DD)D
.end method

.method public static native cbrt(D)D
.end method

.method public static native ceil(D)D
.end method

.method public static native cos(D)D
.end method

.method public static native cosh(D)D
.end method

.method public static native exp(D)D
.end method

.method public static native expm1(D)D
.end method

.method public static native floor(D)D
.end method

.method public static native hypot(DD)D
.end method

.method public static native log(D)D
.end method

.method public static native log10(D)D
.end method

.method public static native log1p(D)D
.end method

.method public static max(DD)D
    .registers 10
    .parameter "d1"
    .parameter "d2"

    .prologue
    const-wide/16 v4, 0x0

    .line 541
    cmpl-double v0, p0, p2

    if-lez v0, :cond_8

    move-wide v0, p0

    .line 552
    :goto_7
    return-wide v0

    .line 543
    :cond_8
    cmpg-double v0, p0, p2

    if-gez v0, :cond_e

    move-wide v0, p2

    .line 544
    goto :goto_7

    .line 546
    :cond_e
    cmpl-double v0, p0, p2

    if-eqz v0, :cond_15

    .line 547
    const-wide/high16 v0, 0x7ff8

    goto :goto_7

    .line 549
    :cond_15
    cmpl-double v0, p0, v4

    if-nez v0, :cond_2d

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    and-long/2addr v0, v2

    const-wide/high16 v2, -0x8000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2d

    move-wide v0, v4

    .line 551
    goto :goto_7

    :cond_2d
    move-wide v0, p0

    .line 552
    goto :goto_7
.end method

.method public static max(FF)F
    .registers 5
    .parameter "f1"
    .parameter "f2"

    .prologue
    const/4 v2, 0x0

    .line 576
    cmpl-float v0, p0, p1

    if-lez v0, :cond_7

    move v0, p0

    .line 587
    :goto_6
    return v0

    .line 578
    :cond_7
    cmpg-float v0, p0, p1

    if-gez v0, :cond_d

    move v0, p1

    .line 579
    goto :goto_6

    .line 581
    :cond_d
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_14

    .line 582
    const/high16 v0, 0x7fc0

    goto :goto_6

    .line 584
    :cond_14
    cmpl-float v0, p0, v2

    if-nez v0, :cond_28

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    and-int/2addr v0, v1

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_28

    move v0, v2

    .line 586
    goto :goto_6

    :cond_28
    move v0, p0

    .line 587
    goto :goto_6
.end method

.method public static max(II)I
    .registers 3
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 602
    if-le p0, p1, :cond_4

    move v0, p0

    :goto_3
    return v0

    :cond_4
    move v0, p1

    goto :goto_3
.end method

.method public static max(JJ)J
    .registers 6
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 617
    cmp-long v0, p0, p2

    if-lez v0, :cond_6

    move-wide v0, p0

    :goto_5
    return-wide v0

    :cond_6
    move-wide v0, p2

    goto :goto_5
.end method

.method public static min(DD)D
    .registers 8
    .parameter "d1"
    .parameter "d2"

    .prologue
    .line 641
    cmpl-double v0, p0, p2

    if-lez v0, :cond_6

    move-wide v0, p2

    .line 652
    :goto_5
    return-wide v0

    .line 643
    :cond_6
    cmpg-double v0, p0, p2

    if-gez v0, :cond_c

    move-wide v0, p0

    .line 644
    goto :goto_5

    .line 646
    :cond_c
    cmpl-double v0, p0, p2

    if-eqz v0, :cond_13

    .line 647
    const-wide/high16 v0, 0x7ff8

    goto :goto_5

    .line 649
    :cond_13
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_2e

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    or-long/2addr v0, v2

    const-wide/high16 v2, -0x8000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2e

    .line 651
    const-wide/high16 v0, -0x8000

    goto :goto_5

    :cond_2e
    move-wide v0, p0

    .line 652
    goto :goto_5
.end method

.method public static min(FF)F
    .registers 4
    .parameter "f1"
    .parameter "f2"

    .prologue
    .line 676
    cmpl-float v0, p0, p1

    if-lez v0, :cond_6

    move v0, p1

    .line 687
    :goto_5
    return v0

    .line 678
    :cond_6
    cmpg-float v0, p0, p1

    if-gez v0, :cond_c

    move v0, p0

    .line 679
    goto :goto_5

    .line 681
    :cond_c
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_13

    .line 682
    const/high16 v0, 0x7fc0

    goto :goto_5

    .line 684
    :cond_13
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_29

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    or-int/2addr v0, v1

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_29

    .line 686
    const/high16 v0, -0x8000

    goto :goto_5

    :cond_29
    move v0, p0

    .line 687
    goto :goto_5
.end method

.method public static min(II)I
    .registers 3
    .parameter "i1"
    .parameter "i2"

    .prologue
    .line 702
    if-ge p0, p1, :cond_4

    move v0, p0

    :goto_3
    return v0

    :cond_4
    move v0, p1

    goto :goto_3
.end method

.method public static min(JJ)J
    .registers 6
    .parameter "l1"
    .parameter "l2"

    .prologue
    .line 717
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    move-wide v0, p0

    :goto_5
    return-wide v0

    :cond_6
    move-wide v0, p2

    goto :goto_5
.end method

.method private static native nextafter(DD)D
.end method

.method private static native nextafterf(FF)F
.end method

.method public static native pow(DD)D
.end method

.method public static random()D
    .registers 2

    .prologue
    .line 1010
    sget-object v0, Ljava/lang/Math;->random:Ljava/util/Random;

    if-nez v0, :cond_b

    .line 1011
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ljava/lang/Math;->random:Ljava/util/Random;

    .line 1013
    :cond_b
    sget-object v0, Ljava/lang/Math;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static native rint(D)D
.end method

.method public static round(F)I
    .registers 3
    .parameter "f"

    .prologue
    .line 836
    cmpl-float v0, p0, p0

    if-eqz v0, :cond_6

    .line 837
    const/4 v0, 0x0

    .line 838
    :goto_5
    return v0

    :cond_6
    const/high16 v0, 0x3f00

    add-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_5
.end method

.method public static round(D)J
    .registers 4
    .parameter "d"

    .prologue
    .line 808
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_7

    .line 809
    const-wide/16 v0, 0x0

    .line 810
    :goto_6
    return-wide v0

    :cond_7
    const-wide/high16 v0, 0x3fe0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    goto :goto_6
.end method

.method public static signum(D)D
    .registers 4
    .parameter "d"

    .prologue
    .line 863
    invoke-static {p0, p1}, Ljava/lang/StrictMath;->signum(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static signum(F)F
    .registers 2
    .parameter "f"

    .prologue
    .line 888
    invoke-static {p0}, Ljava/lang/StrictMath;->signum(F)F

    move-result v0

    return v0
.end method

.method public static native sin(D)D
.end method

.method public static native sinh(D)D
.end method

.method public static native sqrt(D)D
.end method

.method public static native tan(D)D
.end method

.method public static native tanh(D)D
.end method

.method public static toDegrees(D)D
    .registers 6
    .parameter "angrad"

    .prologue
    .line 1059
    const-wide v0, 0x4066800000000000L

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static toRadians(D)D
    .registers 6
    .parameter "angdeg"

    .prologue
    .line 1036
    const-wide v0, 0x4066800000000000L

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static ulp(D)D
    .registers 6
    .parameter "d"

    .prologue
    const-wide v2, 0x7fefffffffffffffL

    .line 1085
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1086
    const-wide/high16 v0, 0x7ff0

    .line 1091
    :goto_d
    return-wide v0

    .line 1087
    :cond_e
    cmpl-double v0, p0, v2

    if-eqz v0, :cond_1b

    const-wide v0, -0x10000000000001L

    cmpl-double v0, p0, v0

    if-nez v0, :cond_27

    .line 1088
    :cond_1b
    const-wide/high16 v0, 0x4000

    const-wide v2, 0x408e580000000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_d

    .line 1090
    :cond_27
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 1091
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->nextafter(DD)D

    move-result-wide v0

    sub-double/2addr v0, p0

    goto :goto_d
.end method

.method public static ulp(F)F
    .registers 5
    .parameter "f"

    .prologue
    const v1, 0x7f7fffff

    .line 1117
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1118
    const/high16 v0, 0x7fc0

    .line 1125
    :goto_b
    return v0

    .line 1119
    :cond_c
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1120
    const/high16 v0, 0x7f80

    goto :goto_b

    .line 1121
    :cond_15
    cmpl-float v0, p0, v1

    if-eqz v0, :cond_20

    const v0, -0x800001

    cmpl-float v0, p0, v0

    if-nez v0, :cond_2a

    .line 1122
    :cond_20
    const-wide/high16 v0, 0x4000

    const-wide/high16 v2, 0x405a

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_b

    .line 1124
    :cond_2a
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    .line 1125
    invoke-static {p0, v1}, Ljava/lang/Math;->nextafterf(FF)F

    move-result v0

    sub-float/2addr v0, p0

    goto :goto_b
.end method
