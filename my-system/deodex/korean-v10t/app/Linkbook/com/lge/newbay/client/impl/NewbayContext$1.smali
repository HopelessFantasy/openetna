.class Lcom/lge/newbay/client/impl/NewbayContext$1;
.super Ljava/lang/Object;
.source "NewbayContext.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/newbay/client/impl/NewbayContext;->createHttpClient(Z)Lorg/apache/http/impl/client/DefaultHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 8
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "Accept-Encoding"

    .line 160
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    .line 161
    .local v1, requestLine:Lorg/apache/http/RequestLine;
    const-string v2, "Accept"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 162
    .local v0, acceptHeader:Lorg/apache/http/Header;
    const-string v2, "GET"

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    if-eqz v0, :cond_35

    const-string v2, "application/atom+xml"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "Accept-Encoding"

    invoke-interface {p1, v4}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 166
    const-string v2, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {p1, v4, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_35
    return-void
.end method
