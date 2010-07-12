.class Landroid/webkit/ContentLoader;
.super Landroid/webkit/StreamLoader;
.source "ContentLoader.java"


# instance fields
.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/content/Context;)V
    .registers 6
    .parameter "rawUrl"
    .parameter "loadListener"
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p2}, Landroid/webkit/StreamLoader;-><init>(Landroid/webkit/LoadListener;)V

    .line 47
    iput-object p3, p0, Landroid/webkit/ContentLoader;->mContext:Landroid/content/Context;

    .line 50
    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 51
    .local v0, mimeIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    .line 52
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/ContentLoader;->mUrl:Ljava/lang/String;

    .line 53
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/ContentLoader;->mContentType:Ljava/lang/String;

    .line 58
    :goto_1d
    return-void

    .line 55
    :cond_1e
    iput-object p1, p0, Landroid/webkit/ContentLoader;->mUrl:Ljava/lang/String;

    goto :goto_1d
.end method

.method public static requestUrl(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/content/Context;)V
    .registers 4
    .parameter "url"
    .parameter "loadListener"
    .parameter "context"

    .prologue
    .line 122
    new-instance v0, Landroid/webkit/ContentLoader;

    invoke-direct {v0, p0, p1, p2}, Landroid/webkit/ContentLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/content/Context;)V

    .line 123
    .local v0, loader:Landroid/webkit/ContentLoader;
    invoke-virtual {v0}, Landroid/webkit/ContentLoader;->load()V

    .line 124
    return-void
.end method


# virtual methods
.method protected buildHeaders(Landroid/net/http/Headers;)V
    .registers 3
    .parameter "headers"

    .prologue
    .line 105
    iget-object v0, p0, Landroid/webkit/ContentLoader;->mContentType:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 106
    const-string v0, "text/html"

    invoke-virtual {p1, v0}, Landroid/net/http/Headers;->setContentType(Ljava/lang/String;)V

    .line 110
    :cond_9
    const-string v0, "no-store, no-cache"

    invoke-virtual {p1, v0}, Landroid/net/http/Headers;->setCacheControl(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method protected setupStreamAndSendStatus()Z
    .registers 13

    .prologue
    const/16 v11, -0xe

    const v10, 0x104006f

    const/4 v9, 0x1

    const/4 v7, 0x0

    const-string v8, " "

    .line 62
    iget-object v2, p0, Landroid/webkit/ContentLoader;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 63
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_3a

    .line 64
    iget-object v2, p0, Landroid/webkit/ContentLoader;->mHandler:Landroid/webkit/LoadListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/webkit/ContentLoader;->mContext:Landroid/content/Context;

    const v5, 0x1040007

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/ContentLoader;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v2, v7

    .line 100
    :goto_39
    return v2

    .line 73
    :cond_3a
    :try_start_3a
    iget-object v2, p0, Landroid/webkit/ContentLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/ContentLoader;->mDataStream:Ljava/io/InputStream;

    .line 74
    iget-object v2, p0, Landroid/webkit/ContentLoader;->mHandler:Landroid/webkit/LoadListener;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "OK"

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/webkit/LoadListener;->status(IIILjava/lang/String;)V
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_50} :catch_52
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_50} :catch_7c
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_50} :catch_a8

    move v2, v9

    .line 100
    goto :goto_39

    .line 75
    :catch_52
    move-exception v2

    move-object v0, v2

    .line 76
    .local v0, ex:Ljava/io/FileNotFoundException;
    iget-object v2, p0, Landroid/webkit/ContentLoader;->mHandler:Landroid/webkit/LoadListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/webkit/ContentLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v11, v3}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v2, v7

    .line 81
    goto :goto_39

    .line 83
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_7c
    move-exception v2

    move-object v0, v2

    .line 84
    .local v0, ex:Ljava/io/IOException;
    iget-object v2, p0, Landroid/webkit/ContentLoader;->mHandler:Landroid/webkit/LoadListener;

    const/16 v3, -0xd

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/webkit/ContentLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v2, v7

    .line 89
    goto :goto_39

    .line 90
    .end local v0           #ex:Ljava/io/IOException;
    :catch_a8
    move-exception v2

    move-object v0, v2

    .line 93
    .local v0, ex:Ljava/lang/RuntimeException;
    iget-object v2, p0, Landroid/webkit/ContentLoader;->mHandler:Landroid/webkit/LoadListener;

    const/16 v3, -0xd

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/webkit/ContentLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v2, v7

    .line 98
    goto/16 :goto_39
.end method
