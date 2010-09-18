.class Lcom/lge/newbay/client/impl/NewbayAPI$1;
.super Ljava/lang/Object;
.source "NewbayAPI.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/impl/NewbayAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/newbay/client/impl/NewbayAPI;


# direct methods
.method constructor <init>(Lcom/lge/newbay/client/impl/NewbayAPI;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iput-object p1, p0, Lcom/lge/newbay/client/impl/NewbayAPI$1;->this$0:Lcom/lge/newbay/client/impl/NewbayAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/lge/newbay/client/impl/NewbayAPI$1;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 7
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 102
    .local v1, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_2c

    .line 103
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x191

    if-ne v2, v3, :cond_1e

    .line 104
    new-instance v2, Lcom/lge/newbay/client/HttpUnauthorizatedException;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lge/newbay/client/HttpUnauthorizatedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_1e
    new-instance v2, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 110
    :cond_2c
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 112
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-nez v0, :cond_37

    const/4 v2, 0x0

    .line 114
    :goto_33
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    return-object v2

    .line 112
    :cond_37
    :try_start_37
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3c

    move-result-object v2

    goto :goto_33

    .line 114
    :catchall_3c
    move-exception v2

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    throw v2
.end method
