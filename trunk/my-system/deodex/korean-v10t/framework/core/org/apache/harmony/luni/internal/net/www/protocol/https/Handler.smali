.class public Lorg/apache/harmony/luni/internal/net/www/protocol/https/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .registers 2

    .prologue
    .line 50
    const/16 v0, 0x1bb

    return v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/Handler;->getDefaultPort()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;-><init>(Ljava/net/URL;I)V

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 5
    .parameter "url"
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    if-eqz p1, :cond_4

    if-nez p2, :cond_10

    .line 43
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K034b"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_10
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/Handler;->getDefaultPort()I

    move-result v1

    invoke-direct {v0, p1, v1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;-><init>(Ljava/net/URL;ILjava/net/Proxy;)V

    return-object v0
.end method
