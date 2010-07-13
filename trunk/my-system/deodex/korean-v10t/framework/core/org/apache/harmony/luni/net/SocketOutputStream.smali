.class Lorg/apache/harmony/luni/net/SocketOutputStream;
.super Ljava/io/OutputStream;
.source "SocketOutputStream.java"


# instance fields
.field private socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;


# direct methods
.method public constructor <init>(Ljava/net/SocketImpl;)V
    .registers 2
    .parameter "socket"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 40
    check-cast p1, Lorg/apache/harmony/luni/net/PlainSocketImpl;

    .end local p1
    iput-object p1, p0, Lorg/apache/harmony/luni/net/SocketOutputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    .line 41
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/harmony/luni/net/SocketOutputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->close()V

    .line 46
    return-void
.end method

.method public write(I)V
    .registers 6
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-array v0, v3, [B

    .line 71
    .local v0, buffer:[B
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 73
    iget-object v1, p0, Lorg/apache/harmony/luni/net/SocketOutputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->write([BII)I

    .line 74
    return-void
.end method

.method public write([B)V
    .registers 5
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/harmony/luni/net/SocketOutputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->write([BII)I

    .line 51
    return-void
.end method

.method public write([BII)V
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
    .line 56
    if-eqz p1, :cond_1f

    .line 57
    if-ltz p2, :cond_13

    array-length v0, p1

    if-gt p2, v0, :cond_13

    if-ltz p3, :cond_13

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_13

    .line 59
    iget-object v0, p0, Lorg/apache/harmony/luni/net/SocketOutputStream;->socket:Lorg/apache/harmony/luni/net/PlainSocketImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/harmony/luni/net/PlainSocketImpl;->write([BII)I

    .line 66
    return-void

    .line 61
    :cond_13
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "K002f"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "K0047"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
