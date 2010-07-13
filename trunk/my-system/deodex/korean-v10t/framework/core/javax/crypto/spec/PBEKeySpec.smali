.class public Ljavax/crypto/spec/PBEKeySpec;
.super Ljava/lang/Object;
.source "PBEKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final iterationCount:I

.field private final keyLength:I

.field private password:[C

.field private final salt:[B


# direct methods
.method public constructor <init>([C)V
    .registers 5
    .parameter "password"

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p1, :cond_12

    .line 48
    new-array v0, v2, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 53
    :goto_a
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 54
    iput v2, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 55
    iput v2, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 56
    return-void

    .line 50
    :cond_12
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 51
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a
.end method

.method public constructor <init>([C[BI)V
    .registers 7
    .parameter "password"
    .parameter "salt"
    .parameter "iterationCount"

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    if-nez p2, :cond_12

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "crypto.3B"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_12
    array-length v0, p2

    if-nez v0, :cond_21

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.3C"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_21
    if-gtz p3, :cond_2f

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.3D"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_2f
    if-nez p1, :cond_45

    .line 132
    new-array v0, v2, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 137
    :goto_35
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 138
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    iput p3, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 140
    iput v2, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 141
    return-void

    .line 134
    :cond_45
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 135
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_35
.end method

.method public constructor <init>([C[BII)V
    .registers 8
    .parameter "password"
    .parameter "salt"
    .parameter "iterationCount"
    .parameter "keyLength"

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-nez p2, :cond_12

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "crypto.3B"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_12
    array-length v0, p2

    if-nez v0, :cond_21

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.3C"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_21
    if-gtz p3, :cond_2f

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.3D"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_2f
    if-gtz p4, :cond_3d

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.3E"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3d
    if-nez p1, :cond_53

    .line 93
    new-array v0, v2, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 98
    :goto_43
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    .line 99
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    iput p3, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    .line 101
    iput p4, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    .line 102
    return-void

    .line 95
    :cond_53
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 96
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_43
.end method


# virtual methods
.method public final clearPassword()V
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    .line 149
    return-void
.end method

.method public final getIterationCount()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Ljavax/crypto/spec/PBEKeySpec;->iterationCount:I

    return v0
.end method

.method public final getKeyLength()I
    .registers 2

    .prologue
    .line 197
    iget v0, p0, Ljavax/crypto/spec/PBEKeySpec;->keyLength:I

    return v0
.end method

.method public final getPassword()[C
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 159
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    if-nez v1, :cond_11

    .line 160
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "crypto.3F"

    invoke-static {v2}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_11
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v1, v1

    new-array v0, v1, [C

    .line 163
    .local v0, result:[C
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    iget-object v2, p0, Ljavax/crypto/spec/PBEKeySpec;->password:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    return-object v0
.end method

.method public final getSalt()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 174
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    if-nez v1, :cond_7

    .line 175
    const/4 v1, 0x0

    .line 179
    :goto_6
    return-object v1

    .line 177
    :cond_7
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 178
    .local v0, result:[B
    iget-object v1, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    iget-object v2, p0, Ljavax/crypto/spec/PBEKeySpec;->salt:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 179
    goto :goto_6
.end method
