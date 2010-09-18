.class public Ljava/util/Random;
.super Ljava/lang/Object;
.source "Random.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final multiplier:J = 0x5deece66dL

.field private static final serialVersionUID:J = 0x363296344bf00a53L


# instance fields
.field haveNextNextGaussian:Z

.field nextNextGaussian:D

.field seed:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/Random;->nextNextGaussian:D

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Random;->setSeed(J)V

    .line 67
    return-void
.end method

.method public constructor <init>(J)V
    .registers 5
    .parameter "seed"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/util/Random;->nextNextGaussian:D

    .line 80
    invoke-virtual {p0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    .line 81
    return-void
.end method


# virtual methods
.method protected declared-synchronized next(I)I
    .registers 6
    .parameter "bits"

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Ljava/util/Random;->seed:J

    const-wide v2, 0x5deece66dL

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/Random;->seed:J

    .line 104
    iget-wide v0, p0, Ljava/util/Random;->seed:J
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1d

    const/16 v2, 0x30

    sub-int/2addr v2, p1

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    monitor-exit p0

    return v0

    .line 103
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public nextBoolean()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 115
    invoke-virtual {p0, v1}, Ljava/util/Random;->next(I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public nextBytes([B)V
    .registers 7
    .parameter "buf"

    .prologue
    .line 128
    const/4 v3, 0x0

    .local v3, rand:I
    const/4 v0, 0x0

    .local v0, count:I
    const/4 v2, 0x0

    .line 129
    .local v2, loop:I
    :goto_3
    array-length v4, p1

    if-ge v0, v4, :cond_19

    .line 130
    if-nez v2, :cond_16

    .line 131
    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result v3

    .line 132
    const/4 v2, 0x3

    .line 136
    :goto_d
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    int-to-byte v4, v3

    aput-byte v4, p1, v0

    .line 137
    shr-int/lit8 v3, v3, 0x8

    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_3

    .line 134
    :cond_16
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 139
    :cond_19
    return-void
.end method

.method public nextDouble()D
    .registers 5

    .prologue
    const/16 v2, 0x1b

    .line 150
    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v2

    invoke-virtual {p0, v2}, Ljava/util/Random;->next(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x4340

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public nextFloat()F
    .registers 3

    .prologue
    .line 162
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4b80

    div-float/2addr v0, v1

    return v0
.end method

.method public declared-synchronized nextGaussian()D
    .registers 13

    .prologue
    .line 178
    monitor-enter p0

    :try_start_1
    iget-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    if-eqz v8, :cond_c

    .line 180
    const/4 v8, 0x0

    iput-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z

    .line 181
    iget-wide v8, p0, Ljava/util/Random;->nextNextGaussian:D
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_44

    .line 195
    :goto_a
    monitor-exit p0

    return-wide v8

    .line 186
    :cond_c
    const-wide/high16 v8, 0x4000

    :try_start_e
    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0

    sub-double v4, v8, v10

    .line 188
    .local v4, v1:D
    const-wide/high16 v8, 0x4000

    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0

    sub-double v6, v8, v10

    .line 189
    .local v6, v2:D
    mul-double v8, v4, v4

    mul-double v10, v6, v6

    add-double v2, v8, v10

    .line 190
    .local v2, s:D
    const-wide/high16 v8, 0x3ff0

    cmpl-double v8, v2, v8

    if-gez v8, :cond_c

    .line 191
    const-wide/high16 v8, -0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    div-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 192
    .local v0, norm:D
    mul-double v8, v6, v0

    iput-wide v8, p0, Ljava/util/Random;->nextNextGaussian:D

    .line 194
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/util/Random;->haveNextNextGaussian:Z
    :try_end_41
    .catchall {:try_start_e .. :try_end_41} :catchall_44

    .line 195
    mul-double v8, v4, v0

    goto :goto_a

    .line 178
    .end local v0           #norm:D
    .end local v2           #s:D
    .end local v4           #v1:D
    .end local v6           #v2:D
    :catchall_44
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public nextInt()I
    .registers 2

    .prologue
    .line 211
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/util/Random;->next(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .registers 9
    .parameter "n"

    .prologue
    const/16 v6, 0x1f

    .line 224
    if-lez p1, :cond_22

    .line 225
    neg-int v2, p1

    and-int/2addr v2, p1

    if-ne v2, p1, :cond_12

    .line 226
    int-to-long v2, p1

    invoke-virtual {p0, v6}, Ljava/util/Random;->next(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    shr-long/2addr v2, v6

    long-to-int v2, v2

    .line 233
    :goto_11
    return v2

    .line 230
    :cond_12
    invoke-virtual {p0, v6}, Ljava/util/Random;->next(I)I

    move-result v0

    .line 231
    .local v0, bits:I
    rem-int v1, v0, p1

    .line 232
    .local v1, val:I
    sub-int v2, v0, v1

    const/4 v3, 0x1

    sub-int v3, p1, v3

    add-int/2addr v2, v3

    if-ltz v2, :cond_12

    move v2, v1

    .line 233
    goto :goto_11

    .line 235
    .end local v0           #bits:I
    .end local v1           #val:I
    :cond_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public nextLong()J
    .registers 5

    .prologue
    const/16 v2, 0x20

    .line 251
    invoke-virtual {p0, v2}, Ljava/util/Random;->next(I)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v2

    invoke-virtual {p0, v2}, Ljava/util/Random;->next(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public declared-synchronized setSeed(J)V
    .registers 7
    .parameter "seed"

    .prologue
    .line 266
    monitor-enter p0

    const-wide v0, 0x5deece66dL

    xor-long/2addr v0, p1

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    :try_start_d
    iput-wide v0, p0, Ljava/util/Random;->seed:J

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Random;->haveNextNextGaussian:Z
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    .line 268
    monitor-exit p0

    return-void

    .line 266
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
