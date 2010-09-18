.class public Lorg/javia/arity/Complex;
.super Ljava/lang/Object;
.source "Complex.java"


# instance fields
.field public im:D

.field public re:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(DD)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/javia/arity/Complex;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    .line 33
    return-void
.end method

.method private static final isFinite(D)Z
    .registers 6
    .parameter

    .prologue
    .line 93
    sub-double v0, p0, p0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public final abs()D
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    .line 213
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 214
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 215
    cmpl-double v4, v0, v5

    if-eqz v4, :cond_16

    cmpl-double v4, v2, v5

    if-nez v4, :cond_18

    .line 216
    :cond_16
    add-double/2addr v0, v2

    .line 220
    :goto_17
    return-wide v0

    .line 218
    :cond_18
    cmpl-double v4, v0, v2

    if-lez v4, :cond_2e

    const/4 v4, 0x1

    .line 219
    :goto_1d
    if-eqz v4, :cond_30

    div-double v5, v2, v0

    .line 220
    :goto_21
    if-eqz v4, :cond_33

    :goto_23
    const-wide/high16 v2, 0x3ff0

    mul-double v4, v5, v5

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    goto :goto_17

    .line 218
    :cond_2e
    const/4 v4, 0x0

    goto :goto_1d

    .line 219
    :cond_30
    div-double v5, v0, v2

    goto :goto_21

    :cond_33
    move-wide v0, v2

    .line 220
    goto :goto_23
.end method

.method public final abs2()D
    .registers 7

    .prologue
    .line 225
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public final acos()Lorg/javia/arity/Complex;
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    .line 382
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_1f

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1f

    .line 383
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/BaseMath;->acos(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 387
    :goto_1e
    return-object v0

    .line 385
    :cond_1f
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 386
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 387
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->sqrt1z()Lorg/javia/arity/Complex;

    move-result-object v4

    iget-wide v5, p0, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v0, v5

    iget-wide v5, p0, Lorg/javia/arity/Complex;->re:D

    add-double/2addr v2, v5

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    iget-wide v1, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v3, p0, Lorg/javia/arity/Complex;->re:D

    neg-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_1e
.end method

.method public final acosh()Lorg/javia/arity/Complex;
    .registers 13

    .prologue
    const-wide/high16 v10, 0x3ff0

    const-wide/16 v2, 0x0

    .line 413
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1b

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    cmpl-double v0, v0, v10

    if-ltz v0, :cond_1b

    .line 414
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->acosh(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 418
    :goto_1a
    return-object v0

    .line 416
    :cond_1b
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 417
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 418
    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v6, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v8, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    sub-double/2addr v4, v10

    const-wide/high16 v6, 0x4000

    iget-wide v8, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v6, v8

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v4

    invoke-virtual {v4}, Lorg/javia/arity/Complex;->sqrt()Lorg/javia/arity/Complex;

    move-result-object v4

    iget-wide v5, p0, Lorg/javia/arity/Complex;->re:D

    add-double/2addr v0, v5

    iget-wide v5, p0, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v2, v5

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_1a
.end method

.method public final add(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .registers 6
    .parameter

    .prologue
    .line 101
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 102
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    .line 103
    return-object p0
.end method

.method public final arg()D
    .registers 5

    .prologue
    .line 181
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/BaseMath;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public final asin()Lorg/javia/arity/Complex;
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    .line 372
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_1f

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1f

    .line 373
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/BaseMath;->asin(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 377
    :goto_1e
    return-object v0

    .line 375
    :cond_1f
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 376
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 377
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->sqrt1z()Lorg/javia/arity/Complex;

    move-result-object v4

    iget-wide v5, p0, Lorg/javia/arity/Complex;->re:D

    sub-double v2, v5, v2

    iget-wide v5, p0, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v0, v5

    invoke-virtual {v4, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    iget-wide v1, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v3, p0, Lorg/javia/arity/Complex;->re:D

    neg-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_1e
.end method

.method public final asinh()Lorg/javia/arity/Complex;
    .registers 11

    .prologue
    const-wide/16 v2, 0x0

    .line 403
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_13

    .line 404
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->asinh(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 408
    :goto_12
    return-object v0

    .line 406
    :cond_13
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 407
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 408
    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v6, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v8, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000

    iget-wide v8, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v6, v8

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v4

    invoke-virtual {v4}, Lorg/javia/arity/Complex;->sqrt()Lorg/javia/arity/Complex;

    move-result-object v4

    iget-wide v5, p0, Lorg/javia/arity/Complex;->re:D

    add-double/2addr v0, v5

    iget-wide v5, p0, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v2, v5

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_12
.end method

.method public final atan()Lorg/javia/arity/Complex;
    .registers 13

    .prologue
    const-wide/high16 v10, 0x4000

    const-wide/high16 v8, 0x3ff0

    const-wide/16 v2, 0x0

    .line 392
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_17

    .line 393
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/BaseMath;->atan(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 398
    :goto_16
    return-object v0

    .line 395
    :cond_17
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, v2

    .line 396
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    .line 397
    add-double v4, v0, v2

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v4, v6

    add-double/2addr v4, v8

    .line 398
    add-double/2addr v0, v2

    sub-double/2addr v0, v8

    neg-double v0, v0

    div-double/2addr v0, v4

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v6, p0, Lorg/javia/arity/Complex;->re:D

    add-double/2addr v2, v6

    neg-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    iget-wide v1, p0, Lorg/javia/arity/Complex;->im:D

    neg-double v1, v1

    div-double/2addr v1, v10

    iget-wide v3, p0, Lorg/javia/arity/Complex;->re:D

    div-double/2addr v3, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_16
.end method

.method public final atanh()Lorg/javia/arity/Complex;
    .registers 13

    .prologue
    const-wide/high16 v10, 0x4000

    const-wide/high16 v8, 0x3ff0

    const-wide/16 v2, 0x0

    .line 423
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_17

    .line 424
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->atanh(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 429
    :goto_16
    return-object v0

    .line 426
    :cond_17
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, v2

    .line 427
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    .line 428
    add-double v4, v0, v8

    iget-wide v6, p0, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v4, v6

    iget-wide v6, p0, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v4, v6

    .line 429
    sub-double v0, v8, v0

    sub-double/2addr v0, v2

    div-double/2addr v0, v4

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v2, v6

    div-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    iget-wide v1, p0, Lorg/javia/arity/Complex;->re:D

    div-double/2addr v1, v10

    iget-wide v3, p0, Lorg/javia/arity/Complex;->im:D

    div-double/2addr v3, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_16
.end method

.method public final combinations(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .registers 16
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 434
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_1b

    iget-wide v0, p1, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_1b

    .line 435
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/MoreMath;->combinations(DD)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 450
    :goto_1a
    return-object v0

    .line 438
    :cond_1b
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 439
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 441
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    .line 442
    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    .line 443
    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    .line 445
    invoke-virtual {p0, p1}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v8

    invoke-virtual {v8}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    .line 446
    iget-wide v8, p0, Lorg/javia/arity/Complex;->re:D

    .line 447
    iget-wide v10, p0, Lorg/javia/arity/Complex;->im:D

    .line 449
    iget-wide v12, p1, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v0, v12

    iget-wide v12, p1, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v2, v12

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    .line 450
    sub-double v0, v4, v8

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v0, v2

    sub-double v2, v6, v10

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_1a
.end method

.method public final conjugate()Lorg/javia/arity/Complex;
    .registers 5

    .prologue
    .line 69
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    neg-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0
.end method

.method public final cos()Lorg/javia/arity/Complex;
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 344
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_13

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v2, v3}, Lorg/javia/arity/BaseMath;->cosh(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v4, v5}, Lorg/javia/arity/BaseMath;->sinh(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_12
.end method

.method public final cosh()Lorg/javia/arity/Complex;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 351
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_13

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/BaseMath;->cosh(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->swap()Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->cos()Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->conjugate()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_12
.end method

.method public final div(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .registers 12
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 153
    iget-wide v0, p1, Lorg/javia/arity/Complex;->re:D

    .line 154
    iget-wide v2, p1, Lorg/javia/arity/Complex;->im:D

    .line 155
    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_19

    cmpl-double v4, v2, v6

    if-nez v4, :cond_19

    .line 156
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    div-double v0, v2, v0

    invoke-virtual {p0, v0, v1, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 176
    :goto_18
    return-object v0

    .line 158
    :cond_19
    invoke-virtual {p1}, Lorg/javia/arity/Complex;->isInfinite()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->isInfinite()Z

    move-result v4

    if-nez v4, :cond_2a

    .line 159
    invoke-virtual {p0, v6, v7, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_18

    .line 161
    :cond_2a
    cmpl-double v4, v2, v6

    if-nez v4, :cond_3a

    .line 162
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    div-double/2addr v2, v0

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    div-double v0, v4, v0

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_18

    .line 169
    :cond_3a
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_5f

    .line 170
    div-double v4, v2, v0

    .line 171
    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 172
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    div-double/2addr v2, v0

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v8, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v4, v8

    sub-double v4, v6, v4

    div-double v0, v4, v0

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_18

    .line 174
    :cond_5f
    div-double v4, v0, v2

    .line 175
    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    .line 176
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v2, v4

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v2, v6

    div-double/2addr v2, v0

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v4, v6

    div-double v0, v4, v0

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_18
.end method

.method public final exp()Lorg/javia/arity/Complex;
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 251
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_26

    .line 252
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_15

    .line 253
    const-wide/high16 v0, 0x3ff0

    invoke-virtual {p0, v0, v1, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 262
    :goto_14
    return-object v0

    .line 255
    :cond_15
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_14

    .line 258
    :cond_26
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/BaseMath;->exp(D)D

    move-result-wide v0

    .line 259
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_37

    .line 260
    invoke-virtual {p0, v0, v1, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_14

    .line 262
    :cond_37
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v4, v5}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_14
.end method

.method public final factorial()Lorg/javia/arity/Complex;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 327
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_13

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->factorial(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_12
.end method

.method public final gcd(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .registers 12
    .parameter

    .prologue
    .line 191
    new-instance v0, Lorg/javia/arity/Complex;

    invoke-direct {v0, p1}, Lorg/javia/arity/Complex;-><init>(Lorg/javia/arity/Complex;)V

    .line 192
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->abs2()D

    move-result-wide v1

    .line 193
    invoke-virtual {v0}, Lorg/javia/arity/Complex;->abs2()D

    move-result-wide v3

    move-wide v8, v3

    move-wide v3, v1

    move-wide v1, v8

    .line 194
    :goto_10
    const-wide v5, 0x46293e5939a08ceaL

    mul-double/2addr v5, v1

    cmpg-double v3, v3, v5

    if-gez v3, :cond_30

    .line 195
    iget-wide v3, v0, Lorg/javia/arity/Complex;->re:D

    .line 196
    iget-wide v5, v0, Lorg/javia/arity/Complex;->im:D

    .line 197
    invoke-virtual {p0, v0}, Lorg/javia/arity/Complex;->mod(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    .line 198
    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    .line 200
    invoke-virtual {v0}, Lorg/javia/arity/Complex;->abs2()D

    move-result-wide v3

    move-wide v8, v3

    move-wide v3, v1

    move-wide v1, v8

    .line 201
    goto :goto_10

    .line 203
    :cond_30
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_48

    .line 204
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    neg-double v0, v0

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    .line 206
    :cond_48
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_53

    .line 207
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->negate()Lorg/javia/arity/Complex;

    .line 209
    :cond_53
    return-object p0
.end method

.method public final isFinite()Z
    .registers 3

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/Complex;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1}, Lorg/javia/arity/Complex;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final isInfinite()Z
    .registers 3

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_10

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final lgamma()Lorg/javia/arity/Complex;
    .registers 26

    .prologue
    .line 298
    const-wide v5, 0x3fefffffffffffe6L

    const-wide/16 v7, 0x0

    .line 299
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/javia/arity/Complex;->re:D

    move-wide v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/javia/arity/Complex;->re:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/javia/arity/Complex;->im:D

    move-wide v11, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/javia/arity/Complex;->im:D

    move-wide v13, v0

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    .line 300
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/javia/arity/Complex;->re:D

    move-wide v11, v0

    .line 301
    sget-object v13, Lorg/javia/arity/MoreMath;->GAMMA:[D

    .line 302
    const/4 v14, 0x0

    move/from16 v20, v14

    move-wide v14, v5

    move/from16 v5, v20

    move-wide/from16 v21, v9

    move-wide/from16 v23, v7

    move-wide/from16 v8, v21

    move-wide v6, v11

    move-wide/from16 v10, v23

    :goto_34
    array-length v12, v13

    if-ge v5, v12, :cond_5a

    .line 303
    const-wide/high16 v16, 0x3ff0

    add-double v6, v6, v16

    .line 304
    add-double v16, v6, v6

    const-wide/high16 v18, 0x3ff0

    sub-double v16, v16, v18

    add-double v8, v8, v16

    .line 305
    aget-wide v16, v13, v5

    .line 306
    mul-double v18, v16, v6

    div-double v18, v18, v8

    add-double v14, v14, v18

    .line 307
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/javia/arity/Complex;->im:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    div-double v16, v16, v8

    sub-double v10, v10, v16

    .line 302
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 310
    :cond_5a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/javia/arity/Complex;->re:D

    move-wide v5, v0

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    .line 311
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/javia/arity/Complex;->re:D

    move-wide v7, v0

    const-wide v12, 0x4014f80000000000L

    add-double/2addr v7, v12

    .line 312
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/javia/arity/Complex;->im:D

    move-wide v12, v0

    .line 314
    move-wide v0, v7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/javia/arity/Complex;->re:D

    .line 316
    invoke-virtual/range {p0 .. p0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    .line 317
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/javia/arity/Complex;->re:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/javia/arity/Complex;->im:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v12

    sub-double v16, v16, v18

    const-wide v18, 0x3fed67f1c864beb5L

    add-double v16, v16, v18

    sub-double v7, v16, v7

    .line 318
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/javia/arity/Complex;->im:D

    move-wide/from16 v16, v0

    mul-double v5, v5, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/javia/arity/Complex;->re:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    add-double v5, v5, v16

    sub-double/2addr v5, v12

    .line 320
    move-object/from16 v0, p0

    move-wide v1, v14

    move-wide v3, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v9

    invoke-virtual {v9}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    .line 321
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/javia/arity/Complex;->re:D

    move-wide v9, v0

    add-double/2addr v7, v9

    move-wide v0, v7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/javia/arity/Complex;->re:D

    .line 322
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/javia/arity/Complex;->im:D

    move-wide v7, v0

    add-double/2addr v5, v7

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/javia/arity/Complex;->im:D

    .line 323
    return-object p0
.end method

.method public final log()Lorg/javia/arity/Complex;
    .registers 5

    .prologue
    .line 246
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/BaseMath;->atan2(DD)D

    move-result-wide v0

    .line 247
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->abs()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/javia/arity/BaseMath;->log(D)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0
.end method

.method public final mod(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .registers 11
    .parameter

    .prologue
    .line 185
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 186
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 187
    invoke-virtual {p0, p1}, Lorg/javia/arity/Complex;->div(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v4

    iget-wide v5, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v5, v6}, Lorg/javia/arity/BaseMath;->rint(D)D

    move-result-wide v5

    iget-wide v7, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v7, v8}, Lorg/javia/arity/BaseMath;->rint(D)D

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/javia/arity/Complex;->mul(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v4

    iget-wide v5, p0, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v0, v5

    iget-wide v5, p0, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v2, v5

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0
.end method

.method public final mul(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .registers 16
    .parameter

    .prologue
    .line 113
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p1, Lorg/javia/arity/Complex;->re:D

    iget-wide v6, p1, Lorg/javia/arity/Complex;->im:D

    .line 114
    const-wide/16 v8, 0x0

    cmpl-double v8, v0, v8

    if-nez v8, :cond_1c

    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-nez v8, :cond_1c

    .line 115
    mul-double/2addr v0, v4

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 149
    :goto_1b
    return-object v0

    .line 117
    :cond_1c
    mul-double v8, v0, v4

    mul-double v10, v2, v6

    sub-double/2addr v8, v10

    mul-double v10, v0, v6

    mul-double v12, v2, v4

    add-double/2addr v10, v12

    invoke-virtual {p0, v8, v9, v10, v11}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v8

    invoke-virtual {v8}, Lorg/javia/arity/Complex;->isFinite()Z

    move-result v8

    if-eqz v8, :cond_32

    move-object v0, p0

    .line 118
    goto :goto_1b

    .line 120
    :cond_32
    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v4

    invoke-virtual {v4}, Lorg/javia/arity/Complex;->normalizeInfinity()Lorg/javia/arity/Complex;

    .line 121
    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    .line 122
    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    .line 123
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->normalizeInfinity()Lorg/javia/arity/Complex;

    .line 124
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_77

    .line 125
    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-nez v0, :cond_5c

    .line 126
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, v4

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_1b

    .line 128
    :cond_5c
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-nez v0, :cond_6c

    .line 129
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v2, v6

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_1b

    .line 131
    :cond_6c
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, v4

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v2, v6

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_1b

    .line 134
    :cond_77
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_9b

    .line 135
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-nez v0, :cond_90

    .line 136
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    neg-double v0, v0

    mul-double/2addr v0, v6

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_1b

    .line 144
    :cond_90
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, v4

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v2, v6

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_1b

    .line 146
    :cond_9b
    const-wide/16 v0, 0x0

    cmpl-double v0, v6, v0

    if-nez v0, :cond_ad

    .line 147
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, v4

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto/16 :goto_1b

    .line 149
    :cond_ad
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, v4

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v6

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v2, v6

    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto/16 :goto_1b
.end method

.method public final negate()Lorg/javia/arity/Complex;
    .registers 5

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    neg-double v0, v0

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    neg-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0
.end method

.method public final normalizeInfinity()Lorg/javia/arity/Complex;
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    .line 77
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    .line 78
    iget-wide v1, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    .line 79
    if-eqz v0, :cond_15

    if-nez v1, :cond_15

    .line 80
    iput-wide v3, p0, Lorg/javia/arity/Complex;->im:D

    .line 84
    :cond_14
    :goto_14
    return-object p0

    .line 81
    :cond_15
    if-eqz v1, :cond_14

    if-nez v0, :cond_14

    .line 82
    iput-wide v3, p0, Lorg/javia/arity/Complex;->re:D

    goto :goto_14
.end method

.method public final permutations(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .registers 12
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 455
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_1b

    iget-wide v0, p1, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_1b

    .line 456
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/MoreMath;->permutations(DD)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 467
    :goto_1a
    return-object v0

    .line 459
    :cond_1b
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 460
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    .line 462
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    .line 463
    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    .line 464
    iget-wide v6, p0, Lorg/javia/arity/Complex;->im:D

    .line 466
    iget-wide v8, p1, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v0, v8

    iget-wide v8, p1, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v2, v8

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    .line 467
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    sub-double v0, v4, v0

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    sub-double v2, v6, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_1a
.end method

.method public final pow(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .registers 11
    .parameter

    .prologue
    const-wide/high16 v4, 0x4000

    const-wide/16 v6, 0x0

    .line 273
    iget-wide v0, p1, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v6

    if-nez v0, :cond_5a

    .line 274
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v6

    if-nez v0, :cond_21

    .line 275
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/BaseMath;->pow(DD)D

    move-result-wide v0

    .line 276
    cmpl-double v2, v0, v0

    if-nez v2, :cond_21

    .line 277
    invoke-virtual {p0, v0, v1, v6, v7}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 294
    :goto_20
    return-object v0

    .line 280
    :cond_21
    iget-wide v0, p1, Lorg/javia/arity/Complex;->re:D

    cmpl-double v0, v0, v4

    if-nez v0, :cond_2c

    .line 281
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->square()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_20

    .line 283
    :cond_2c
    iget-wide v0, p1, Lorg/javia/arity/Complex;->re:D

    const-wide/high16 v2, 0x3fe0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_39

    .line 284
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->sqrt()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_20

    .line 286
    :cond_39
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->abs2()D

    move-result-wide v0

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/BaseMath;->pow(DD)D

    move-result-wide v0

    .line 287
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->arg()D

    move-result-wide v2

    iget-wide v4, p1, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v2, v4

    .line 288
    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p0, v4, v5, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_20

    .line 290
    :cond_5a
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v6

    if-nez v0, :cond_8a

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    cmpl-double v0, v0, v6

    if-lez v0, :cond_8a

    .line 291
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/BaseMath;->pow(DD)D

    move-result-wide v0

    .line 292
    iget-wide v2, p1, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v4, v5}, Lorg/javia/arity/BaseMath;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v6, v7, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object v2

    iget-wide v3, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v3, v0

    iget-wide v5, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v0, v5

    invoke-virtual {v2, v3, v4, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_20

    .line 294
    :cond_8a
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v0

    iget-wide v1, p1, Lorg/javia/arity/Complex;->re:D

    iget-wide v3, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v1, v3

    iget-wide v3, p1, Lorg/javia/arity/Complex;->im:D

    iget-wide v5, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    iget-wide v3, p1, Lorg/javia/arity/Complex;->re:D

    iget-wide v5, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v3, v5

    iget-wide v5, p1, Lorg/javia/arity/Complex;->im:D

    iget-wide v7, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object v0

    goto/16 :goto_20
.end method

.method public set(DD)Lorg/javia/arity/Complex;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 36
    iput-wide p1, p0, Lorg/javia/arity/Complex;->re:D

    .line 37
    iput-wide p3, p0, Lorg/javia/arity/Complex;->im:D

    .line 38
    return-object p0
.end method

.method public set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .registers 4
    .parameter

    .prologue
    .line 42
    iget-wide v0, p1, Lorg/javia/arity/Complex;->re:D

    iput-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 43
    iget-wide v0, p1, Lorg/javia/arity/Complex;->im:D

    iput-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    .line 44
    return-object p0
.end method

.method public final sin()Lorg/javia/arity/Complex;
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    .line 332
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_13

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v2, v3}, Lorg/javia/arity/BaseMath;->cosh(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v2, v3}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v4, v5}, Lorg/javia/arity/BaseMath;->sinh(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_12
.end method

.method public final sinh()Lorg/javia/arity/Complex;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 339
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_13

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/BaseMath;->sinh(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->swap()Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->sin()Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->swap()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_12
.end method

.method public final sqrt()Lorg/javia/arity/Complex;
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 229
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    cmpl-double v0, v0, v6

    if-nez v0, :cond_e

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v6

    if-eqz v0, :cond_2e

    .line 230
    :cond_e
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/javia/arity/Complex;->abs()D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 231
    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_2f

    .line 232
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    add-double v4, v0, v0

    div-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    .line 237
    :cond_2e
    :goto_2e
    return-object p0

    .line 234
    :cond_2f
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double v4, v0, v0

    div-double/2addr v2, v4

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_42

    :goto_3e
    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    goto :goto_2e

    :cond_42
    neg-double v0, v0

    goto :goto_3e
.end method

.method public final sqrt1z()Lorg/javia/arity/Complex;
    .registers 7

    .prologue
    .line 242
    const-wide/high16 v0, 0x3ff0

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    const-wide/high16 v2, -0x4000

    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->sqrt()Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0
.end method

.method public final square()Lorg/javia/arity/Complex;
    .registers 7

    .prologue
    .line 268
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000

    iget-wide v4, p0, Lorg/javia/arity/Complex;->re:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0
.end method

.method public final sub(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .registers 6
    .parameter

    .prologue
    .line 107
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    .line 108
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->im:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    .line 109
    return-object p0
.end method

.method public final swap()Lorg/javia/arity/Complex;
    .registers 5

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0
.end method

.method public final tan()Lorg/javia/arity/Complex;
    .registers 9

    .prologue
    const-wide/16 v2, 0x0

    .line 356
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_13

    .line 357
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->tan(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 362
    :goto_12
    return-object v0

    .line 359
    :cond_13
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p0, Lorg/javia/arity/Complex;->re:D

    add-double/2addr v0, v2

    .line 360
    iget-wide v2, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v4, p0, Lorg/javia/arity/Complex;->im:D

    add-double/2addr v2, v4

    .line 361
    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Lorg/javia/arity/BaseMath;->cosh(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 362
    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v0

    div-double/2addr v0, v4

    invoke-static {v2, v3}, Lorg/javia/arity/BaseMath;->sinh(D)D

    move-result-wide v2

    div-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_12
.end method

.method public final tanh()Lorg/javia/arity/Complex;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 367
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_13

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1}, Lorg/javia/arity/BaseMath;->tanh(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    invoke-virtual {p0}, Lorg/javia/arity/Complex;->swap()Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->tan()Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->swap()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_12
.end method

.method public toReal()D
    .registers 5

    .prologue
    .line 61
    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3cd203af9ee75616L

    cmpg-double v0, v0, v2

    if-gez v0, :cond_12

    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    :goto_11
    return-wide v0

    :cond_12
    const-wide/high16 v0, 0x7ff8

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 48
    const/16 v0, 0x28

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
