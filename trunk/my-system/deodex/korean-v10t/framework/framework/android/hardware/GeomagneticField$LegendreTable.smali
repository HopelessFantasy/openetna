.class Landroid/hardware/GeomagneticField$LegendreTable;
.super Ljava/lang/Object;
.source "GeomagneticField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/GeomagneticField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegendreTable"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final mP:[[F

.field public final mPDeriv:[[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 336
    const-class v0, Landroid/hardware/GeomagneticField;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/hardware/GeomagneticField$LegendreTable;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(IF)V
    .registers 14
    .parameter "maxN"
    .parameter "thetaRad"

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    float-to-double v5, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v0, v5

    .line 358
    .local v0, cos:F
    float-to-double v5, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v4, v5

    .line 360
    .local v4, sin:F
    add-int/lit8 v5, p1, 0x1

    new-array v5, v5, [[F

    iput-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    .line 361
    add-int/lit8 v5, p1, 0x1

    new-array v5, v5, [[F

    iput-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    .line 362
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    new-array v6, v9, [F

    const/high16 v7, 0x3f80

    aput v7, v6, v8

    aput-object v6, v5, v8

    .line 363
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    new-array v6, v9, [F

    const/4 v7, 0x0

    aput v7, v6, v8

    aput-object v6, v5, v8

    .line 364
    const/4 v3, 0x1

    .local v3, n:I
    :goto_32
    if-gt v3, p1, :cond_111

    .line 365
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v6, v3, 0x1

    new-array v6, v6, [F

    aput-object v6, v5, v3

    .line 366
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    add-int/lit8 v6, v3, 0x1

    new-array v6, v6, [F

    aput-object v6, v5, v3

    .line 367
    const/4 v2, 0x0

    .local v2, m:I
    :goto_45
    if-gt v2, v3, :cond_10d

    .line 368
    if-ne v3, v2, :cond_7a

    .line 369
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v5, v5, v3

    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    sub-int v7, v3, v9

    aget-object v6, v6, v7

    sub-int v7, v2, v9

    aget v6, v6, v7

    mul-float/2addr v6, v4

    aput v6, v5, v2

    .line 370
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v5, v5, v3

    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    sub-int v7, v3, v9

    aget-object v6, v6, v7

    sub-int v7, v2, v9

    aget v6, v6, v7

    mul-float/2addr v6, v0

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    sub-int v8, v3, v9

    aget-object v7, v7, v8

    sub-int v8, v2, v9

    aget v7, v7, v8

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    aput v6, v5, v2

    .line 367
    :goto_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 372
    :cond_7a
    if-eq v3, v9, :cond_80

    sub-int v5, v3, v9

    if-ne v2, v5, :cond_aa

    .line 373
    :cond_80
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v5, v5, v3

    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    sub-int v7, v3, v9

    aget-object v6, v6, v7

    aget v6, v6, v2

    mul-float/2addr v6, v0

    aput v6, v5, v2

    .line 374
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v5, v5, v3

    neg-float v6, v4

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    sub-int v8, v3, v9

    aget-object v7, v7, v8

    aget v7, v7, v2

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    sub-int v8, v3, v9

    aget-object v7, v7, v8

    aget v7, v7, v2

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    aput v6, v5, v2

    goto :goto_77

    .line 377
    :cond_aa
    sget-boolean v5, Landroid/hardware/GeomagneticField$LegendreTable;->$assertionsDisabled:Z

    if-nez v5, :cond_ba

    if-le v3, v9, :cond_b4

    sub-int v5, v3, v9

    if-lt v2, v5, :cond_ba

    :cond_b4
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 378
    :cond_ba
    sub-int v5, v3, v9

    sub-int v6, v3, v9

    mul-int/2addr v5, v6

    mul-int v6, v2, v2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-int/lit8 v6, v3, 0x2

    sub-int/2addr v6, v9

    mul-int/lit8 v7, v3, 0x2

    const/4 v8, 0x3

    sub-int/2addr v7, v8

    mul-int/2addr v6, v7

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 380
    .local v1, k:F
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v5, v5, v3

    iget-object v6, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    sub-int v7, v3, v9

    aget-object v6, v6, v7

    aget v6, v6, v2

    mul-float/2addr v6, v0

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    sub-int v8, v3, v10

    aget-object v7, v7, v8

    aget v7, v7, v2

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    aput v6, v5, v2

    .line 381
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v5, v5, v3

    neg-float v6, v4

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    sub-int v8, v3, v9

    aget-object v7, v7, v8

    aget v7, v7, v2

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    sub-int v8, v3, v9

    aget-object v7, v7, v8

    aget v7, v7, v2

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    sub-int v8, v3, v10

    aget-object v7, v7, v8

    aget v7, v7, v2

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    aput v6, v5, v2

    goto/16 :goto_77

    .line 364
    .end local v1           #k:F
    :cond_10d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_32

    .line 386
    .end local v2           #m:I
    :cond_111
    return-void
.end method
