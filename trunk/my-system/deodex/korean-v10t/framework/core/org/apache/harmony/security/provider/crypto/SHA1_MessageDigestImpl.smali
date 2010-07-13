.class public Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;
.super Ljava/security/MessageDigestSpi;
.source "SHA1_MessageDigestImpl.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/harmony/security/provider/crypto/SHA1_Data;


# instance fields
.field private buffer:[I

.field private messageLength:I

.field private oneByte:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    .line 62
    const/16 v0, 0x57

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->oneByte:[B

    .line 66
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->engineReset()V

    .line 67
    return-void
.end method

.method private processDigest([BI)V
    .registers 14
    .parameter "digest"
    .parameter "offset"

    .prologue
    const/16 v8, 0x51

    const/16 v10, 0xe

    const/4 v7, 0x0

    const/16 v9, 0xf

    .line 88
    iget v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->messageLength:I

    shl-int/lit8 v6, v6, 0x3

    int-to-long v4, v6

    .line 90
    .local v4, nBits:J
    const/16 v6, -0x80

    invoke-virtual {p0, v6}, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->engineUpdate(B)V

    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, i:I
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    aget v6, v6, v8

    add-int/lit8 v6, v6, 0x3

    shr-int/lit8 v3, v6, 0x2

    .line 110
    .local v3, lastWord:I
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    aget v6, v6, v8

    if-eqz v6, :cond_23

    .line 112
    if-ge v3, v9, :cond_66

    .line 113
    move v0, v3

    .line 122
    :cond_23
    :goto_23
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    invoke-static {v6, v0, v10, v7}, Ljava/util/Arrays;->fill([IIII)V

    .line 124
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v7, 0x20

    ushr-long v7, v4, v7

    long-to-int v7, v7

    aput v7, v6, v10

    .line 125
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const-wide/16 v7, -0x1

    and-long/2addr v7, v4

    long-to-int v7, v7

    aput v7, v6, v9

    .line 126
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    invoke-static {v6}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    .line 129
    move v1, p2

    .line 130
    .local v1, j:I
    const/16 v0, 0x52

    :goto_41
    const/16 v6, 0x57

    if-ge v0, v6, :cond_73

    .line 131
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    aget v2, v6, v0

    .line 132
    .local v2, k:I
    ushr-int/lit8 v6, v2, 0x18

    int-to-byte v6, v6

    aput-byte v6, p1, v1

    .line 133
    add-int/lit8 v6, v1, 0x1

    ushr-int/lit8 v7, v2, 0x10

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 134
    add-int/lit8 v6, v1, 0x2

    ushr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 135
    add-int/lit8 v6, v1, 0x3

    int-to-byte v7, v2

    aput-byte v7, p1, v6

    .line 136
    add-int/lit8 v1, v1, 0x4

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 115
    .end local v1           #j:I
    .end local v2           #k:I
    :cond_66
    if-ne v3, v9, :cond_6c

    .line 116
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    aput v7, v6, v9

    .line 118
    :cond_6c
    iget-object v6, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    invoke-static {v6}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->computeHash([I)V

    .line 119
    const/4 v0, 0x0

    goto :goto_23

    .line 139
    .restart local v1       #j:I
    :cond_73
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->engineReset()V

    .line 140
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-super {p0}, Ljava/security/MessageDigestSpi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;

    .line 156
    .local v0, cloneObj:Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;
    iget-object v1, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, v0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    .line 157
    iget-object v1, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->oneByte:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    iput-object p0, v0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->oneByte:[B

    .line 159
    return-object v0
.end method

.method protected engineDigest([BII)I
    .registers 7
    .parameter "buf"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x14

    .line 215
    if-nez p1, :cond_10

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.162"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_10
    array-length v0, p1

    if-gt p2, v0, :cond_1b

    array-length v0, p1

    if-gt p3, v0, :cond_1b

    add-int v0, p3, p2

    array-length v1, p1

    if-le v0, v1, :cond_27

    .line 219
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.163"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_27
    if-ge p3, v2, :cond_35

    .line 223
    new-instance v0, Ljava/security/DigestException;

    const-string v1, "security.164"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_35
    if-gez p2, :cond_43

    .line 226
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "security.165"

    invoke-static {v1, p2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_43
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->processDigest([BI)V

    .line 231
    return v2
.end method

.method protected engineDigest()[B
    .registers 3

    .prologue
    .line 175
    const/16 v1, 0x14

    new-array v0, v1, [B

    .line 177
    .local v0, hash:[B
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->processDigest([BI)V

    .line 178
    return-object v0
.end method

.method protected engineGetDigestLength()I
    .registers 2

    .prologue
    .line 244
    const/16 v0, 0x14

    return v0
.end method

.method protected engineReset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 255
    iput v2, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->messageLength:I

    .line 257
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v1, 0x51

    aput v2, v0, v1

    .line 258
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v1, 0x52

    const v2, 0x67452301

    aput v2, v0, v1

    .line 259
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v1, 0x53

    const v2, -0x10325477

    aput v2, v0, v1

    .line 260
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v1, 0x54

    const v2, -0x67452302

    aput v2, v0, v1

    .line 261
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v1, 0x55

    const v2, 0x10325476

    aput v2, v0, v1

    .line 262
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    const/16 v1, 0x56

    const v2, -0x3c2d1e10

    aput v2, v0, v1

    .line 263
    return-void
.end method

.method protected engineUpdate(B)V
    .registers 5
    .parameter "input"

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->oneByte:[B

    aput-byte p1, v0, v2

    .line 277
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    iget-object v1, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->oneByte:[B

    invoke-static {v0, v1, v2, v2}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->updateHash([I[BII)V

    .line 278
    iget v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->messageLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->messageLength:I

    .line 279
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 7
    .parameter "input"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 307
    if-nez p1, :cond_e

    .line 308
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.166"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_e
    if-gtz p3, :cond_11

    .line 323
    :goto_10
    return-void

    .line 313
    :cond_11
    if-gez p2, :cond_1f

    .line 314
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "security.165"

    invoke-static {v1, p2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1f
    array-length v0, p1

    if-gt p2, v0, :cond_2a

    array-length v0, p1

    if-gt p3, v0, :cond_2a

    add-int v0, p3, p2

    array-length v1, p1

    if-le v0, v1, :cond_36

    .line 317
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.167"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_36
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->buffer:[I

    add-int v1, p2, p3

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, p1, p2, v1}, Lorg/apache/harmony/security/provider/crypto/SHA1Impl;->updateHash([I[BII)V

    .line 322
    iget v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->messageLength:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/harmony/security/provider/crypto/SHA1_MessageDigestImpl;->messageLength:I

    goto :goto_10
.end method
