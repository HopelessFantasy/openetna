.class public Lorg/apache/harmony/luni/internal/net/www/protocol/file/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .parameter "url"

    .prologue
    .line 45
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;

    invoke-direct {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;-><init>(Ljava/net/URL;)V

    return-object v0
.end method

.method public openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 5
    .parameter "url"
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    if-eqz p1, :cond_4

    if-nez p2, :cond_10

    .line 70
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K034b"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_10
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;

    invoke-direct {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/file/FileURLConnection;-><init>(Ljava/net/URL;)V

    return-object v0
.end method

.method protected parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .registers 9
    .parameter "u"
    .parameter "str"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 94
    if-ge p4, p3, :cond_3

    .line 102
    :goto_2
    return-void

    .line 97
    :cond_3
    const-string v0, ""

    .line 98
    .local v0, parseString:Ljava/lang/String;
    if-ge p3, p4, :cond_13

    .line 99
    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5c

    const/16 v3, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_13
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-super {p0, p1, v0, v1, v2}, Ljava/net/URLStreamHandler;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V

    goto :goto_2
.end method
