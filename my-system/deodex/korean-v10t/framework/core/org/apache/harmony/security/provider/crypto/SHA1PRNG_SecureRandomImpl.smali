.class public Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;
.super Ljava/security/SecureRandomSpi;
.source "SHA1PRNG_SecureRandomImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/harmony/security/provider/crypto/SHA1_Data;


# static fields
.field private static final COUNTER_BASE:I = 0x0

.field private static final END_FLAGS:[I = null

.field private static final EXTRAFRAME_OFFSET:I = 0x5

.field private static final FRAME_LENGTH:I = 0x10

.field private static final FRAME_OFFSET:I = 0x15

.field private static final HASHBYTES_TO_USE:I = 0x14

.field private static final HASHCOPY_OFFSET:I = 0x0

.field private static final LEFT:[I = null

.field private static final MASK:[I = null

.field private static final MAX_BYTES:I = 0x30

.field private static final NEXT_BYTES:I = 0x2

.field private static final RIGHT1:[I = null

.field private static final RIGHT2:[I = null

.field private static final SET_SEED:I = 0x1

.field private static final UNDEFINED:I = 0x0

.field private static myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl; = null

.field private static final serialVersionUID:J = 0x3f0091d1f89aebbL


# instance fields
.field private transient copies:[I

.field private transient counter:J

.field private transient nextBIndex:I

.field private transient nextBytes:[B

.field private transient seed:[I

.field private transient seedLength:J

.field private transient state:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x4

    .line 56
    new-array v0, v1, [I

    fill-array-data v0, :array_26

    sput-object v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->END_FLAGS:[I

    .line 58
    new-array v0, v1, [I

    fill-array-data v0, :array_32

    sput-object v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->RIGHT1:[I

    .line 60
    new-array v0, v1, [I

    fill-array-data v0, :array_3e

    sput-object v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->RIGHT2:[I

    .line 62
    new-array v0, v1, [I

    fill-array-data v0, :array_4a

    sput-object v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->LEFT:[I

    .line 64
    new-array v0, v1, [I

    fill-array-data v0, :array_56

    sput-object v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->MASK:[I

    return-void

    .line 56
    nop

    :array_26
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x80t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
    .end array-data

    .line 58
    :array_32
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
    .end array-data

    .line 60
    :array_3e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    .line 62
    :array_4a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 64
    :array_56
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0x0t
        0xfft 0xfft 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0x14

    .line 160
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    .line 162
    const/16 v0, 0x57

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    .line 163
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v1, 0x52

    const v2, 0x67452301

    aput v2, v0, v1

    .line 164
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v1, 0x53

    const v2, -0x10325477

    aput v2, v0, v1

    .line 165
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v1, 0x54

    const v2, -0x67452302

    aput v2, v0, v1

    .line 166
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v1, 0x55

    const v2, 0x10325476

    aput v2, v0, v1

    .line 167
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v1, 0x56

    const v2, -0x3c2d1e10

    aput v2, v0, v1

    .line 169
    iput-wide v4, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    .line 170
    const/16 v0, 0x25

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    .line 171
    new-array v0, v3, [B

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    .line 172
    iput v3, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    .line 173
    iput-wide v4, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    .line 175
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 10
    .parameter "ois"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x14

    const/16 v6, 0x10

    const/16 v4, 0x51

    const/4 v5, 0x5

    .line 487
    const/16 v2, 0x57

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    .line 488
    const/16 v2, 0x25

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    .line 489
    new-array v2, v7, [B

    iput-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    .line 491
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    .line 492
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    .line 493
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    .line 494
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aput v3, v2, v4

    .line 496
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    aget v2, v2, v4

    add-int/lit8 v2, v2, 0x3

    shr-int/lit8 v1, v2, 0x2

    .line 498
    .local v1, nRemaining:I
    iget v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5c

    .line 500
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3f
    if-ge v0, v1, :cond_4c

    .line 501
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 503
    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    if-ge v0, v5, :cond_c6

    .line 504
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v3, v0, 0x52

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 507
    .end local v0           #i:I
    :cond_5c
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    aget v2, v2, v4

    const/16 v3, 0x30

    if-lt v2, v3, :cond_8a

    .line 510
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aput v3, v2, v6

    .line 511
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v3, 0x11

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 512
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v3, 0x1e

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 513
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v3, 0x1f

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 516
    :cond_8a
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_8b
    if-ge v0, v6, :cond_98

    .line 517
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    .line 520
    :cond_98
    const/4 v0, 0x0

    :goto_99
    if-ge v0, v1, :cond_a8

    .line 521
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    add-int/lit8 v3, v0, 0x15

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 520
    add-int/lit8 v0, v0, 0x1

    goto :goto_99

    .line 524
    :cond_a8
    const/4 v0, 0x0

    :goto_a9
    if-ge v0, v5, :cond_b6

    .line 525
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_a9

    .line 528
    :cond_b6
    const/4 v0, 0x0

    :goto_b7
    if-ge v0, v5, :cond_c6

    .line 529
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    add-int/lit8 v3, v0, 0x52

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    aput v4, v2, v3

    .line 528
    add-int/lit8 v0, v0, 0x1

    goto :goto_b7

    .line 533
    :cond_c6
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    .line 534
    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    iget v3, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    iget v4, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    sub-int v4, v7, v4

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/ObjectInputStream;->read([BII)I

    .line 535
    return-void
.end method

.method private updateSeed([B)V
    .registers 6
    .parameter "bytes"

    .prologue
    .line 189
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/4 v1, 0x0

    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, p1, v1, v2}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->updateHash([I[BII)V

    .line 191
    iget-wide v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    .line 192
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 16
    .parameter "oos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x52

    const/16 v12, 0x10

    const/16 v9, 0x51

    const/4 v11, 0x5

    const/4 v10, 0x0

    .line 416
    const/4 v3, 0x0

    .line 418
    .local v3, intData:[I
    const/4 v6, 0x5

    .line 419
    .local v6, only_hash:I
    const/16 v0, 0x1a

    .line 420
    .local v0, hashes_and_frame:I
    const/16 v1, 0x2a

    .line 423
    .local v1, hashes_and_frame_extra:I
    iget-wide v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    invoke-virtual {p1, v7, v8}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 424
    iget-wide v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    invoke-virtual {p1, v7, v8}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 425
    iget v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 426
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    aget v7, v7, v9

    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 428
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    aget v7, v7, v9

    add-int/lit8 v7, v7, 0x3

    shr-int/lit8 v4, v7, 0x2

    .line 430
    .local v4, nRemaining:I
    iget v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4b

    .line 436
    add-int/lit8 v7, v4, 0x5

    new-array v3, v7, [I

    .line 438
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-static {v7, v10, v3, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-static {v7, v13, v3, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    :goto_3f
    const/4 v2, 0x0

    .local v2, i:I
    :goto_40
    array-length v7, v3

    if-ge v2, v7, :cond_9f

    .line 477
    aget v7, v3, v2

    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 476
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 447
    .end local v2           #i:I
    :cond_4b
    const/4 v5, 0x0

    .line 448
    .local v5, offset:I
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    aget v7, v7, v9

    const/16 v8, 0x30

    if-ge v7, v8, :cond_74

    .line 450
    add-int/lit8 v7, v4, 0x1a

    new-array v3, v7, [I

    .line 463
    :goto_58
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-static {v7, v10, v3, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    add-int/lit8 v5, v5, 0x10

    .line 466
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/16 v8, 0x15

    invoke-static {v7, v8, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 468
    add-int/2addr v5, v4

    .line 470
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    invoke-static {v7, v10, v3, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    add-int/lit8 v5, v5, 0x5

    .line 473
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    invoke-static {v7, v13, v3, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3f

    .line 454
    :cond_74
    add-int/lit8 v7, v4, 0x2a

    new-array v3, v7, [I

    .line 456
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    aget v7, v7, v12

    aput v7, v3, v5

    .line 457
    add-int/lit8 v7, v5, 0x1

    iget-object v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v9, 0x11

    aget v8, v8, v9

    aput v8, v3, v7

    .line 458
    add-int/lit8 v7, v5, 0x2

    iget-object v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v9, 0x1e

    aget v8, v8, v9

    aput v8, v3, v7

    .line 459
    add-int/lit8 v7, v5, 0x3

    iget-object v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v9, 0x1f

    aget v8, v8, v9

    aput v8, v3, v7

    .line 460
    add-int/lit8 v5, v5, 0x4

    goto :goto_58

    .line 480
    .end local v5           #offset:I
    .restart local v2       #i:I
    :cond_9f
    iget v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 481
    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    iget v8, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    const/16 v9, 0x14

    iget v10, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    sub-int/2addr v9, v10

    invoke-virtual {p1, v7, v8, v9}, Ljava/io/ObjectOutputStream;->write([BII)V

    .line 482
    return-void
.end method


# virtual methods
.method protected engineGenerateSeed(I)[B
    .registers 5
    .parameter "numBytes"

    .prologue
    .line 240
    if-gez p1, :cond_e

    .line 241
    new-instance v1, Ljava/lang/NegativeArraySizeException;

    const-string v2, "security.171"

    invoke-static {v2, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_e
    if-nez p1, :cond_14

    .line 244
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 256
    :goto_13
    return-object v1

    .line 247
    :cond_14
    sget-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    if-nez v1, :cond_2a

    .line 248
    new-instance v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    invoke-direct {v1}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;-><init>()V

    sput-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    .line 249
    sget-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->getRandomBits(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->engineSetSeed([B)V

    .line 253
    :cond_2a
    new-array v0, p1, [B

    .line 254
    .local v0, myBytes:[B
    sget-object v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->myRandom:Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->engineNextBytes([B)V

    move-object v1, v0

    .line 256
    goto :goto_13
.end method

.method protected engineNextBytes([B)V
    .registers 22
    .parameter "bytes"

    .prologue
    .line 282
    const/4 v7, 0x7

    .line 284
    .local v7, extrabytes:I
    if-nez p1, :cond_11

    .line 285
    new-instance v14, Ljava/lang/NullPointerException;

    const-string v15, "security.83"

    const-string v16, "bytes"

    invoke-static/range {v15 .. v16}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 289
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object v14, v0

    const/16 v15, 0x51

    aget v14, v14, v15

    if-nez v14, :cond_45

    const/4 v14, 0x0

    move v11, v14

    .line 292
    .local v11, lastWord:I
    :goto_1e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    move v14, v0

    if-nez v14, :cond_54

    .line 295
    const/16 v14, 0x14

    invoke-static {v14}, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->getRandomBits(I)[B

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->updateSeed([B)V

    .line 296
    const/16 v14, 0x14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    .line 334
    :cond_38
    :goto_38
    const/4 v14, 0x2

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    .line 336
    move-object/from16 v0, p1

    array-length v0, v0

    move v14, v0

    if-nez v14, :cond_e9

    .line 412
    :cond_44
    :goto_44
    return-void

    .line 289
    .end local v11           #lastWord:I
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object v14, v0

    const/16 v15, 0x51

    aget v14, v14, v15

    add-int/lit8 v14, v14, 0x7

    shr-int/lit8 v14, v14, 0x2

    move v11, v14

    goto :goto_1e

    .line 298
    .restart local v11       #lastWord:I
    :cond_54
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    move v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_38

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object v14, v0

    const/16 v15, 0x52

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x5

    invoke-static/range {v14 .. v18}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    add-int/lit8 v8, v11, 0x3

    .local v8, i:I
    :goto_72
    const/16 v14, 0x12

    if-ge v8, v14, :cond_81

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object v14, v0

    const/4 v15, 0x0

    aput v15, v14, v8

    .line 316
    add-int/lit8 v8, v8, 0x1

    goto :goto_72

    .line 320
    :cond_81
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seedLength:J

    move-wide v14, v0

    const/16 v16, 0x43

    shl-long v5, v14, v16

    .line 324
    .local v5, bits:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object v14, v0

    const/16 v15, 0x51

    aget v14, v14, v15

    const/16 v15, 0x30

    if-ge v14, v15, :cond_c4

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object v14, v0

    const/16 v15, 0xe

    const/16 v16, 0x20

    ushr-long v16, v5, v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object v14, v0

    const/16 v15, 0xf

    const-wide/16 v16, -0x1

    and-long v16, v16, v5

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    .line 332
    :goto_bb
    const/16 v14, 0x14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    goto/16 :goto_38

    .line 328
    :cond_c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    move-object v14, v0

    const/16 v15, 0x13

    const/16 v16, 0x20

    ushr-long v16, v5, v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    move-object v14, v0

    const/16 v15, 0x14

    const-wide/16 v16, -0x1

    and-long v16, v16, v5

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    goto :goto_bb

    .line 340
    .end local v5           #bits:J
    .end local v8           #i:I
    :cond_e9
    const/4 v13, 0x0

    .line 343
    .local v13, nextByteToReturn:I
    const/16 v14, 0x14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    move v15, v0

    sub-int/2addr v14, v15

    move-object/from16 v0, p1

    array-length v0, v0

    move v15, v0

    sub-int/2addr v15, v13

    if-ge v14, v15, :cond_24e

    const/16 v14, 0x14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    move v15, v0

    sub-int/2addr v14, v15

    move v12, v14

    .line 346
    .local v12, n:I
    :goto_102
    if-lez v12, :cond_123

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    move v15, v0

    move-object v0, v14

    move v1, v15

    move-object/from16 v2, p1

    move v3, v13

    move v4, v12

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    move v14, v0

    add-int/2addr v14, v12

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    .line 349
    add-int/2addr v13, v12

    .line 352
    :cond_123
    move-object/from16 v0, p1

    array-length v0, v0

    move v14, v0

    if-ge v13, v14, :cond_44

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object v14, v0

    const/16 v15, 0x51

    aget v14, v14, v15

    and-int/lit8 v12, v14, 0x3

    .line 358
    :cond_134
    if-nez v12, :cond_256

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object v14, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    move-wide v15, v0

    const/16 v17, 0x20

    ushr-long v15, v15, v17

    long-to-int v15, v15

    aput v15, v14, v11

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object v14, v0

    add-int/lit8 v15, v11, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x1

    and-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object v14, v0

    add-int/lit8 v15, v11, 0x2

    sget-object v16, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->END_FLAGS:[I

    const/16 v17, 0x0

    aget v16, v16, v17

    aput v16, v14, v15

    .line 370
    :goto_16e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object v14, v0

    const/16 v15, 0x51

    aget v14, v14, v15

    const/16 v15, 0x30

    if-le v14, v15, :cond_19f

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    move-object v14, v0

    const/4 v15, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object/from16 v16, v0

    const/16 v17, 0x10

    aget v16, v16, v17

    aput v16, v14, v15

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    move-object v14, v0

    const/4 v15, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object/from16 v16, v0

    const/16 v17, 0x11

    aget v16, v16, v17

    aput v16, v14, v15

    .line 375
    :cond_19f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object v14, v0

    invoke-static {v14}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object v14, v0

    const/16 v15, 0x51

    aget v14, v14, v15

    const/16 v15, 0x30

    if-le v14, v15, :cond_1f6

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    move-object/from16 v16, v0

    const/16 v17, 0x15

    const/16 v18, 0x10

    invoke-static/range {v14 .. v18}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    move-object v14, v0

    const/4 v15, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x10

    invoke-static/range {v14 .. v18}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object v14, v0

    invoke-static {v14}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    move-object v14, v0

    const/16 v15, 0x15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x10

    invoke-static/range {v14 .. v18}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    :cond_1f6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    move-wide v14, v0

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-wide v0, v14

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    .line 388
    const/4 v9, 0x0

    .line 389
    .local v9, j:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_206
    const/4 v14, 0x5

    if-ge v8, v14, :cond_2c2

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object v14, v0

    add-int/lit8 v15, v8, 0x52

    aget v10, v14, v15

    .line 391
    .local v10, k:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    move-object v14, v0

    ushr-int/lit8 v15, v10, 0x18

    int-to-byte v15, v15

    aput-byte v15, v14, v9

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    move-object v14, v0

    add-int/lit8 v15, v9, 0x1

    ushr-int/lit8 v16, v10, 0x10

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v14, v15

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    move-object v14, v0

    add-int/lit8 v15, v9, 0x2

    ushr-int/lit8 v16, v10, 0x8

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v14, v15

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    move-object v14, v0

    add-int/lit8 v15, v9, 0x3

    move v0, v10

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v14, v15

    .line 395
    add-int/lit8 v9, v9, 0x4

    .line 389
    add-int/lit8 v8, v8, 0x1

    goto :goto_206

    .line 343
    .end local v8           #i:I
    .end local v9           #j:I
    .end local v10           #k:I
    .end local v12           #n:I
    :cond_24e
    move-object/from16 v0, p1

    array-length v0, v0

    move v14, v0

    sub-int/2addr v14, v13

    move v12, v14

    goto/16 :goto_102

    .line 366
    .restart local v12       #n:I
    :cond_256
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object v14, v0

    aget v15, v14, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    move-wide/from16 v16, v0

    sget-object v18, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->RIGHT1:[I

    aget v18, v18, v12

    ushr-long v16, v16, v18

    sget-object v18, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->MASK:[I

    aget v18, v18, v12

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    and-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    or-int v15, v15, v16

    aput v15, v14, v11

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object v14, v0

    add-int/lit8 v15, v11, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    move-wide/from16 v16, v0

    sget-object v18, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->RIGHT2:[I

    aget v18, v18, v12

    ushr-long v16, v16, v18

    const-wide/16 v18, -0x1

    and-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    move-object v14, v0

    add-int/lit8 v15, v11, 0x2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->counter:J

    move-wide/from16 v16, v0

    sget-object v18, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->LEFT:[I

    aget v18, v18, v12

    shl-long v16, v16, v18

    sget-object v18, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->END_FLAGS:[I

    aget v18, v18, v12

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    or-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    goto/16 :goto_16e

    .line 398
    .restart local v8       #i:I
    .restart local v9       #j:I
    :cond_2c2
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    .line 399
    const/16 v14, 0x14

    move-object/from16 v0, p1

    array-length v0, v0

    move v15, v0

    sub-int/2addr v15, v13

    if-ge v14, v15, :cond_2f9

    const/16 v14, 0x14

    move v9, v14

    .line 402
    :goto_2d4
    if-lez v9, :cond_2f1

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBytes:[B

    move-object v14, v0

    const/4 v15, 0x0

    move-object v0, v14

    move v1, v15

    move-object/from16 v2, p1

    move v3, v13

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    add-int/2addr v13, v9

    .line 405
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    move v14, v0

    add-int/2addr v14, v9

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->nextBIndex:I

    .line 408
    :cond_2f1
    move-object/from16 v0, p1

    array-length v0, v0

    move v14, v0

    if-lt v13, v14, :cond_134

    goto/16 :goto_44

    .line 399
    :cond_2f9
    move-object/from16 v0, p1

    array-length v0, v0

    move v14, v0

    sub-int/2addr v14, v13

    move v9, v14

    goto :goto_2d4
.end method

.method protected engineSetSeed([B)V
    .registers 7
    .parameter "seed"

    .prologue
    .line 208
    if-nez p1, :cond_10

    .line 209
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.83"

    const-string v2, "seed"

    invoke-static {v1, v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_10
    iget v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 214
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->copies:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->seed:[I

    const/16 v3, 0x52

    const/4 v4, 0x5

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    :cond_20
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->state:I

    .line 219
    array-length v0, p1

    if-eqz v0, :cond_29

    .line 220
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/provider/crypto/SHA1PRNG_SecureRandomImpl;->updateSeed([B)V

    .line 222
    :cond_29
    return-void
.end method
