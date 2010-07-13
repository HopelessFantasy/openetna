.class Lorg/apache/harmony/luni/net/SocketInputStream;
.super Ljava/io/InputStream;
.source "SocketInputStream.java"


# instance fields
.field private final socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;


# direct methods
.method public constructor <init>(Ljava/net/SocketImpl;)V
    .registers 2
    .parameter "socket"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 45
    check-cast p1, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    .end local p1
    iput-object p1, p0, Lorg/apache/harmony/luni/net/SocketInputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    .line 46
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/harmony/luni/net/SocketInputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/harmony/luni/net/SocketInputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->close()V

    .line 56
    return-void
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-array v0, v4, [B

    .line 61
    .local v0, buffer:[B
    iget-object v2, p0, Lorg/apache/harmony/luni/net/SocketInputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v2, v0, v3, v4}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->read([BII)I

    move-result v1

    .line 62
    .local v1, result:I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_f

    move v2, v1

    :goto_e
    return v2

    :cond_f
    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    goto :goto_e
.end method

.method public read([B)I
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/harmony/luni/net/SocketInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    if-nez p1, :cond_e

    .line 73
    new-instance v0, Ljava/io/IOException;

    const-string v1, "K0047"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_e
    if-nez p3, :cond_12

    .line 77
    const/4 v0, 0x0

    .line 87
    :goto_11
    return v0

    .line 80
    :cond_12
    if-ltz p2, :cond_17

    array-length v0, p1

    if-lt p2, v0, :cond_23

    .line 81
    :cond_17
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "K002e"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_23
    if-ltz p3, :cond_2a

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_36

    .line 84
    :cond_2a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "K002f"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_36
    iget-object v0, p0, Lorg/apache/harmony/luni/net/SocketInputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->read([BII)I

    move-result v0

    goto :goto_11
.end method

.method public skip(J)J
    .registers 6
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    .line 92
    cmp-long v0, v1, p1

    if-nez v0, :cond_8

    move-wide v0, v1

    :goto_7
    return-wide v0

    :cond_8
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    goto :goto_7
.end method
