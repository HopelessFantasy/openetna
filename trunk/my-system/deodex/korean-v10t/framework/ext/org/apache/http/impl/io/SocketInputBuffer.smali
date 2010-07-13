.class public Lorg/apache/http/impl/io/SocketInputBuffer;
.super Lorg/apache/http/impl/io/AbstractSessionInputBuffer;
.source "SocketInputBuffer.java"


# static fields
.field private static final SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;


# instance fields
.field private final socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    invoke-static {}, Lorg/apache/http/impl/io/SocketInputBuffer;->SocketTimeoutExceptionClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/io/SocketInputBuffer;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V
    .registers 6
    .parameter "socket"
    .parameter "buffersize"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;-><init>()V

    .line 83
    if-nez p1, :cond_d

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_d
    iput-object p1, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    .line 87
    if-gez p2, :cond_15

    .line 88
    invoke-virtual {p1}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result p2

    .line 90
    :cond_15
    const/16 v0, 0x400

    if-ge p2, v0, :cond_1b

    .line 91
    const/16 p2, 0x400

    .line 93
    :cond_1b
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/http/impl/io/SocketInputBuffer;->init(Ljava/io/InputStream;ILorg/apache/http/params/HttpParams;)V

    .line 94
    return-void
.end method

.method private static SocketTimeoutExceptionClass()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 62
    :try_start_0
    const-string v1, "java.net.SocketTimeoutException"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 64
    :goto_6
    return-object v1

    .line 63
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 64
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method private static isSocketTimeoutException(Ljava/io/InterruptedIOException;)Z
    .registers 2
    .parameter "e"

    .prologue
    .line 69
    sget-object v0, Lorg/apache/http/impl/io/SocketInputBuffer;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_b

    .line 70
    sget-object v0, Lorg/apache/http/impl/io/SocketInputBuffer;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    .line 72
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public isDataAvailable(I)Z
    .registers 7
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->hasBufferedData()Z

    move-result v2

    .line 98
    .local v2, result:Z
    if-nez v2, :cond_1d

    .line 99
    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    .line 101
    .local v1, oldtimeout:I
    :try_start_c
    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 102
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->fillBuffer()I

    .line 103
    invoke-virtual {p0}, Lorg/apache/http/impl/io/SocketInputBuffer;->hasBufferedData()Z
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_27
    .catch Ljava/io/InterruptedIOException; {:try_start_c .. :try_end_17} :catch_1e

    move-result v2

    .line 109
    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 112
    .end local v1           #oldtimeout:I
    :cond_1d
    :goto_1d
    return v2

    .line 104
    .restart local v1       #oldtimeout:I
    :catch_1e
    move-exception v3

    move-object v0, v3

    .line 105
    .local v0, e:Ljava/io/InterruptedIOException;
    :try_start_20
    invoke-static {v0}, Lorg/apache/http/impl/io/SocketInputBuffer;->isSocketTimeoutException(Ljava/io/InterruptedIOException;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 106
    throw v0
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_27

    .line 109
    .end local v0           #e:Ljava/io/InterruptedIOException;
    :catchall_27
    move-exception v3

    iget-object v4, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v3

    .restart local v0       #e:Ljava/io/InterruptedIOException;
    :cond_2e
    iget-object v3, p0, Lorg/apache/http/impl/io/SocketInputBuffer;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_1d
.end method
