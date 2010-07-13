.class public abstract Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;
.super Ljava/io/InputStream;
.source "SSLInputStream.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract available()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract read()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read([BII)I
    .registers 9
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, i:I
    :cond_2
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    .local v1, read_b:I
    if-ne v1, v4, :cond_e

    .line 127
    if-nez v0, :cond_c

    move v2, v4

    .line 132
    :goto_b
    return v2

    :cond_c
    move v2, v0

    .line 127
    goto :goto_b

    .line 129
    :cond_e
    add-int v2, p2, v0

    int-to-byte v3, v1

    aput-byte v3, p1, v2

    .line 130
    add-int/lit8 v0, v0, 0x1

    .line 131
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_1d

    if-lt v0, p3, :cond_2

    :cond_1d
    move v2, v0

    .line 132
    goto :goto_b
.end method

.method public read(I)[B
    .registers 5
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    new-array v1, p1, [B

    .line 113
    .local v1, res:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, p1, :cond_f

    .line 114
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 116
    :cond_f
    return-object v1
.end method

.method public readUint16()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readUint24()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public readUint32()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public readUint64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x38

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x30

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x28

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x20

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public readUint8()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
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
    .line 58
    move-wide v0, p1

    .line 59
    .local v0, skept:J
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_e

    .line 60
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    .line 61
    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    goto :goto_1

    .line 63
    :cond_e
    return-wide v0
.end method
