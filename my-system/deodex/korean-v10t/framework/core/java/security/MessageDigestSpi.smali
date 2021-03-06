.class public abstract Ljava/security/MessageDigestSpi;
.super Ljava/lang/Object;
.source "MessageDigestSpi.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected engineDigest([BII)I
    .registers 8
    .parameter "buf"
    .parameter "offset"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .prologue
    const-string v3, "security.1B"

    .line 136
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineGetDigestLength()I

    move-result v1

    if-ge p3, v1, :cond_17

    .line 137
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineReset()V

    .line 138
    new-instance v1, Ljava/security/DigestException;

    const-string v2, "security.1B"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_17
    if-gez p2, :cond_28

    .line 141
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineReset()V

    .line 142
    new-instance v1, Ljava/security/DigestException;

    const-string v2, "security.1C"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_28
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_3c

    .line 145
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineReset()V

    .line 146
    new-instance v1, Ljava/security/DigestException;

    const-string v2, "security.1D"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_3c
    invoke-virtual {p0}, Ljava/security/MessageDigestSpi;->engineDigest()[B

    move-result-object v0

    .line 149
    .local v0, tmp:[B
    array-length v1, v0

    if-ge p3, v1, :cond_4f

    .line 150
    new-instance v1, Ljava/security/DigestException;

    const-string v2, "security.1B"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_4f
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    array-length v1, v0

    return v1
.end method

.method protected abstract engineDigest()[B
.end method

.method protected engineGetDigestLength()I
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract engineReset()V
.end method

.method protected abstract engineUpdate(B)V
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 8
    .parameter "input"

    .prologue
    .line 85
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_7

    .line 101
    :goto_6
    return-void

    .line 89
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 91
    .local v3, tmp:[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    .line 92
    .local v1, offset:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 93
    .local v2, position:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 94
    .local v0, limit:I
    add-int v4, v1, v2

    sub-int v5, v0, v2

    invoke-virtual {p0, v3, v4, v5}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    .line 95
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_6

    .line 97
    .end local v0           #limit:I
    .end local v1           #offset:I
    .end local v2           #position:I
    .end local v3           #tmp:[B
    :cond_28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int/2addr v4, v5

    new-array v3, v4, [B

    .line 98
    .restart local v3       #tmp:[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 99
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {p0, v3, v4, v5}, Ljava/security/MessageDigestSpi;->engineUpdate([BII)V

    goto :goto_6
.end method

.method protected abstract engineUpdate([BII)V
.end method
