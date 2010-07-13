.class public Lorg/bouncycastle/crypto/engines/NullEngine;
.super Ljava/lang/Object;
.source "NullEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field protected static final BLOCK_SIZE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    const-string v0, "Null"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 3
    .parameter "forEncryption"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 30
    return-void
.end method

.method public processBlock([BI[BI)I
    .registers 9
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 54
    add-int/lit8 v1, p2, 0x1

    array-length v2, p1

    if-le v1, v2, :cond_e

    .line 56
    new-instance v1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_e
    add-int/lit8 v1, p4, 0x1

    array-length v2, p3

    if-le v1, v2, :cond_1b

    .line 61
    new-instance v1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_1b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1c
    if-ge v0, v3, :cond_29

    .line 66
    add-int v1, p4, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    aput-byte v2, p3, v1

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 69
    :cond_29
    return v3
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 78
    return-void
.end method
