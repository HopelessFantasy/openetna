.class public abstract Lorg/bouncycastle/crypto/PBEParametersGenerator;
.super Ljava/lang/Object;
.source "PBEParametersGenerator.java"


# instance fields
.field protected iterationCount:I

.field protected password:[B

.field protected salt:[B


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static PKCS12PasswordToBytes([C)[B
    .registers 5
    .parameter "password"

    .prologue
    .line 125
    if-eqz p0, :cond_27

    array-length v2, p0

    if-lez v2, :cond_27

    .line 128
    array-length v2, p0

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 130
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    array-length v2, p0

    if-eq v1, v2, :cond_25

    .line 132
    mul-int/lit8 v2, v1, 0x2

    aget-char v3, p0, v1

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 133
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-char v3, p0, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_25
    move-object v2, v0

    .line 140
    .end local v0           #bytes:[B
    .end local v1           #i:I
    :goto_26
    return-object v2

    :cond_27
    const/4 v2, 0x0

    new-array v2, v2, [B

    goto :goto_26
.end method

.method public static PKCS5PasswordToBytes([C)[B
    .registers 4
    .parameter "password"

    .prologue
    .line 104
    array-length v2, p0

    new-array v0, v2, [B

    .line 106
    .local v0, bytes:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    array-length v2, v0

    if-eq v1, v2, :cond_f

    .line 108
    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 111
    :cond_f
    return-object v0
.end method


# virtual methods
.method public abstract generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
.end method

.method public abstract generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;
.end method

.method public abstract generateDerivedParameters(II)Lorg/bouncycastle/crypto/CipherParameters;
.end method

.method public getIterationCount()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    return v0
.end method

.method public getPassword()[B
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    return-object v0
.end method

.method public getSalt()[B
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    return-object v0
.end method

.method public init([B[BI)V
    .registers 4
    .parameter "password"
    .parameter "salt"
    .parameter "iterationCount"

    .prologue
    .line 32
    iput-object p1, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    .line 33
    iput-object p2, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    .line 34
    iput p3, p0, Lorg/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    .line 35
    return-void
.end method
