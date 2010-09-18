.class public Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;
.super Ljava/lang/Object;
.source "PKCS1Encoding.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static HEADER_LENGTH:I

.field public static STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String;


# instance fields
.field private engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private forPrivateKey:Z

.field private random:Ljava/security/SecureRandom;

.field private useStrictLength:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "org.bouncycastle.pkcs1.strict"

    sput-object v0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String;

    .line 28
    const/16 v0, 0xa

    sput v0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->HEADER_LENGTH:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 5
    .parameter "cipher"

    .prologue
    const-string v2, "true"

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 44
    sget-object v0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String;

    const-string v1, "true"

    invoke-static {v0, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 45
    return-void
.end method

.method private decodeBlock([BII)[B
    .registers 13
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 172
    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v5, p1, p2, p3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 174
    .local v0, block:[B
    array-length v5, v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->getOutputBlockSize()I

    move-result v6

    if-ge v5, v6, :cond_17

    .line 176
    new-instance v5, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "block truncated"

    invoke-direct {v5, v6}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 179
    :cond_17
    aget-byte v4, v0, v7

    .line 181
    .local v4, type:B
    if-eq v4, v8, :cond_26

    const/4 v5, 0x2

    if-eq v4, v5, :cond_26

    .line 183
    new-instance v5, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "unknown block type"

    invoke-direct {v5, v6}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 186
    :cond_26
    iget-boolean v5, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    if-eqz v5, :cond_3b

    array-length v5, v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v6}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v6

    if-eq v5, v6, :cond_3b

    .line 188
    new-instance v5, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "block incorrect size"

    invoke-direct {v5, v6}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 196
    :cond_3b
    const/4 v3, 0x1

    .local v3, start:I
    :goto_3c
    array-length v5, v0

    if-eq v3, v5, :cond_43

    .line 198
    aget-byte v1, v0, v3

    .line 200
    .local v1, pad:B
    if-nez v1, :cond_54

    .line 210
    .end local v1           #pad:B
    :cond_43
    add-int/lit8 v3, v3, 0x1

    .line 212
    array-length v5, v0

    if-ge v3, v5, :cond_4c

    sget v5, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->HEADER_LENGTH:I

    if-ge v3, v5, :cond_64

    .line 214
    :cond_4c
    new-instance v5, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "no data in block"

    invoke-direct {v5, v6}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 204
    .restart local v1       #pad:B
    :cond_54
    if-ne v4, v8, :cond_61

    const/4 v5, -0x1

    if-eq v1, v5, :cond_61

    .line 206
    new-instance v5, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "block padding incorrect"

    invoke-direct {v5, v6}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 196
    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 217
    .end local v1           #pad:B
    :cond_64
    array-length v5, v0

    sub-int/2addr v5, v3

    new-array v2, v5, [B

    .line 219
    .local v2, result:[B
    array-length v5, v2

    invoke-static {v0, v3, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    return-object v2
.end method

.method private encodeBlock([BII)[B
    .registers 9
    .parameter "in"
    .parameter "inOff"
    .parameter "inLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 127
    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 129
    .local v0, block:[B
    iget-boolean v2, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v2, :cond_1c

    .line 131
    aput-byte v3, v0, v4

    .line 133
    const/4 v1, 0x1

    .local v1, i:I
    :goto_11
    array-length v2, v0

    sub-int/2addr v2, p3

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_3b

    .line 135
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 140
    .end local v1           #i:I
    :cond_1c
    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 142
    const/4 v2, 0x2

    aput-byte v2, v0, v4

    .line 148
    const/4 v1, 0x1

    .restart local v1       #i:I
    :goto_25
    array-length v2, v0

    sub-int/2addr v2, p3

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_3b

    .line 150
    :goto_2a
    aget-byte v2, v0, v1

    if-nez v2, :cond_38

    .line 152
    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_2a

    .line 148
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 157
    :cond_3b
    array-length v2, v0

    sub-int/2addr v2, p3

    sub-int/2addr v2, v3

    aput-byte v4, v0, v2

    .line 158
    array-length v2, v0

    sub-int/2addr v2, p3

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, v0

    invoke-interface {v2, v0, v4, v3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getInputBlockSize()I
    .registers 3

    .prologue
    .line 79
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 81
    .local v0, baseBlockSize:I
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_f

    .line 83
    sget v1, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->HEADER_LENGTH:I

    sub-int v1, v0, v1

    .line 87
    :goto_e
    return v1

    :cond_f
    move v1, v0

    goto :goto_e
.end method

.method public getOutputBlockSize()I
    .registers 3

    .prologue
    .line 93
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 95
    .local v0, baseBlockSize:I
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_c

    move v1, v0

    .line 101
    :goto_b
    return v1

    :cond_c
    sget v1, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->HEADER_LENGTH:I

    sub-int v1, v0, v1

    goto :goto_b
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 7
    .parameter "forEncryption"
    .parameter "param"

    .prologue
    .line 58
    instance-of v3, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v3, :cond_22

    .line 60
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    move-object v2, v0

    .line 62
    .local v2, rParam:Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 63
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 71
    .end local v2           #rParam:Lorg/bouncycastle/crypto/params/ParametersWithRandom;
    .local v1, kParam:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :goto_14
    iget-object v3, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3, p1, v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 73
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v3

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    .line 74
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    .line 75
    return-void

    .line 67
    .end local v1           #kParam:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_22
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    iput-object v3, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 68
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-object v1, v0

    .restart local v1       #kParam:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_14
.end method

.method public processBlock([BII)[B
    .registers 5
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
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v0, :cond_9

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->encodeBlock([BII)[B

    move-result-object v0

    .line 117
    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlock([BII)[B

    move-result-object v0

    goto :goto_8
.end method
