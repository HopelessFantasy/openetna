.class public Lorg/bouncycastle/crypto/engines/DESedeEngine;
.super Lorg/bouncycastle/crypto/engines/DESEngine;
.source "DESedeEngine.java"


# static fields
.field protected static final BLOCK_SIZE:I = 0x8


# instance fields
.field private forEncryption:Z

.field private workingKey1:[I

.field private workingKey2:[I

.field private workingKey3:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DESEngine;-><init>()V

    .line 15
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    .line 16
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    .line 17
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 26
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    const-string v0, "DESede"

    return-object v0
.end method

.method public getBlockSize()I
    .registers 2

    .prologue
    .line 83
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 12
    .parameter "encrypting"
    .parameter "params"

    .prologue
    const/16 v8, 0x18

    const/4 v7, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 40
    instance-of v4, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v4, :cond_2b

    .line 42
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid parameter passed to DESede init - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 45
    :cond_2b
    check-cast p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .end local p2
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    .line 46
    .local v3, keyMaster:[B
    new-array v0, v5, [B

    .local v0, key1:[B
    new-array v1, v5, [B

    .local v1, key2:[B
    new-array v2, v5, [B

    .line 48
    .local v2, key3:[B
    array-length v4, v3

    if-le v4, v8, :cond_42

    .line 50
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "key size greater than 24 bytes"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 53
    :cond_42
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    .line 55
    array-length v4, v3

    if-ne v4, v8, :cond_6d

    .line 57
    array-length v4, v0

    invoke-static {v3, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    array-length v4, v1

    invoke-static {v3, v5, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    const/16 v4, 0x10

    array-length v5, v2

    invoke-static {v3, v4, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    .line 62
    if-nez p1, :cond_6b

    move v4, v7

    :goto_5e
    invoke-virtual {p0, v4, v1}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    .line 63
    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 74
    :goto_6a
    return-void

    :cond_6b
    move v4, v6

    .line 62
    goto :goto_5e

    .line 67
    :cond_6d
    array-length v4, v0

    invoke-static {v3, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    array-length v4, v1

    invoke-static {v3, v5, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    .line 71
    if-nez p1, :cond_89

    move v4, v7

    :goto_7e
    invoke-virtual {p0, v4, v1}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    .line 72
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    goto :goto_6a

    :cond_89
    move v4, v6

    .line 71
    goto :goto_7e
.end method

.method public processBlock([BI[BI)I
    .registers 11
    .parameter "in"
    .parameter "inOff"
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 92
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    if-nez v0, :cond_c

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DESede engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_c
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_19

    .line 99
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_19
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-le v0, v1, :cond_26

    .line 104
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_26
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    if-eqz v0, :cond_4b

    .line 109
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 110
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 111
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 120
    :goto_48
    const/16 v0, 0x8

    return v0

    .line 115
    :cond_4b
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 116
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 117
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    goto :goto_48
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 125
    return-void
.end method
