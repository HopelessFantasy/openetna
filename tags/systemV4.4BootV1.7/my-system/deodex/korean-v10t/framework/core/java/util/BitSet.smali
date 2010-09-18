.class public Ljava/util/BitSet;
.super Ljava/lang/Object;
.source "BitSet.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ELM_SIZE:I = 0x40

.field private static final serialVersionUID:J = 0x6efd887e3934ab21L


# instance fields
.field private bits:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Ljava/util/BitSet;-><init>(I)V

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "nbits"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    if-ltz p1, :cond_14

    .line 76
    div-int/lit8 v0, p1, 0x40

    rem-int/lit8 v1, p1, 0x40

    if-lez v1, :cond_12

    const/4 v1, 0x1

    :goto_c
    add-int/2addr v0, v1

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/util/BitSet;->bits:[J

    .line 80
    return-void

    .line 76
    :cond_12
    const/4 v1, 0x0

    goto :goto_c

    .line 78
    :cond_14
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    invoke-direct {v0}, Ljava/lang/NegativeArraySizeException;-><init>()V

    throw v0
.end method

.method private constructor <init>([J)V
    .registers 2
    .parameter "bits"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Ljava/util/BitSet;->bits:[J

    .line 90
    return-void
.end method

.method private growBits(I)V
    .registers 6
    .parameter "pos"

    .prologue
    const/4 v3, 0x0

    .line 169
    add-int/lit8 p1, p1, 0x1

    .line 170
    div-int/lit8 v1, p1, 0x40

    rem-int/lit8 v2, p1, 0x40

    if-lez v2, :cond_18

    const/4 v2, 0x1

    :goto_a
    add-int/2addr v1, v2

    new-array v0, v1, [J

    .line 172
    .local v0, tempBits:[J
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iput-object v0, p0, Ljava/util/BitSet;->bits:[J

    .line 174
    return-void

    .end local v0           #tempBits:[J
    :cond_18
    move v2, v3

    .line 170
    goto :goto_a
.end method


# virtual methods
.method public and(Ljava/util/BitSet;)V
    .registers 11
    .parameter "bs"

    .prologue
    .line 589
    iget-object v0, p1, Ljava/util/BitSet;->bits:[J

    .line 590
    .local v0, bsBits:[J
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    array-length v2, v4

    .local v2, length1:I
    array-length v3, v0

    .line 591
    .local v3, length2:I
    if-gt v2, v3, :cond_17

    .line 592
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v2, :cond_32

    .line 593
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v4, v1

    aget-wide v7, v0, v1

    and-long/2addr v5, v7

    aput-wide v5, v4, v1

    .line 592
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 596
    .end local v1           #i:I
    :cond_17
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_18
    if-ge v1, v3, :cond_26

    .line 597
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v4, v1

    aget-wide v7, v0, v1

    and-long/2addr v5, v7

    aput-wide v5, v4, v1

    .line 596
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 599
    :cond_26
    move v1, v3

    :goto_27
    if-ge v1, v2, :cond_32

    .line 600
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v1

    .line 599
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 603
    :cond_32
    return-void
.end method

.method public andNot(Ljava/util/BitSet;)V
    .registers 12
    .parameter "bs"

    .prologue
    .line 614
    iget-object v0, p1, Ljava/util/BitSet;->bits:[J

    .line 615
    .local v0, bsBits:[J
    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    array-length v3, v3

    array-length v4, v0

    if-ge v3, v4, :cond_1e

    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    array-length v3, v3

    move v2, v3

    .line 616
    .local v2, range:I
    :goto_c
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v2, :cond_21

    .line 617
    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v3, v1

    aget-wide v6, v0, v1

    const-wide/16 v8, -0x1

    xor-long/2addr v6, v8

    and-long/2addr v4, v6

    aput-wide v4, v3, v1

    .line 616
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 615
    .end local v1           #i:I
    .end local v2           #range:I
    :cond_1e
    array-length v3, v0

    move v2, v3

    goto :goto_c

    .line 619
    .restart local v1       #i:I
    .restart local v2       #range:I
    :cond_21
    return-void
.end method

.method public cardinality()I
    .registers 10

    .prologue
    const-wide/16 v7, 0x0

    .line 848
    const/4 v0, 0x0

    .line 849
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_4
    iget-object v5, p0, Ljava/util/BitSet;->bits:[J

    array-length v5, v5

    if-ge v2, v5, :cond_26

    .line 850
    iget-object v5, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v3, v5, v2

    .line 851
    .local v3, temp:J
    cmp-long v5, v3, v7

    if-eqz v5, :cond_23

    .line 852
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    const/16 v5, 0x40

    if-ge v1, v5, :cond_23

    .line 853
    const-wide/16 v5, 0x1

    shl-long/2addr v5, v1

    and-long/2addr v5, v3

    cmp-long v5, v5, v7

    if-eqz v5, :cond_20

    .line 854
    add-int/lit8 v0, v0, 0x1

    .line 852
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 849
    .end local v1           #i:I
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 859
    .end local v3           #temp:J
    :cond_26
    return v0
.end method

.method public clear()V
    .registers 5

    .prologue
    .line 412
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    array-length v1, v1

    if-ge v0, v1, :cond_f

    .line 413
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 415
    :cond_f
    return-void
.end method

.method public clear(I)V
    .registers 10
    .parameter "pos"

    .prologue
    .line 429
    if-ltz p1, :cond_1b

    .line 430
    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x40

    if-ge p1, v0, :cond_1a

    .line 431
    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    div-int/lit8 v1, p1, 0x40

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    rem-int/lit8 v6, p1, 0x40

    shl-long/2addr v4, v6

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 437
    :cond_1a
    return-void

    .line 435
    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "K0006"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear(II)V
    .registers 20
    .parameter "pos1"
    .parameter "pos2"

    .prologue
    .line 454
    if-ltz p1, :cond_77

    if-ltz p2, :cond_77

    move/from16 v0, p2

    move/from16 v1, p1

    if-lt v0, v1, :cond_77

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object v10, v0

    array-length v10, v10

    mul-int/lit8 v9, v10, 0x40

    .line 456
    .local v9, last:I
    move/from16 v0, p1

    move v1, v9

    if-ge v0, v1, :cond_1d

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1e

    .line 480
    :cond_1d
    :goto_1d
    return-void

    .line 459
    :cond_1e
    move/from16 v0, p2

    move v1, v9

    if-le v0, v1, :cond_25

    .line 460
    move/from16 p2, v9

    .line 463
    :cond_25
    div-int/lit8 v7, p1, 0x40

    .line 464
    .local v7, idx1:I
    const/4 v10, 0x1

    sub-int v10, p2, v10

    div-int/lit8 v8, v10, 0x40

    .line 465
    .local v8, idx2:I
    const-wide/16 v10, -0x1

    rem-int/lit8 v12, p1, 0x40

    shl-long v2, v10, v12

    .line 466
    .local v2, factor1:J
    const-wide/16 v10, -0x1

    const/16 v12, 0x40

    rem-int/lit8 v13, p2, 0x40

    sub-int/2addr v12, v13

    ushr-long v4, v10, v12

    .line 468
    .local v4, factor2:J
    if-ne v7, v8, :cond_4d

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object v10, v0

    aget-wide v11, v10, v7

    and-long v13, v2, v4

    const-wide/16 v15, -0x1

    xor-long/2addr v13, v15

    and-long/2addr v11, v13

    aput-wide v11, v10, v7

    goto :goto_1d

    .line 471
    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object v10, v0

    aget-wide v11, v10, v7

    const-wide/16 v13, -0x1

    xor-long/2addr v13, v2

    and-long/2addr v11, v13

    aput-wide v11, v10, v7

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object v10, v0

    aget-wide v11, v10, v8

    const-wide/16 v13, -0x1

    xor-long/2addr v13, v4

    and-long/2addr v11, v13

    aput-wide v11, v10, v8

    .line 473
    add-int/lit8 v6, v7, 0x1

    .local v6, i:I
    :goto_69
    if-ge v6, v8, :cond_1d

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object v10, v0

    const-wide/16 v11, 0x0

    aput-wide v11, v10, v6

    .line 473
    add-int/lit8 v6, v6, 0x1

    goto :goto_69

    .line 478
    .end local v2           #factor1:J
    .end local v4           #factor2:J
    .end local v6           #i:I
    .end local v7           #idx1:I
    .end local v8           #idx2:I
    .end local v9           #last:I
    :cond_77
    new-instance v10, Ljava/lang/IndexOutOfBoundsException;

    const-string v11, "K0006"

    invoke-static {v11}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 101
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 102
    .local v0, clone:Ljava/util/BitSet;
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [J

    iput-object p0, v0, Ljava/util/BitSet;->bits:[J
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_12

    move-object v2, v0

    .line 105
    .end local v0           #clone:Ljava/util/BitSet;
    :goto_11
    return-object v2

    .line 104
    :catch_12
    move-exception v2

    move-object v1, v2

    .line 105
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 14
    .parameter "obj"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 123
    if-ne p0, p1, :cond_8

    move v4, v9

    .line 157
    .end local p1
    :goto_7
    return v4

    .line 126
    .restart local p1
    :cond_8
    instance-of v4, p1, Ljava/util/BitSet;

    if-eqz v4, :cond_5a

    .line 127
    check-cast p1, Ljava/util/BitSet;

    .end local p1
    iget-object v0, p1, Ljava/util/BitSet;->bits:[J

    .line 128
    .local v0, bsBits:[J
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    array-length v2, v4

    .local v2, length1:I
    array-length v3, v0

    .line 132
    .local v3, length2:I
    if-gt v2, v3, :cond_36

    .line 133
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    if-ge v1, v2, :cond_28

    .line 134
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    aget-wide v6, v0, v1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_25

    move v4, v8

    .line 135
    goto :goto_7

    .line 133
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 138
    :cond_28
    move v1, v2

    :goto_29
    if-ge v1, v3, :cond_58

    .line 139
    aget-wide v4, v0, v1

    cmp-long v4, v4, v10

    if-eqz v4, :cond_33

    move v4, v8

    .line 140
    goto :goto_7

    .line 138
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 144
    .end local v1           #i:I
    :cond_36
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_37
    if-ge v1, v3, :cond_48

    .line 145
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    aget-wide v6, v0, v1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_45

    move v4, v8

    .line 146
    goto :goto_7

    .line 144
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 149
    :cond_48
    move v1, v3

    :goto_49
    if-ge v1, v2, :cond_58

    .line 150
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    cmp-long v4, v4, v10

    if-eqz v4, :cond_55

    move v4, v8

    .line 151
    goto :goto_7

    .line 149
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_58
    move v4, v9

    .line 155
    goto :goto_7

    .end local v0           #bsBits:[J
    .end local v1           #i:I
    .end local v2           #length1:I
    .end local v3           #length2:I
    .restart local p1
    :cond_5a
    move v4, v8

    .line 157
    goto :goto_7
.end method

.method public flip(I)V
    .registers 9
    .parameter "pos"

    .prologue
    .line 494
    if-ltz p1, :cond_1b

    .line 495
    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x40

    if-lt p1, v0, :cond_c

    .line 496
    invoke-direct {p0, p1}, Ljava/util/BitSet;->growBits(I)V

    .line 498
    :cond_c
    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    div-int/lit8 v1, p1, 0x40

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    rem-int/lit8 v6, p1, 0x40

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 502
    return-void

    .line 500
    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "K0006"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flip(II)V
    .registers 15
    .parameter "pos1"
    .parameter "pos2"

    .prologue
    const-wide/16 v10, -0x1

    .line 519
    if-ltz p1, :cond_4f

    if-ltz p2, :cond_4f

    if-lt p2, p1, :cond_4f

    .line 520
    if-ne p1, p2, :cond_b

    .line 544
    :cond_a
    :goto_a
    return-void

    .line 523
    :cond_b
    iget-object v7, p0, Ljava/util/BitSet;->bits:[J

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x40

    if-lt p2, v7, :cond_15

    .line 524
    invoke-direct {p0, p2}, Ljava/util/BitSet;->growBits(I)V

    .line 527
    :cond_15
    div-int/lit8 v5, p1, 0x40

    .line 528
    .local v5, idx1:I
    const/4 v7, 0x1

    sub-int v7, p2, v7

    div-int/lit8 v6, v7, 0x40

    .line 529
    .local v6, idx2:I
    rem-int/lit8 v7, p1, 0x40

    shl-long v0, v10, v7

    .line 530
    .local v0, factor1:J
    const/16 v7, 0x40

    rem-int/lit8 v8, p2, 0x40

    sub-int/2addr v7, v8

    ushr-long v2, v10, v7

    .line 532
    .local v2, factor2:J
    if-ne v5, v6, :cond_33

    .line 533
    iget-object v7, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v8, v7, v5

    and-long v10, v0, v2

    xor-long/2addr v8, v10

    aput-wide v8, v7, v5

    goto :goto_a

    .line 535
    :cond_33
    iget-object v7, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v8, v7, v5

    xor-long/2addr v8, v0

    aput-wide v8, v7, v5

    .line 536
    iget-object v7, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v8, v7, v6

    xor-long/2addr v8, v2

    aput-wide v8, v7, v6

    .line 537
    add-int/lit8 v4, v5, 0x1

    .local v4, i:I
    :goto_43
    if-ge v4, v6, :cond_a

    .line 538
    iget-object v7, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v8, v7, v4

    xor-long/2addr v8, v10

    aput-wide v8, v7, v4

    .line 537
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 542
    .end local v0           #factor1:J
    .end local v2           #factor2:J
    .end local v4           #i:I
    .end local v5           #idx1:I
    .end local v6           #idx2:I
    :cond_4f
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    const-string v8, "K0006"

    invoke-static {v8}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public get(II)Ljava/util/BitSet;
    .registers 22
    .parameter "pos1"
    .parameter "pos2"

    .prologue
    .line 244
    if-ltz p1, :cond_bd

    if-ltz p2, :cond_bd

    move/from16 v0, p2

    move/from16 v1, p1

    if-lt v0, v1, :cond_bd

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object v14, v0

    array-length v14, v14

    mul-int/lit8 v9, v14, 0x40

    .line 246
    .local v9, last:I
    move/from16 v0, p1

    move v1, v9

    if-ge v0, v1, :cond_1d

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_24

    .line 247
    :cond_1d
    new-instance v14, Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Ljava/util/BitSet;-><init>(I)V

    .line 288
    :goto_23
    return-object v14

    .line 249
    :cond_24
    move/from16 v0, p2

    move v1, v9

    if-le v0, v1, :cond_2b

    .line 250
    move/from16 p2, v9

    .line 253
    :cond_2b
    div-int/lit8 v7, p1, 0x40

    .line 254
    .local v7, idx1:I
    const/4 v14, 0x1

    sub-int v14, p2, v14

    div-int/lit8 v8, v14, 0x40

    .line 255
    .local v8, idx2:I
    const-wide/16 v14, -0x1

    rem-int/lit8 v16, p1, 0x40

    shl-long v2, v14, v16

    .line 256
    .local v2, factor1:J
    const-wide/16 v14, -0x1

    const/16 v16, 0x40

    rem-int/lit8 v17, p2, 0x40

    sub-int v16, v16, v17

    ushr-long v4, v14, v16

    .line 258
    .local v4, factor2:J
    if-ne v7, v8, :cond_60

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object v14, v0

    aget-wide v14, v14, v7

    and-long v16, v2, v4

    and-long v14, v14, v16

    rem-int/lit8 v16, p1, 0x40

    ushr-long v12, v14, v16

    .line 260
    .local v12, result:J
    new-instance v14, Ljava/util/BitSet;

    const/4 v15, 0x1

    new-array v15, v15, [J

    const/16 v16, 0x0

    aput-wide v12, v15, v16

    invoke-direct {v14, v15}, Ljava/util/BitSet;-><init>([J)V

    goto :goto_23

    .line 262
    .end local v12           #result:J
    :cond_60
    sub-int v14, v8, v7

    add-int/lit8 v14, v14, 0x1

    new-array v10, v14, [J

    .line 264
    .local v10, newbits:[J
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object v15, v0

    aget-wide v15, v15, v7

    and-long/2addr v15, v2

    aput-wide v15, v10, v14

    .line 265
    array-length v14, v10

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object v15, v0

    aget-wide v15, v15, v8

    and-long/2addr v15, v4

    aput-wide v15, v10, v14

    .line 268
    const/4 v6, 0x1

    .local v6, i:I
    :goto_7f
    sub-int v14, v8, v7

    if-ge v6, v14, :cond_91

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    move-object v14, v0

    add-int v15, v7, v6

    aget-wide v14, v14, v15

    aput-wide v14, v10, v6

    .line 268
    add-int/lit8 v6, v6, 0x1

    goto :goto_7f

    .line 274
    :cond_91
    rem-int/lit8 v11, p1, 0x40

    .line 275
    .local v11, numBitsToShift:I
    if-eqz v11, :cond_b6

    .line 276
    const/4 v6, 0x0

    :goto_96
    array-length v14, v10

    if-ge v6, v14, :cond_b6

    .line 279
    aget-wide v14, v10, v6

    ushr-long/2addr v14, v11

    aput-wide v14, v10, v6

    .line 283
    array-length v14, v10

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-eq v6, v14, :cond_b3

    .line 284
    aget-wide v14, v10, v6

    add-int/lit8 v16, v6, 0x1

    aget-wide v16, v10, v16

    const/16 v18, 0x40

    sub-int v18, v18, v11

    shl-long v16, v16, v18

    or-long v14, v14, v16

    aput-wide v14, v10, v6

    .line 276
    :cond_b3
    add-int/lit8 v6, v6, 0x1

    goto :goto_96

    .line 288
    :cond_b6
    new-instance v14, Ljava/util/BitSet;

    invoke-direct {v14, v10}, Ljava/util/BitSet;-><init>([J)V

    goto/16 :goto_23

    .line 290
    .end local v2           #factor1:J
    .end local v4           #factor2:J
    .end local v6           #i:I
    .end local v7           #idx1:I
    .end local v8           #idx2:I
    .end local v9           #last:I
    .end local v10           #newbits:[J
    .end local v11           #numBitsToShift:I
    :cond_bd
    new-instance v14, Ljava/lang/IndexOutOfBoundsException;

    const-string v15, "K0006"

    invoke-static {v15}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public get(I)Z
    .registers 8
    .parameter "pos"

    .prologue
    const/4 v5, 0x0

    .line 217
    if-ltz p1, :cond_22

    .line 218
    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x40

    if-ge p1, v0, :cond_20

    .line 219
    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    div-int/lit8 v1, p1, 0x40

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x1

    rem-int/lit8 v4, p1, 0x40

    shl-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    .line 221
    :goto_1d
    return v0

    :cond_1e
    move v0, v5

    .line 219
    goto :goto_1d

    :cond_20
    move v0, v5

    .line 221
    goto :goto_1d

    .line 224
    :cond_22
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "K0006"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .registers 9

    .prologue
    .line 188
    const-wide/16 v2, 0x4d2

    .line 191
    .local v2, x:J
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    array-length v1, v4

    .local v1, length:I
    :goto_6
    if-ge v0, v1, :cond_14

    .line 192
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v0

    add-int/lit8 v6, v0, 0x1

    int-to-long v6, v6

    mul-long/2addr v4, v6

    xor-long/2addr v2, v4

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 194
    :cond_14
    const/16 v4, 0x20

    shr-long v4, v2, v4

    xor-long/2addr v4, v2

    long-to-int v4, v4

    return v4
.end method

.method public intersects(Ljava/util/BitSet;)Z
    .registers 13
    .parameter "bs"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    .line 557
    iget-object v0, p1, Ljava/util/BitSet;->bits:[J

    .line 558
    .local v0, bsBits:[J
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    array-length v2, v4

    .local v2, length1:I
    array-length v3, v0

    .line 560
    .local v3, length2:I
    if-gt v2, v3, :cond_1e

    .line 561
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_31

    .line 562
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    aget-wide v6, v0, v1

    and-long/2addr v4, v6

    cmp-long v4, v4, v9

    if-eqz v4, :cond_1b

    move v4, v8

    .line 574
    :goto_1a
    return v4

    .line 561
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 567
    .end local v1           #i:I
    :cond_1e
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1f
    if-ge v1, v3, :cond_31

    .line 568
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    aget-wide v6, v0, v1

    and-long/2addr v4, v6

    cmp-long v4, v4, v9

    if-eqz v4, :cond_2e

    move v4, v8

    .line 569
    goto :goto_1a

    .line 567
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 574
    :cond_31
    const/4 v4, 0x0

    goto :goto_1a
.end method

.method public isEmpty()Z
    .registers 6

    .prologue
    .line 832
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_1
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 833
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v1, v1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_12

    .line 834
    const/4 v1, 0x0

    .line 838
    :goto_11
    return v1

    .line 832
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 838
    :cond_15
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public length()I
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 684
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    array-length v4, v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    .line 685
    .local v1, idx:I
    :goto_8
    if-ltz v1, :cond_15

    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v4, v4, v1

    cmp-long v4, v4, v6

    if-nez v4, :cond_15

    .line 686
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 688
    :cond_15
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1a

    .line 689
    const/4 v4, 0x0

    .line 696
    :goto_19
    return v4

    .line 691
    :cond_1a
    const/16 v0, 0x3f

    .line 692
    .local v0, i:I
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v4, v1

    .line 693
    .local v2, val:J
    :goto_20
    const-wide/16 v4, 0x1

    shl-long/2addr v4, v0

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-nez v4, :cond_2d

    if-lez v0, :cond_2d

    .line 694
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 696
    :cond_2d
    mul-int/lit8 v4, v1, 0x40

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_19
.end method

.method public nextClearBit(I)I
    .registers 16
    .parameter "pos"

    .prologue
    const-wide/16 v12, 0x1

    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const/16 v7, 0x40

    .line 787
    if-ltz p1, :cond_63

    .line 788
    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    array-length v3, v3

    mul-int/lit8 v0, v3, 0x40

    .line 789
    .local v0, bssize:I
    if-lt p1, v0, :cond_13

    move v3, p1

    .line 819
    :goto_12
    return v3

    .line 793
    :cond_13
    div-int/lit8 v1, p1, 0x40

    .line 795
    .local v1, idx:I
    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v3, v3, v1

    cmp-long v3, v3, v8

    if-eqz v3, :cond_33

    .line 796
    rem-int/lit8 v2, p1, 0x40

    .local v2, j:I
    :goto_1f
    if-ge v2, v7, :cond_33

    .line 797
    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v3, v3, v1

    shl-long v5, v12, v2

    and-long/2addr v3, v5

    cmp-long v3, v3, v10

    if-nez v3, :cond_30

    .line 798
    mul-int/lit8 v3, v1, 0x40

    add-int/2addr v3, v2

    goto :goto_12

    .line 796
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 803
    .end local v2           #j:I
    :cond_33
    add-int/lit8 v1, v1, 0x1

    .line 804
    :goto_35
    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    array-length v3, v3

    if-ge v1, v3, :cond_45

    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v3, v3, v1

    cmp-long v3, v3, v8

    if-nez v3, :cond_45

    .line 805
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 807
    :cond_45
    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    array-length v3, v3

    if-ne v1, v3, :cond_4c

    move v3, v0

    .line 808
    goto :goto_12

    .line 813
    :cond_4c
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_4d
    if-ge v2, v7, :cond_61

    .line 814
    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v3, v3, v1

    shl-long v5, v12, v2

    and-long/2addr v3, v5

    cmp-long v3, v3, v10

    if-nez v3, :cond_5e

    .line 815
    mul-int/lit8 v3, v1, 0x40

    add-int/2addr v3, v2

    goto :goto_12

    .line 813
    :cond_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    :cond_61
    move v3, v0

    .line 819
    goto :goto_12

    .line 821
    .end local v0           #bssize:I
    .end local v1           #idx:I
    .end local v2           #j:I
    :cond_63
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string v4, "K0006"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextSetBit(I)I
    .registers 14
    .parameter "pos"

    .prologue
    const-wide/16 v10, 0x1

    const/16 v9, 0x40

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    .line 741
    if-ltz p1, :cond_62

    .line 742
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x40

    if-lt p1, v2, :cond_12

    move v2, v8

    .line 772
    :goto_11
    return v2

    .line 746
    :cond_12
    div-int/lit8 v0, p1, 0x40

    .line 748
    .local v0, idx:I
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_32

    .line 749
    rem-int/lit8 v1, p1, 0x40

    .local v1, j:I
    :goto_1e
    if-ge v1, v9, :cond_32

    .line 750
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v2, v0

    shl-long v4, v10, v1

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2f

    .line 751
    mul-int/lit8 v2, v0, 0x40

    add-int/2addr v2, v1

    goto :goto_11

    .line 749
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 756
    .end local v1           #j:I
    :cond_32
    add-int/lit8 v0, v0, 0x1

    .line 757
    :goto_34
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    array-length v2, v2

    if-ge v0, v2, :cond_44

    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, v6

    if-nez v2, :cond_44

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 760
    :cond_44
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    array-length v2, v2

    if-ne v0, v2, :cond_4b

    move v2, v8

    .line 761
    goto :goto_11

    .line 766
    :cond_4b
    const/4 v1, 0x0

    .restart local v1       #j:I
    :goto_4c
    if-ge v1, v9, :cond_60

    .line 767
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v2, v2, v0

    shl-long v4, v10, v1

    and-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5d

    .line 768
    mul-int/lit8 v2, v0, 0x40

    add-int/2addr v2, v1

    goto :goto_11

    .line 766
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    :cond_60
    move v2, v8

    .line 772
    goto :goto_11

    .line 774
    .end local v0           #idx:I
    .end local v1           #j:I
    :cond_62
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "K0006"

    invoke-static {v3}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public or(Ljava/util/BitSet;)V
    .registers 11
    .parameter "bs"

    .prologue
    const/4 v6, 0x1

    .line 632
    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result v3

    .line 633
    .local v3, nbits:I
    div-int/lit8 v4, v3, 0x40

    rem-int/lit8 v5, v3, 0x40

    if-lez v5, :cond_29

    move v5, v6

    :goto_c
    add-int v2, v4, v5

    .line 634
    .local v2, length:I
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    array-length v4, v4

    if-le v2, v4, :cond_18

    .line 635
    sub-int v4, v3, v6

    invoke-direct {p0, v4}, Ljava/util/BitSet;->growBits(I)V

    .line 637
    :cond_18
    iget-object v0, p1, Ljava/util/BitSet;->bits:[J

    .line 638
    .local v0, bsBits:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    if-ge v1, v2, :cond_2b

    .line 639
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v4, v1

    aget-wide v7, v0, v1

    or-long/2addr v5, v7

    aput-wide v5, v4, v1

    .line 638
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 633
    .end local v0           #bsBits:[J
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_29
    const/4 v5, 0x0

    goto :goto_c

    .line 641
    .restart local v0       #bsBits:[J
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_2b
    return-void
.end method

.method public set(I)V
    .registers 9
    .parameter "pos"

    .prologue
    .line 307
    if-ltz p1, :cond_1b

    .line 308
    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x40

    if-lt p1, v0, :cond_c

    .line 309
    invoke-direct {p0, p1}, Ljava/util/BitSet;->growBits(I)V

    .line 311
    :cond_c
    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    div-int/lit8 v1, p1, 0x40

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x1

    rem-int/lit8 v6, p1, 0x40

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 315
    return-void

    .line 313
    :cond_1b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "K0006"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(II)V
    .registers 15
    .parameter "pos1"
    .parameter "pos2"

    .prologue
    const-wide/16 v10, -0x1

    .line 353
    if-ltz p1, :cond_4f

    if-ltz p2, :cond_4f

    if-lt p2, p1, :cond_4f

    .line 354
    if-ne p1, p2, :cond_b

    .line 378
    :cond_a
    :goto_a
    return-void

    .line 357
    :cond_b
    iget-object v7, p0, Ljava/util/BitSet;->bits:[J

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x40

    if-lt p2, v7, :cond_15

    .line 358
    invoke-direct {p0, p2}, Ljava/util/BitSet;->growBits(I)V

    .line 361
    :cond_15
    div-int/lit8 v5, p1, 0x40

    .line 362
    .local v5, idx1:I
    const/4 v7, 0x1

    sub-int v7, p2, v7

    div-int/lit8 v6, v7, 0x40

    .line 363
    .local v6, idx2:I
    rem-int/lit8 v7, p1, 0x40

    shl-long v0, v10, v7

    .line 364
    .local v0, factor1:J
    const/16 v7, 0x40

    rem-int/lit8 v8, p2, 0x40

    sub-int/2addr v7, v8

    ushr-long v2, v10, v7

    .line 366
    .local v2, factor2:J
    if-ne v5, v6, :cond_33

    .line 367
    iget-object v7, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v8, v7, v5

    and-long v10, v0, v2

    or-long/2addr v8, v10

    aput-wide v8, v7, v5

    goto :goto_a

    .line 369
    :cond_33
    iget-object v7, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v8, v7, v5

    or-long/2addr v8, v0

    aput-wide v8, v7, v5

    .line 370
    iget-object v7, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v8, v7, v6

    or-long/2addr v8, v2

    aput-wide v8, v7, v6

    .line 371
    add-int/lit8 v4, v5, 0x1

    .local v4, i:I
    :goto_43
    if-ge v4, v6, :cond_a

    .line 372
    iget-object v7, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v8, v7, v4

    or-long/2addr v8, v10

    aput-wide v8, v7, v4

    .line 371
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 376
    .end local v0           #factor1:J
    .end local v2           #factor2:J
    .end local v4           #i:I
    .end local v5           #idx1:I
    .end local v6           #idx2:I
    :cond_4f
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    const-string v8, "K0006"

    invoke-static {v8}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public set(IIZ)V
    .registers 4
    .parameter "pos1"
    .parameter "pos2"
    .parameter "val"

    .prologue
    .line 397
    if-eqz p3, :cond_6

    .line 398
    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->set(II)V

    .line 402
    :goto_5
    return-void

    .line 400
    :cond_6
    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->clear(II)V

    goto :goto_5
.end method

.method public set(IZ)V
    .registers 3
    .parameter "pos"
    .parameter "val"

    .prologue
    .line 331
    if-eqz p2, :cond_6

    .line 332
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    .line 336
    :goto_5
    return-void

    .line 334
    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_5
.end method

.method public size()I
    .registers 2

    .prologue
    .line 674
    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x40

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .prologue
    const-wide/16 v9, 0x0

    .line 708
    new-instance v4, Ljava/lang/StringBuffer;

    iget-object v5, p0, Ljava/util/BitSet;->bits:[J

    array-length v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 709
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 710
    .local v0, bitCount:I
    const/16 v5, 0x7b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 711
    const/4 v1, 0x0

    .line 712
    .local v1, comma:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    iget-object v5, p0, Ljava/util/BitSet;->bits:[J

    array-length v5, v5

    if-ge v2, v5, :cond_47

    .line 713
    iget-object v5, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v5, v2

    cmp-long v5, v5, v9

    if-nez v5, :cond_26

    .line 714
    add-int/lit8 v0, v0, 0x40

    .line 712
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 717
    :cond_26
    const/4 v3, 0x0

    .local v3, j:I
    :goto_27
    const/16 v5, 0x40

    if-ge v3, v5, :cond_23

    .line 718
    iget-object v5, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v5, v2

    const-wide/16 v7, 0x1

    shl-long/2addr v7, v3

    and-long/2addr v5, v7

    cmp-long v5, v5, v9

    if-eqz v5, :cond_42

    .line 719
    if-eqz v1, :cond_3e

    .line 720
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 722
    :cond_3e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 723
    const/4 v1, 0x1

    .line 725
    :cond_42
    add-int/lit8 v0, v0, 0x1

    .line 717
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 728
    .end local v3           #j:I
    :cond_47
    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 729
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public xor(Ljava/util/BitSet;)V
    .registers 11
    .parameter "bs"

    .prologue
    const/4 v6, 0x1

    .line 654
    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result v3

    .line 655
    .local v3, nbits:I
    div-int/lit8 v4, v3, 0x40

    rem-int/lit8 v5, v3, 0x40

    if-lez v5, :cond_29

    move v5, v6

    :goto_c
    add-int v2, v4, v5

    .line 656
    .local v2, length:I
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    array-length v4, v4

    if-le v2, v4, :cond_18

    .line 657
    sub-int v4, v3, v6

    invoke-direct {p0, v4}, Ljava/util/BitSet;->growBits(I)V

    .line 659
    :cond_18
    iget-object v0, p1, Ljava/util/BitSet;->bits:[J

    .line 660
    .local v0, bsBits:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    if-ge v1, v2, :cond_2b

    .line 661
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    aget-wide v5, v4, v1

    aget-wide v7, v0, v1

    xor-long/2addr v5, v7

    aput-wide v5, v4, v1

    .line 660
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 655
    .end local v0           #bsBits:[J
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_29
    const/4 v5, 0x0

    goto :goto_c

    .line 664
    .restart local v0       #bsBits:[J
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_2b
    return-void
.end method
