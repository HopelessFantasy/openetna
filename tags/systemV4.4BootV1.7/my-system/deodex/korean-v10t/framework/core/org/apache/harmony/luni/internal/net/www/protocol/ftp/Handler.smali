.class public Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .registers 2

    .prologue
    .line 70
    const/16 v0, 0x15

    return v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .parameter "u"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;

    invoke-direct {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;-><init>(Ljava/net/URL;)V

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 5
    .parameter "u"
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    if-eqz p1, :cond_4

    if-nez p2, :cond_10

    .line 60
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K034b"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_10
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/ftp/FtpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;)V

    return-object v0
.end method
