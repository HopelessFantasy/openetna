.class public Ljavax/crypto/spec/RC5ParameterSpec;
.super Ljava/lang/Object;
.source "RC5ParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final iv:[B

.field private final rounds:I

.field private final version:I

.field private final wordSize:I


# direct methods
.method public constructor <init>(III)V
    .registers 5
    .parameter "version"
    .parameter "rounds"
    .parameter "wordSize"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    .line 51
    iput p2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    .line 52
    iput p3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    .line 54
    return-void
.end method

.method public constructor <init>(III[B)V
    .registers 8
    .parameter "version"
    .parameter "rounds"
    .parameter "wordSize"
    .parameter "iv"

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-nez p4, :cond_12

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.31"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_12
    array-length v0, p4

    div-int/lit8 v1, p3, 0x8

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_25

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.32"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_25
    iput p1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    .line 86
    iput p2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    .line 87
    iput p3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    .line 88
    div-int/lit8 v0, p3, 0x8

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    .line 89
    iget-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    div-int/lit8 v1, p3, 0x8

    mul-int/lit8 v1, v1, 0x2

    invoke-static {p4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    return-void
.end method

.method public constructor <init>(III[BI)V
    .registers 9
    .parameter "version"
    .parameter "rounds"
    .parameter "wordSize"
    .parameter "iv"
    .parameter "offset"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    if-nez p4, :cond_11

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.31"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_11
    if-gez p5, :cond_1f

    .line 123
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "crypto.33"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1f
    array-length v0, p4

    sub-int/2addr v0, p5

    div-int/lit8 v1, p3, 0x8

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_33

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.34"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_33
    iput p1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    .line 130
    iput p2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    .line 131
    iput p3, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    .line 132
    div-int/lit8 v0, p3, 0x8

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p5

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    .line 133
    iget-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    const/4 v1, 0x0

    div-int/lit8 v2, p3, 0x8

    mul-int/lit8 v2, v2, 0x2

    invoke-static {p4, p5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 188
    if-ne p1, p0, :cond_6

    move v2, v5

    .line 195
    :goto_5
    return v2

    .line 191
    :cond_6
    instance-of v2, p1, Ljavax/crypto/spec/RC5ParameterSpec;

    if-nez v2, :cond_c

    move v2, v4

    .line 192
    goto :goto_5

    .line 194
    :cond_c
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/RC5ParameterSpec;

    move-object v1, v0

    .line 195
    .local v1, ps:Ljavax/crypto/spec/RC5ParameterSpec;
    iget v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    iget v3, v1, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    iget v3, v1, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    iget v3, v1, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    if-ne v2, v3, :cond_2e

    iget-object v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    iget-object v3, v1, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2e

    move v2, v5

    goto :goto_5

    :cond_2e
    move v2, v4

    goto :goto_5
.end method

.method public getIV()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 169
    iget-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    if-nez v1, :cond_7

    .line 170
    const/4 v1, 0x0

    .line 174
    :goto_6
    return-object v1

    .line 172
    :cond_7
    iget-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 173
    .local v0, result:[B
    iget-object v1, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    iget-object v2, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 174
    goto :goto_6
.end method

.method public getRounds()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    return v0
.end method

.method public getWordSize()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    return v0
.end method

.method public hashCode()I
    .registers 9

    .prologue
    .line 208
    iget v6, p0, Ljavax/crypto/spec/RC5ParameterSpec;->version:I

    iget v7, p0, Ljavax/crypto/spec/RC5ParameterSpec;->rounds:I

    add-int/2addr v6, v7

    iget v7, p0, Ljavax/crypto/spec/RC5ParameterSpec;->wordSize:I

    add-int v4, v6, v7

    .line 209
    .local v4, result:I
    iget-object v6, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    if-nez v6, :cond_f

    move v5, v4

    .line 215
    .end local v4           #result:I
    .local v5, result:I
    :goto_e
    return v5

    .line 212
    .end local v5           #result:I
    .restart local v4       #result:I
    :cond_f
    iget-object v0, p0, Ljavax/crypto/spec/RC5ParameterSpec;->iv:[B

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_13
    if-ge v2, v3, :cond_1d

    aget-byte v1, v0, v2

    .line 213
    .local v1, element:B
    and-int/lit16 v6, v1, 0xff

    add-int/2addr v4, v6

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .end local v1           #element:B
    :cond_1d
    move v5, v4

    .line 215
    .end local v4           #result:I
    .restart local v5       #result:I
    goto :goto_e
.end method
