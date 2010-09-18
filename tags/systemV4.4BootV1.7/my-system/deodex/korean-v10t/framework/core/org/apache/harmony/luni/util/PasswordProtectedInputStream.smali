.class public Lorg/apache/harmony/luni/util/PasswordProtectedInputStream;
.super Ljava/io/FilterInputStream;
.source "PasswordProtectedInputStream.java"


# instance fields
.field private password:[B

.field private pwdIndex:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .registers 4
    .parameter "in"
    .parameter "password"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 43
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/harmony/luni/util/PasswordProtectedInputStream;->password:[B

    .line 44
    return-void
.end method


# virtual methods
.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v1, p0, Lorg/apache/harmony/luni/util/PasswordProtectedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 49
    .local v0, read:I
    if-ltz v0, :cond_19

    .line 50
    iget-object v1, p0, Lorg/apache/harmony/luni/util/PasswordProtectedInputStream;->password:[B

    iget v2, p0, Lorg/apache/harmony/luni/util/PasswordProtectedInputStream;->pwdIndex:I

    aget-byte v1, v1, v2

    xor-int/2addr v0, v1

    .line 51
    iget v1, p0, Lorg/apache/harmony/luni/util/PasswordProtectedInputStream;->pwdIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/apache/harmony/luni/util/PasswordProtectedInputStream;->password:[B

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/luni/util/PasswordProtectedInputStream;->pwdIndex:I

    .line 53
    :cond_19
    return v0
.end method

.method public read([BII)I
    .registers 10
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v3, p0, Lorg/apache/harmony/luni/util/PasswordProtectedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 59
    .local v2, read:I
    if-lez v2, :cond_26

    .line 60
    add-int v1, p2, v2

    .line 61
    .local v1, lastIndex:I
    move v0, p2

    .local v0, i:I
    :goto_b
    if-ge v0, v1, :cond_26

    .line 62
    aget-byte v3, p1, v0

    iget-object v4, p0, Lorg/apache/harmony/luni/util/PasswordProtectedInputStream;->password:[B

    iget v5, p0, Lorg/apache/harmony/luni/util/PasswordProtectedInputStream;->pwdIndex:I

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 63
    iget v3, p0, Lorg/apache/harmony/luni/util/PasswordProtectedInputStream;->pwdIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/apache/harmony/luni/util/PasswordProtectedInputStream;->password:[B

    array-length v4, v4

    rem-int/2addr v3, v4

    iput v3, p0, Lorg/apache/harmony/luni/util/PasswordProtectedInputStream;->pwdIndex:I

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 66
    .end local v0           #i:I
    .end local v1           #lastIndex:I
    :cond_26
    return v2
.end method

.method public skip(J)J
    .registers 7
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 72
    .local v0, skip:J
    iget v2, p0, Lorg/apache/harmony/luni/util/PasswordProtectedInputStream;->pwdIndex:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lorg/apache/harmony/luni/util/PasswordProtectedInputStream;->pwdIndex:I

    .line 73
    return-wide v0
.end method
