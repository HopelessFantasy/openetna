.class public Lorg/bouncycastle/crypto/engines/RSAEngine;
.super Ljava/lang/Object;
.source "RSAEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private forEncryption:Z

.field private key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

.field private shift:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputBlockSize()I
    .registers 4

    .prologue
    .line 55
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RSAEngine;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 57
    .local v0, bitSize:I
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/RSAEngine;->forEncryption:Z

    if-eqz v1, :cond_15

    .line 59
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 63
    :goto_14
    return v1

    :cond_15
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    goto :goto_14
.end method

.method public getOutputBlockSize()I
    .registers 4

    .prologue
    .line 76
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RSAEngine;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 78
    .local v0, bitSize:I
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/RSAEngine;->forEncryption:Z

    if-eqz v1, :cond_13

    .line 80
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    .line 84
    :goto_12
    return v1

    :cond_13
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    goto :goto_12
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .parameter "forEncryption"
    .parameter "param"

    .prologue
    .line 31
    check-cast p2, Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .end local p2
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/RSAEngine;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    .line 32
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RSAEngine;->forEncryption:Z

    .line 34
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RSAEngine;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 36
    .local v0, bitSize:I
    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_18

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/engines/RSAEngine;->shift:I

    .line 44
    :goto_17
    return-void

    .line 42
    :cond_18
    const/16 v1, 0x8

    rem-int/lit8 v2, v0, 0x8

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/engines/RSAEngine;->shift:I

    goto :goto_17
.end method

.method public processBlock([BII)[B
    .registers 26
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"

    .prologue
    .line 102
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/crypto/engines/RSAEngine;->getInputBlockSize()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, p3

    move/from16 v1, v19

    if-le v0, v1, :cond_14

    .line 104
    new-instance v19, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v20, "input too large for RSA cipher.\n"

    invoke-direct/range {v19 .. v20}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 106
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/crypto/engines/RSAEngine;->getInputBlockSize()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_38

    aget-byte v19, p1, p2

    const/16 v20, 0x80

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RSAEngine;->shift:I

    move/from16 v21, v0

    shr-int v20, v20, v21

    and-int v19, v19, v20

    if-eqz v19, :cond_38

    .line 108
    new-instance v19, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v20, "input too large for RSA cipher.\n"

    invoke-direct/range {v19 .. v20}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 113
    :cond_38
    if-nez p2, :cond_45

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, p3

    move/from16 v1, v19

    if-eq v0, v1, :cond_108

    .line 115
    :cond_45
    move/from16 v0, p3

    new-array v0, v0, [B

    move-object v5, v0

    .line 117
    .local v5, block:[B
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object v2, v5

    move/from16 v3, v19

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    :goto_58
    new-instance v10, Ljava/math/BigInteger;

    const/16 v19, 0x1

    move-object v0, v10

    move/from16 v1, v19

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 127
    .local v10, input:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/RSAEngine;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    move/from16 v19, v0

    if-eqz v19, :cond_10c

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/RSAEngine;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-object v6, v0

    check-cast v6, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .line 136
    .local v6, crtKey:Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    move-result-object v15

    .line 137
    .local v15, p:Ljava/math/BigInteger;
    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v16

    .line 138
    .local v16, q:Ljava/math/BigInteger;
    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDP()Ljava/math/BigInteger;

    move-result-object v7

    .line 139
    .local v7, dP:Ljava/math/BigInteger;
    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDQ()Ljava/math/BigInteger;

    move-result-object v8

    .line 140
    .local v8, dQ:Ljava/math/BigInteger;
    invoke-virtual {v6}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQInv()Ljava/math/BigInteger;

    move-result-object v17

    .line 145
    .local v17, qInv:Ljava/math/BigInteger;
    invoke-virtual {v10, v15}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 148
    .local v12, mP:Ljava/math/BigInteger;
    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 151
    .local v13, mQ:Ljava/math/BigInteger;
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 152
    .local v9, h:Ljava/math/BigInteger;
    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 153
    invoke-virtual {v9, v15}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 156
    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 157
    .local v11, m:Ljava/math/BigInteger;
    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 159
    invoke-virtual {v11}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v14

    .line 167
    .end local v6           #crtKey:Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    .end local v7           #dP:Ljava/math/BigInteger;
    .end local v8           #dQ:Ljava/math/BigInteger;
    .end local v9           #h:Ljava/math/BigInteger;
    .end local v11           #m:Ljava/math/BigInteger;
    .end local v12           #mP:Ljava/math/BigInteger;
    .end local v13           #mQ:Ljava/math/BigInteger;
    .end local v15           #p:Ljava/math/BigInteger;
    .end local v16           #q:Ljava/math/BigInteger;
    .end local v17           #qInv:Ljava/math/BigInteger;
    .local v14, output:[B
    :goto_c6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/bouncycastle/crypto/engines/RSAEngine;->forEncryption:Z

    move/from16 v19, v0

    if-eqz v19, :cond_166

    .line 169
    const/16 v19, 0x0

    aget-byte v19, v14, v19

    if-nez v19, :cond_12e

    move-object v0, v14

    array-length v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/crypto/engines/RSAEngine;->getOutputBlockSize()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_12e

    .line 171
    move-object v0, v14

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    sub-int v19, v19, v20

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 173
    .local v18, tmp:[B
    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move-object v0, v14

    move/from16 v1, v19

    move-object/from16 v2, v18

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v19, v18

    .line 198
    .end local v18           #tmp:[B
    :goto_107
    return-object v19

    .line 121
    .end local v5           #block:[B
    .end local v10           #input:Ljava/math/BigInteger;
    .end local v14           #output:[B
    :cond_108
    move-object/from16 v5, p1

    .restart local v5       #block:[B
    goto/16 :goto_58

    .line 163
    .restart local v10       #input:Ljava/math/BigInteger;
    :cond_10c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/RSAEngine;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/RSAEngine;->key:Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v20

    move-object v0, v10

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v14

    .restart local v14       #output:[B
    goto :goto_c6

    .line 178
    :cond_12e
    move-object v0, v14

    array-length v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/crypto/engines/RSAEngine;->getOutputBlockSize()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_193

    .line 180
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/crypto/engines/RSAEngine;->getOutputBlockSize()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 182
    .restart local v18       #tmp:[B
    const/16 v19, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    move-object v0, v14

    array-length v0, v0

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object v0, v14

    array-length v0, v0

    move/from16 v21, v0

    move-object v0, v14

    move/from16 v1, v19

    move-object/from16 v2, v18

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v19, v18

    .line 184
    goto :goto_107

    .line 189
    .end local v18           #tmp:[B
    :cond_166
    const/16 v19, 0x0

    aget-byte v19, v14, v19

    if-nez v19, :cond_193

    .line 191
    move-object v0, v14

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    sub-int v19, v19, v20

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v18, v0

    .line 193
    .restart local v18       #tmp:[B
    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move-object v0, v14

    move/from16 v1, v19

    move-object/from16 v2, v18

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v19, v18

    .line 195
    goto/16 :goto_107

    .end local v18           #tmp:[B
    :cond_193
    move-object/from16 v19, v14

    .line 198
    goto/16 :goto_107
.end method
