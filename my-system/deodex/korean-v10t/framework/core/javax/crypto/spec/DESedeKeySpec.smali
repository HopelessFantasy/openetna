.class public Ljavax/crypto/spec/DESedeKeySpec;
.super Ljava/lang/Object;
.source "DESedeKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# static fields
.field public static final DES_EDE_KEY_LEN:I = 0x18


# instance fields
.field private final key:[B


# direct methods
.method public constructor <init>([B)V
    .registers 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x18

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    if-nez p1, :cond_14

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "crypto.2F"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_14
    array-length v0, p1

    if-ge v0, v1, :cond_23

    .line 56
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "crypto.30"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_23
    new-array v0, v1, [B

    iput-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    .line 60
    iget-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 6
    .parameter "key"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x18

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-nez p1, :cond_13

    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "crypto.2F"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_13
    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, v2, :cond_23

    .line 84
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "crypto.30"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_23
    new-array v0, v2, [B

    iput-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    .line 88
    iget-object v0, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    return-void
.end method

.method public static isParityAdjusted([BI)Z
    .registers 6
    .parameter "key"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 118
    array-length v2, p0

    sub-int/2addr v2, p1

    const/16 v3, 0x18

    if-ge v2, v3, :cond_12

    .line 119
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "crypto.30"

    invoke-static {v3}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_12
    move v1, p1

    .local v1, i:I
    :goto_13
    add-int/lit8 v2, p1, 0x18

    if-ge v1, v2, :cond_46

    .line 123
    aget-byte v0, p0, v1

    .line 124
    .local v0, b:I
    and-int/lit8 v2, v0, 0x1

    and-int/lit8 v3, v0, 0x2

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    and-int/lit8 v3, v0, 0x4

    shr-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    and-int/lit8 v3, v0, 0x8

    shr-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    and-int/lit8 v3, v0, 0x10

    shr-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    and-int/lit8 v3, v0, 0x20

    shr-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    and-int/lit8 v3, v0, 0x40

    shr-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    and-int/lit16 v3, v0, 0x80

    shr-int/lit8 v3, v3, 0x7

    if-ne v2, v3, :cond_43

    .line 127
    const/4 v2, 0x0

    .line 130
    .end local v0           #b:I
    :goto_42
    return v2

    .line 122
    .restart local v0       #b:I
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 130
    .end local v0           #b:I
    :cond_46
    const/4 v2, 0x1

    goto :goto_42
.end method


# virtual methods
.method public getKey()[B
    .registers 5

    .prologue
    const/16 v3, 0x18

    const/4 v2, 0x0

    .line 97
    new-array v0, v3, [B

    .line 98
    .local v0, result:[B
    iget-object v1, p0, Ljavax/crypto/spec/DESedeKeySpec;->key:[B

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    return-object v0
.end method
