.class public Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;
.super Ljava/lang/Object;
.source "DSAParametersGenerator.java"


# static fields
.field private static ONE:Ljava/math/BigInteger;

.field private static TWO:Ljava/math/BigInteger;


# instance fields
.field private certainty:I

.field private random:Ljava/security/SecureRandom;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    .line 20
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private add([B[BI)V
    .registers 8
    .parameter "a"
    .parameter "b"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 49
    array-length v2, p2

    sub-int/2addr v2, v3

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    add-int v1, v2, p3

    .line 51
    .local v1, x:I
    array-length v2, p2

    sub-int/2addr v2, v3

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    .line 52
    ushr-int/lit8 v1, v1, 0x8

    .line 54
    array-length v2, p2

    const/4 v3, 0x2

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_14
    if-ltz v0, :cond_23

    .line 56
    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 57
    int-to-byte v2, v1

    aput-byte v2, p1, v0

    .line 58
    ushr-int/lit8 v1, v1, 0x8

    .line 54
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    .line 60
    :cond_23
    return-void
.end method


# virtual methods
.method public generateParameters()Lorg/bouncycastle/crypto/params/DSAParameters;
    .registers 29

    .prologue
    .line 70
    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 71
    .local v19, seed:[B
    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object v15, v0

    .line 72
    .local v15, part1:[B
    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 73
    .local v16, part2:[B
    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 74
    .local v21, u:[B
    new-instance v20, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct/range {v20 .. v20}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 75
    .local v20, sha1:Lorg/bouncycastle/crypto/digests/SHA1Digest;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->size:I

    move/from16 v24, v0

    const/16 v25, 0x1

    sub-int v24, v24, v25

    move/from16 v0, v24

    div-int/lit16 v0, v0, 0xa0

    move v11, v0

    .line 76
    .local v11, n:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->size:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x8

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 78
    .local v22, w:[B
    const/16 v18, 0x0

    .local v18, q:Ljava/math/BigInteger;
    const/4 v13, 0x0

    .local v13, p:Ljava/math/BigInteger;
    const/4 v7, 0x0

    .line 79
    .local v7, g:Ljava/math/BigInteger;
    const/4 v6, 0x0

    .line 80
    .local v6, counter:I
    const/16 v17, 0x0

    .line 82
    .local v17, primesFound:Z
    :cond_48
    :goto_48
    if-nez v17, :cond_212

    .line 86
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 88
    const/16 v24, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->update([BII)V

    .line 90
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object v1, v15

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->doFinal([BI)I

    .line 92
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    move-object/from16 v2, v16

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->add([B[BI)V

    .line 96
    const/16 v24, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->update([BII)V

    .line 98
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->doFinal([BI)I

    .line 100
    const/4 v9, 0x0

    .local v9, i:I
    :goto_b4
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v24, v0

    move v0, v9

    move/from16 v1, v24

    if-eq v0, v1, :cond_ce

    .line 102
    aget-byte v24, v15, v9

    aget-byte v25, v16, v9

    xor-int v24, v24, v25

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v21, v9

    .line 100
    add-int/lit8 v9, v9, 0x1

    goto :goto_b4

    .line 105
    :cond_ce
    const/16 v24, 0x0

    aget-byte v25, v21, v24

    or-int/lit8 v25, v25, -0x80

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v21, v24

    .line 106
    const/16 v24, 0x13

    aget-byte v25, v21, v24

    or-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v21, v24

    .line 108
    new-instance v18, Ljava/math/BigInteger;

    .end local v18           #q:Ljava/math/BigInteger;
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 110
    .restart local v18       #q:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    move/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v24

    if-eqz v24, :cond_4a

    .line 112
    const/4 v6, 0x0

    .line 114
    const/4 v12, 0x2

    .line 116
    .local v12, offset:I
    :goto_107
    const/16 v24, 0x1000

    move v0, v6

    move/from16 v1, v24

    if-ge v0, v1, :cond_48

    .line 118
    const/4 v10, 0x0

    .local v10, k:I
    :goto_10f
    if-ge v10, v11, :cond_15b

    .line 120
    add-int v24, v12, v10

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v19

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->add([B[BI)V

    .line 121
    const/16 v24, 0x0

    move-object v0, v15

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v20

    move-object v1, v15

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->update([BII)V

    .line 122
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object v1, v15

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->doFinal([BI)I

    .line 123
    const/16 v24, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v26, v10, 0x1

    move-object v0, v15

    array-length v0, v0

    move/from16 v27, v0

    mul-int v26, v26, v27

    sub-int v25, v25, v26

    move-object v0, v15

    array-length v0, v0

    move/from16 v26, v0

    move-object v0, v15

    move/from16 v1, v24

    move-object/from16 v2, v22

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    add-int/lit8 v10, v10, 0x1

    goto :goto_10f

    .line 126
    :cond_15b
    add-int v24, v12, v11

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v19

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->add([B[BI)V

    .line 127
    const/16 v24, 0x0

    move-object v0, v15

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v20

    move-object v1, v15

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->update([BII)V

    .line 128
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move-object v1, v15

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA1Digest;->doFinal([BI)I

    .line 129
    move-object v0, v15

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    move-object v0, v15

    array-length v0, v0

    move/from16 v26, v0

    mul-int v26, v26, v11

    sub-int v25, v25, v26

    sub-int v24, v24, v25

    const/16 v25, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move-object v0, v15

    array-length v0, v0

    move/from16 v27, v0

    mul-int v27, v27, v11

    sub-int v26, v26, v27

    move-object v0, v15

    move/from16 v1, v24

    move-object/from16 v2, v22

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    const/16 v24, 0x0

    aget-byte v25, v22, v24

    or-int/lit8 v25, v25, -0x80

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v22, v24

    .line 133
    new-instance v23, Ljava/math/BigInteger;

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 135
    .local v23, x:Ljava/math/BigInteger;
    sget-object v24, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 137
    .local v5, c:Ljava/math/BigInteger;
    sget-object v24, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 139
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->size:I

    move/from16 v24, v0

    const/16 v25, 0x1

    sub-int v24, v24, v25

    move-object v0, v13

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v24

    if-eqz v24, :cond_20a

    .line 141
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    move/from16 v24, v0

    move-object v0, v13

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v24

    if-eqz v24, :cond_20a

    .line 143
    const/16 v17, 0x1

    .line 144
    goto/16 :goto_48

    .line 148
    :cond_20a
    add-int/lit8 v6, v6, 0x1

    .line 149
    add-int/lit8 v24, v11, 0x1

    add-int v12, v12, v24

    .line 150
    goto/16 :goto_107

    .line 156
    .end local v5           #c:Ljava/math/BigInteger;
    .end local v9           #i:I
    .end local v10           #k:I
    .end local v12           #offset:I
    .end local v23           #x:Ljava/math/BigInteger;
    :cond_212
    sget-object v24, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 160
    .local v14, pMinusOneOverQ:Ljava/math/BigInteger;
    :cond_223
    new-instance v8, Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->size:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    move-object/from16 v25, v0

    move-object v0, v8

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 162
    .local v8, h:Ljava/math/BigInteger;
    sget-object v24, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object v0, v8

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v24

    if-lez v24, :cond_223

    sget-object v24, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    move-object v0, v8

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v24

    if-gez v24, :cond_223

    .line 167
    invoke-virtual {v8, v14, v13}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 168
    sget-object v24, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    move-object v0, v7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v24

    if-lez v24, :cond_223

    .line 176
    new-instance v24, Lorg/bouncycastle/crypto/params/DSAParameters;

    new-instance v25, Lorg/bouncycastle/crypto/params/DSAValidationParameters;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move v2, v6

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    move-object/from16 v0, v24

    move-object v1, v13

    move-object/from16 v2, v18

    move-object v3, v7

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAValidationParameters;)V

    return-object v24
.end method

.method public init(IILjava/security/SecureRandom;)V
    .registers 4
    .parameter "size"
    .parameter "certainty"
    .parameter "random"

    .prologue
    .line 34
    iput p1, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->size:I

    .line 35
    iput p2, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 36
    iput-object p3, p0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 37
    return-void
.end method
