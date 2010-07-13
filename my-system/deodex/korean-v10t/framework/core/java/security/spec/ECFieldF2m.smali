.class public Ljava/security/spec/ECFieldF2m;
.super Ljava/lang/Object;
.source "ECFieldF2m.java"

# interfaces
.implements Ljava/security/spec/ECField;


# static fields
.field private static final PPB_LEN:I = 0x5

.field private static final PPB_MID_LEN:I = 0x3

.field private static final TPB_LEN:I = 0x3

.field private static final TPB_MID_LEN:I = 0x1


# instance fields
.field private final ks:[I

.field private final m:I

.field private final rp:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter "m"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    .line 59
    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    if-gtz v0, :cond_16

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.75"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_16
    iput-object v1, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    .line 63
    iput-object v1, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    .line 64
    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;)V
    .registers 9
    .parameter "m"
    .parameter "rp"

    .prologue
    const/4 v5, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    .line 86
    iget v3, p0, Ljava/security/spec/ECFieldF2m;->m:I

    if-gtz v3, :cond_16

    .line 87
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "security.75"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_16
    iput-object p2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    .line 90
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    if-nez v3, :cond_28

    .line 91
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "security.76"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    :cond_28
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitCount()I

    move-result v2

    .line 97
    .local v2, rp_bc:I
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/lit8 v4, p1, 0x1

    if-ne v3, v4, :cond_4e

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3e

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4e

    :cond_3e
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 100
    :cond_4e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "security.77"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    :cond_5a
    const/4 v3, 0x2

    sub-int v3, v2, v3

    new-array v3, v3, [I

    iput-object v3, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    .line 107
    invoke-virtual {p2, v5}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 108
    .local v1, rpTmp:Ljava/math/BigInteger;
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v3, v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_6b
    if-ltz v0, :cond_80

    .line 109
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    invoke-virtual {v1}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v4

    aput v4, v3, v0

    .line 110
    iget-object v3, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    aget v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 108
    add-int/lit8 v0, v0, -0x1

    goto :goto_6b

    .line 112
    :cond_80
    return-void
.end method

.method public constructor <init>(I[I)V
    .registers 11
    .parameter "m"
    .parameter "ks"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput p1, p0, Ljava/security/spec/ECFieldF2m;->m:I

    .line 134
    iget v4, p0, Ljava/security/spec/ECFieldF2m;->m:I

    if-gtz v4, :cond_17

    .line 135
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "security.75"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 140
    :cond_17
    array-length v4, p2

    new-array v4, v4, [I

    iput-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    .line 141
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    iget-object v5, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v5, v5

    invoke-static {p2, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v4, v4

    if-eq v4, v7, :cond_3b

    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v4, v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3b

    .line 146
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "security.78"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 154
    :cond_3b
    const/4 v0, 0x0

    .line 155
    .local v0, checkFailed:Z
    iget v2, p0, Ljava/security/spec/ECFieldF2m;->m:I

    .line 156
    .local v2, prev:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3f
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v4, v4

    if-ge v1, v4, :cond_52

    .line 157
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    aget v4, v4, v1

    if-ge v4, v2, :cond_51

    .line 158
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    aget v2, v4, v1

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 161
    :cond_51
    const/4 v0, 0x1

    .line 164
    :cond_52
    if-nez v0, :cond_56

    if-ge v2, v7, :cond_62

    .line 165
    :cond_56
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "security.79"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 170
    :cond_62
    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iget v5, p0, Ljava/security/spec/ECFieldF2m;->m:I

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 172
    .local v3, rpTmp:Ljava/math/BigInteger;
    const/4 v1, 0x0

    :goto_6b
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v4, v4

    if-ge v1, v4, :cond_7b

    .line 173
    iget-object v4, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 175
    :cond_7b
    iput-object v3, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    .line 176
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x1

    .line 189
    if-ne p0, p1, :cond_5

    move v2, v4

    .line 210
    :goto_4
    return v2

    .line 192
    :cond_5
    instance-of v2, p1, Ljava/security/spec/ECFieldF2m;

    if-eqz v2, :cond_26

    .line 193
    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECFieldF2m;

    move-object v1, v0

    .line 195
    .local v1, o:Ljava/security/spec/ECFieldF2m;
    iget v2, p0, Ljava/security/spec/ECFieldF2m;->m:I

    iget v3, v1, Ljava/security/spec/ECFieldF2m;->m:I

    if-ne v2, v3, :cond_26

    .line 197
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    if-nez v2, :cond_1d

    .line 198
    iget-object v2, v1, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    if-nez v2, :cond_26

    move v2, v4

    .line 200
    goto :goto_4

    .line 206
    :cond_1d
    iget-object v2, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    iget-object v3, v1, Ljava/security/spec/ECFieldF2m;->ks:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    goto :goto_4

    .line 210
    .end local v1           #o:Ljava/security/spec/ECFieldF2m;
    :cond_26
    const/4 v2, 0x0

    goto :goto_4
.end method

.method public getFieldSize()I
    .registers 2

    .prologue
    .line 220
    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    return v0
.end method

.method public getM()I
    .registers 2

    .prologue
    .line 231
    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    return v0
.end method

.method public getMidTermsOfReductionPolynomial()[I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    if-nez v1, :cond_7

    .line 248
    const/4 v1, 0x0

    .line 252
    :goto_6
    return-object v1

    .line 250
    :cond_7
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v1, v1

    new-array v0, v1, [I

    .line 251
    .local v0, ret:[I
    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->ks:[I

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 252
    goto :goto_6
.end method

.method public getReductionPolynomial()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 277
    iget-object v0, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    if-nez v0, :cond_7

    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Ljava/security/spec/ECFieldF2m;->m:I

    iget-object v1, p0, Ljava/security/spec/ECFieldF2m;->rp:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_6
.end method
