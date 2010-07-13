.class public Ljava/security/spec/EllipticCurve;
.super Ljava/lang/Object;
.source "EllipticCurve.java"


# instance fields
.field private final a:Ljava/math/BigInteger;

.field private final b:Ljava/math/BigInteger;

.field private final field:Ljava/security/spec/ECField;

.field private volatile hash:I

.field private final seed:[B


# direct methods
.method public constructor <init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5
    .parameter "field"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 12
    .parameter "field"
    .parameter "a"
    .parameter "b"
    .parameter "seed"

    .prologue
    const/4 v4, 0x0

    const-string v6, "security.7E"

    const-string v5, "security.7D"

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    .line 66
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    if-nez v2, :cond_1a

    .line 67
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "security.7A"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_1a
    iput-object p2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    .line 70
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    if-nez v2, :cond_2c

    .line 71
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "security.7B"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_2c
    iput-object p3, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    .line 74
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    if-nez v2, :cond_3e

    .line 75
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "security.7C"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_3e
    if-nez p4, :cond_6d

    .line 79
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    .line 87
    :goto_43
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    instance-of v2, v2, Ljava/security/spec/ECFieldFp;

    if-eqz v2, :cond_97

    .line 88
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    check-cast v2, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v2}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 89
    .local v1, p:Ljava/math/BigInteger;
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-ltz v2, :cond_61

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_7b

    .line 90
    :cond_61
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "security.7D"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    .end local v1           #p:Ljava/math/BigInteger;
    :cond_6d
    array-length v2, p4

    new-array v2, v2, [B

    iput-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    .line 82
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    iget-object v3, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    array-length v3, v3

    invoke-static {p4, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_43

    .line 92
    .restart local v1       #p:Ljava/math/BigInteger;
    :cond_7b
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-ltz v2, :cond_8b

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_cb

    .line 93
    :cond_8b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "security.7E"

    invoke-static {v6}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    .end local v1           #p:Ljava/math/BigInteger;
    :cond_97
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    instance-of v2, v2, Ljava/security/spec/ECFieldF2m;

    if-eqz v2, :cond_cb

    .line 96
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    invoke-interface {v2}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    .line 97
    .local v0, fieldSizeInBits:I
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-le v2, v0, :cond_b7

    .line 98
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "security.7D"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_b7
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-le v2, v0, :cond_cb

    .line 101
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "security.7E"

    invoke-static {v6}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    .end local v0           #fieldSizeInBits:I
    :cond_cb
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "other"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 182
    if-ne p0, p1, :cond_6

    move v2, v5

    .line 189
    :goto_5
    return v2

    .line 185
    :cond_6
    instance-of v2, p1, Ljava/security/spec/EllipticCurve;

    if-nez v2, :cond_c

    move v2, v4

    .line 186
    goto :goto_5

    .line 188
    :cond_c
    move-object v0, p1

    check-cast v0, Ljava/security/spec/EllipticCurve;

    move-object v1, v0

    .line 189
    .local v1, otherEc:Ljava/security/spec/EllipticCurve;
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    iget-object v3, v1, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    iget-object v3, v1, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    iget-object v3, v1, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    iget-object v3, v1, Ljava/security/spec/EllipticCurve;->seed:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3a

    move v2, v5

    goto :goto_5

    :cond_3a
    move v2, v4

    goto :goto_5
.end method

.method public getA()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getB()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getField()Ljava/security/spec/ECField;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    return-object v0
.end method

.method public getSeed()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    if-nez v1, :cond_7

    .line 163
    const/4 v1, 0x0

    .line 168
    :goto_6
    return-object v1

    .line 166
    :cond_7
    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 167
    .local v0, ret:[B
    iget-object v1, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 168
    goto :goto_6
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 202
    iget v2, p0, Ljava/security/spec/EllipticCurve;->hash:I

    if-nez v2, :cond_3d

    .line 203
    const/16 v0, 0xb

    .line 204
    .local v0, hash0:I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->field:Ljava/security/spec/ECField;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/lit16 v0, v2, 0x155

    .line 205
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ljava/security/spec/EllipticCurve;->a:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 206
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ljava/security/spec/EllipticCurve;->b:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 207
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    if-eqz v2, :cond_39

    .line 208
    const/4 v1, 0x0

    .local v1, i:I
    :goto_29
    iget-object v2, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    array-length v2, v2

    if-ge v1, v2, :cond_3b

    .line 209
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ljava/security/spec/EllipticCurve;->seed:[B

    aget-byte v3, v3, v1

    add-int v0, v2, v3

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 212
    .end local v1           #i:I
    :cond_39
    mul-int/lit8 v0, v0, 0x1f

    .line 214
    :cond_3b
    iput v0, p0, Ljava/security/spec/EllipticCurve;->hash:I

    .line 216
    .end local v0           #hash0:I
    :cond_3d
    iget v2, p0, Ljava/security/spec/EllipticCurve;->hash:I

    return v2
.end method
