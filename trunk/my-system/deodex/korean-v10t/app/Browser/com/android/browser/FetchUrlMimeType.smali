.class Lcom/android/browser/FetchUrlMimeType;
.super Landroid/os/AsyncTask;
.source "FetchUrlMimeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentValues;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mActivity:Lcom/android/browser/BrowserActivity;

.field mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/browser/FetchUrlMimeType;->mActivity:Lcom/android/browser/BrowserActivity;

    .line 54
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, [Landroid/content/ContentValues;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/FetchUrlMimeType;->doInBackground([Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Landroid/content/ContentValues;)Ljava/lang/String;
    .registers 15
    .parameter "values"

    .prologue
    const/4 v11, 0x0

    .line 58
    aget-object v11, p1, v11

    iput-object v11, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    .line 61
    iget-object v11, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v12, "uri"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 62
    .local v10, uri:Ljava/lang/String;
    if-eqz v10, :cond_15

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_17

    .line 63
    :cond_15
    const/4 v11, 0x0

    .line 108
    :goto_16
    return-object v11

    .line 68
    :cond_17
    iget-object v11, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v12, "useragent"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 70
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    new-instance v6, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v6, v10}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 72
    .local v6, request:Lorg/apache/http/client/methods/HttpHead;
    iget-object v11, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v12, "cookiedata"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, cookie:Ljava/lang/String;
    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3d

    .line 74
    const-string v11, "Cookie"

    invoke-virtual {v6, v11, v1}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_3d
    iget-object v11, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v12, "referer"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, referer:Ljava/lang/String;
    if-eqz v5, :cond_52

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_52

    .line 79
    const-string v11, "Referer"

    invoke-virtual {v6, v11, v5}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_52
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 84
    .local v9, succeeded:Ljava/lang/Boolean;
    const/4 v4, 0x0

    .line 86
    .local v4, mimeType:Ljava/lang/String;
    :try_start_58
    invoke-virtual {v0, v6}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 90
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_82

    .line 91
    const-string v11, "Content-Type"

    invoke-interface {v7, v11}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 92
    .local v3, header:Lorg/apache/http/Header;
    if-eqz v3, :cond_82

    .line 93
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 94
    const/16 v11, 0x3b

    invoke-virtual {v4, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 95
    .local v8, semicolonIndex:I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_82

    .line 96
    const/4 v11, 0x0

    invoke-virtual {v4, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_81
    .catchall {:try_start_58 .. :try_end_81} :catchall_99
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_81} :catch_87
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_81} :catch_90

    move-result-object v4

    .line 105
    .end local v3           #header:Lorg/apache/http/Header;
    .end local v8           #semicolonIndex:I
    :cond_82
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .end local v7           #response:Lorg/apache/http/HttpResponse;
    :goto_85
    move-object v11, v4

    .line 108
    goto :goto_16

    .line 100
    :catch_87
    move-exception v11

    move-object v2, v11

    .line 101
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    :try_start_89
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpHead;->abort()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_99

    .line 105
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_85

    .line 102
    .end local v2           #ex:Ljava/lang/IllegalArgumentException;
    :catch_90
    move-exception v11

    move-object v2, v11

    .line 103
    .local v2, ex:Ljava/io/IOException;
    :try_start_92
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpHead;->abort()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_99

    .line 105
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_85

    .end local v2           #ex:Ljava/io/IOException;
    :catchall_99
    move-exception v11

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v11
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/FetchUrlMimeType;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .registers 9
    .parameter "mimeType"

    .prologue
    .line 113
    if-eqz p1, :cond_4f

    .line 114
    iget-object v4, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v5, "uri"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, url:Ljava/lang/String;
    const-string v4, "text/plain"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "application/octet-stream"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 117
    :cond_1a
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, newMimeType:Ljava/lang/String;
    if-eqz v2, :cond_2f

    .line 121
    iget-object v4, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v5, "mimetype"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v2           #newMimeType:Ljava/lang/String;
    :cond_2f
    const/4 v4, 0x0

    invoke-static {v3, v4, p1}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, filename:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    const-string v5, "hint"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v4, p0, Lcom/android/browser/FetchUrlMimeType;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v4}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/browser/FetchUrlMimeType;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 138
    .local v0, contentUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/browser/FetchUrlMimeType;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v4, v0}, Lcom/android/browser/BrowserActivity;->viewDownloads(Landroid/net/Uri;)V

    .line 139
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #filename:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :goto_4e
    return-void

    .line 130
    :cond_4f
    iget-object v4, p0, Lcom/android/browser/FetchUrlMimeType;->mActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v4}, Lcom/android/browser/BrowserActivity;->cancelSaveImage()V

    goto :goto_4e
.end method
