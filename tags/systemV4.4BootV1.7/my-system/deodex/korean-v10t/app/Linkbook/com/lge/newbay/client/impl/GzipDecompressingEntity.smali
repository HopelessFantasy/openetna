.class public Lcom/lge/newbay/client/impl/GzipDecompressingEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "GzipDecompressingEntity.java"


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .registers 2
    .parameter "entity"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v1, p0, Lcom/lge/newbay/client/impl/GzipDecompressingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 33
    .local v0, wrappedin:Ljava/io/InputStream;
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 38
    const-wide/16 v0, -0x1

    return-wide v0
.end method
