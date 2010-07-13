.class Lcom/lge/newbay/client/impl/NewbayContext$2;
.super Ljava/lang/Object;
.source "NewbayContext.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


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
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .registers 9
    .parameter "response"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 174
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_2e

    .line 175
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 176
    .local v0, ceheader:Lorg/apache/http/Header;
    if-eqz v0, :cond_2e

    .line 177
    invoke-interface {v0}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v1

    .line 178
    .local v1, codecs:[Lorg/apache/http/HeaderElement;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_11
    array-length v4, v1

    if-ge v3, v4, :cond_2e

    .line 179
    aget-object v4, v1, v3

    invoke-interface {v4}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 180
    new-instance v4, Lcom/lge/newbay/client/impl/GzipDecompressingEntity;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/lge/newbay/client/impl/GzipDecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v4}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 186
    .end local v0           #ceheader:Lorg/apache/http/Header;
    .end local v1           #codecs:[Lorg/apache/http/HeaderElement;
    .end local v3           #i:I
    :cond_2e
    return-void

    .line 178
    .restart local v0       #ceheader:Lorg/apache/http/Header;
    .restart local v1       #codecs:[Lorg/apache/http/HeaderElement;
    .restart local v3       #i:I
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_11
.end method
