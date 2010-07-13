.class public Lorg/bouncycastle/crypto/engines/AESWrapEngine;
.super Ljava/lang/Object;
.source "AESWrapEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Wrapper;


# instance fields
.field private engine:Lorg/bouncycastle/crypto/BlockCipher;

.field private forWrapping:Z

.field private iv:[B

.field private param:Lorg/bouncycastle/crypto/params/KeyParameter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    return-void

    :array_14
    .array-data 0x1
        0xa6t
        0xa6t
        0xa6t
        0xa6t
        0xa6t
        0xa6t
        0xa6t
        0xa6t
    .end array-data
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    const-string v0, "AES"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .parameter "forWrapping"
    .parameter "param"

    .prologue
    .line 32
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->forWrapping:Z

    .line 34
    instance-of v1, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_b

    .line 36
    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .end local p2
    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 47
    :cond_a
    return-void

    .line 38
    .restart local p2
    :cond_b
    instance-of v1, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_a

    .line 40
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    move-object v1, v0

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    .line 41
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .end local p2
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 42
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v1, v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_a

    .line 44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IV not multiple of 8"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unwrap([BII)[B
    .registers 16
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 111
    iget-boolean v9, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->forWrapping:Z

    if-eqz v9, :cond_c

    .line 113
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "not set for unwrapping"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 116
    :cond_c
    div-int/lit8 v6, p3, 0x8

    .line 118
    .local v6, n:I
    mul-int/lit8 v9, v6, 0x8

    if-eq v9, p3, :cond_1a

    .line 120
    new-instance v9, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v10, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {v9, v10}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 123
    :cond_1a
    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v9, v9

    sub-int v9, p3, v9

    new-array v1, v9, [B

    .line 124
    .local v1, block:[B
    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v9, v9

    new-array v0, v9, [B

    .line 125
    .local v0, a:[B
    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v9, v9

    add-int/lit8 v9, v9, 0x8

    new-array v2, v9, [B

    .line 127
    .local v2, buf:[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v11, v11

    invoke-static {p1, v9, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v9, v9

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v11, v11

    sub-int v11, p3, v11

    invoke-static {p1, v9, v1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v9, v10, v11}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 132
    const/4 v9, 0x1

    sub-int/2addr v6, v9

    .line 134
    const/4 v4, 0x5

    .local v4, j:I
    :goto_4c
    if-ltz v4, :cond_9e

    .line 136
    move v3, v6

    .local v3, i:I
    :goto_4f
    const/4 v9, 0x1

    if-lt v3, v9, :cond_9b

    .line 138
    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v11, v11

    invoke-static {v0, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    const/4 v9, 0x1

    sub-int v9, v3, v9

    mul-int/lit8 v9, v9, 0x8

    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v10, v10

    const/16 v11, 0x8

    invoke-static {v1, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    mul-int v9, v6, v4

    add-int v7, v9, v3

    .line 142
    .local v7, t:I
    const/4 v5, 0x1

    .local v5, k:I
    :goto_6c
    if-eqz v7, :cond_7e

    .line 144
    int-to-byte v8, v7

    .line 146
    .local v8, v:B
    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v9, v9

    sub-int/2addr v9, v5

    aget-byte v10, v2, v9

    xor-int/2addr v10, v8

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 148
    ushr-int/lit8 v7, v7, 0x8

    .line 142
    add-int/lit8 v5, v5, 0x1

    goto :goto_6c

    .line 151
    .end local v8           #v:B
    :cond_7e
    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v9, v2, v10, v2, v11}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 152
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {v2, v9, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    const/16 v9, 0x8

    const/4 v10, 0x1

    sub-int v10, v3, v10

    mul-int/lit8 v10, v10, 0x8

    const/16 v11, 0x8

    invoke-static {v2, v9, v1, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    add-int/lit8 v3, v3, -0x1

    goto :goto_4f

    .line 134
    .end local v5           #k:I
    .end local v7           #t:I
    :cond_9b
    add-int/lit8 v4, v4, -0x1

    goto :goto_4c

    .line 157
    .end local v3           #i:I
    :cond_9e
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_9f
    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v9, v9

    if-eq v3, v9, :cond_b7

    .line 159
    aget-byte v9, v0, v3

    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    aget-byte v10, v10, v3

    if-eq v9, v10, :cond_b4

    .line 161
    new-instance v9, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v10, "checksum failed"

    invoke-direct {v9, v10}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 157
    :cond_b4
    add-int/lit8 v3, v3, 0x1

    goto :goto_9f

    .line 165
    :cond_b7
    return-object v1
.end method

.method public wrap([BII)[B
    .registers 16
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"

    .prologue
    .line 59
    iget-boolean v8, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->forWrapping:Z

    if-nez v8, :cond_c

    .line 61
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "not set for wrapping"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 64
    :cond_c
    div-int/lit8 v5, p3, 0x8

    .line 66
    .local v5, n:I
    mul-int/lit8 v8, v5, 0x8

    if-eq v8, p3, :cond_1a

    .line 68
    new-instance v8, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v9, "wrap data must be a multiple of 8 bytes"

    invoke-direct {v8, v9}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 71
    :cond_1a
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v8, v8

    add-int/2addr v8, p3

    new-array v0, v8, [B

    .line 72
    .local v0, block:[B
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v8, v8

    add-int/lit8 v8, v8, 0x8

    new-array v1, v8, [B

    .line 74
    .local v1, buf:[B
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v11, v11

    invoke-static {v8, v9, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    const/4 v8, 0x0

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v9, v9

    invoke-static {p1, v8, v0, v9, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v9, 0x1

    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->param:Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v8, v9, v10}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 79
    const/4 v3, 0x0

    .local v3, j:I
    :goto_41
    const/4 v8, 0x6

    if-eq v3, v8, :cond_8d

    .line 81
    const/4 v2, 0x1

    .local v2, i:I
    :goto_45
    if-gt v2, v5, :cond_8a

    .line 83
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v10, v10

    invoke-static {v0, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    mul-int/lit8 v8, v2, 0x8

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v9, v9

    const/16 v10, 0x8

    invoke-static {v0, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v1, v9, v1, v10}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 87
    mul-int v8, v5, v3

    add-int v6, v8, v2

    .line 88
    .local v6, t:I
    const/4 v4, 0x1

    .local v4, k:I
    :goto_65
    if-eqz v6, :cond_77

    .line 90
    int-to-byte v7, v6

    .line 92
    .local v7, v:B
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/AESWrapEngine;->iv:[B

    array-length v8, v8

    sub-int/2addr v8, v4

    aget-byte v9, v1, v8

    xor-int/2addr v9, v7

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 94
    ushr-int/lit8 v6, v6, 0x8

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_65

    .line 97
    .end local v7           #v:B
    :cond_77
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x8

    invoke-static {v1, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    const/16 v8, 0x8

    mul-int/lit8 v9, v2, 0x8

    const/16 v10, 0x8

    invoke-static {v1, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 79
    .end local v4           #k:I
    .end local v6           #t:I
    :cond_8a
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 102
    .end local v2           #i:I
    :cond_8d
    return-object v0
.end method
