.class Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;
.super Ljava/io/InputStream;
.source "FtpURLInputStream.java"


# instance fields
.field private controlSocket:Ljava/net/Socket;

.field private is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/net/Socket;)V
    .registers 3
    .parameter "is"
    .parameter "controlSocket"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->is:Ljava/io/InputStream;

    .line 36
    iput-object p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->controlSocket:Ljava/net/Socket;

    .line 37
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
    .line 80
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2

    .prologue
    .line 67
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_d

    .line 72
    :goto_5
    :try_start_5
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->controlSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 76
    :goto_a
    return-void

    .line 73
    :catch_b
    move-exception v0

    goto :goto_a

    .line 68
    :catch_d
    move-exception v0

    goto :goto_5
.end method

.method public declared-synchronized mark(I)V
    .registers 3
    .parameter "limit"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 57
    monitor-exit p0

    return-void

    .line 56
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5
    .parameter "buf"
    .parameter "off"
    .parameter "nbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 52
    monitor-exit p0

    return-void

    .line 51
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 5
    .parameter "sbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
