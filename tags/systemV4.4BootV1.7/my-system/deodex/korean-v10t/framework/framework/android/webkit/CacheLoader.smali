.class Landroid/webkit/CacheLoader;
.super Landroid/webkit/StreamLoader;
.source "CacheLoader.java"


# instance fields
.field mCacheResult:Landroid/webkit/CacheManager$CacheResult;


# direct methods
.method constructor <init>(Landroid/webkit/LoadListener;Landroid/webkit/CacheManager$CacheResult;)V
    .registers 3
    .parameter "loadListener"
    .parameter "result"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/webkit/StreamLoader;-><init>(Landroid/webkit/LoadListener;)V

    .line 38
    iput-object p2, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    .line 39
    return-void
.end method


# virtual methods
.method protected buildHeaders(Landroid/net/http/Headers;)V
    .registers 4
    .parameter "headers"

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_25

    .line 54
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/http/Headers;->setContentType(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    if-eqz v1, :cond_43

    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_43

    .line 61
    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v1, v1, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/net/http/Headers;->setLocation(Ljava/lang/String;)V

    .line 63
    :cond_43
    return-void
.end method

.method protected setupStreamAndSendStatus()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 43
    iget-object v0, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-object v0, v0, Landroid/webkit/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;

    iput-object v0, p0, Landroid/webkit/CacheLoader;->mDataStream:Ljava/io/InputStream;

    .line 44
    iget-object v0, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget-wide v0, v0, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    iput-wide v0, p0, Landroid/webkit/CacheLoader;->mContentLength:J

    .line 45
    iget-object v0, p0, Landroid/webkit/CacheLoader;->mHandler:Landroid/webkit/LoadListener;

    iget-object v1, p0, Landroid/webkit/CacheLoader;->mCacheResult:Landroid/webkit/CacheManager$CacheResult;

    iget v1, v1, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    const-string v2, "OK"

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/webkit/LoadListener;->status(IIILjava/lang/String;)V

    .line 46
    return v3
.end method
