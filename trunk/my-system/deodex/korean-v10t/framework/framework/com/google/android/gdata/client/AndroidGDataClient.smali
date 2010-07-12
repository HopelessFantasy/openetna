.class public Lcom/google/android/gdata/client/AndroidGDataClient;
.super Ljava/lang/Object;
.source "AndroidGDataClient.java"

# interfaces
.implements Lcom/google/wireless/gdata/client/GDataClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gdata/client/AndroidGDataClient$MediaPutRequestCreator;,
        Lcom/google/android/gdata/client/AndroidGDataClient$PostRequestCreator;,
        Lcom/google/android/gdata/client/AndroidGDataClient$GetRequestCreator;,
        Lcom/google/android/gdata/client/AndroidGDataClient$HttpRequestCreator;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_USER_AGENT_APP_VERSION:Ljava/lang/String; = "Android-GData/1.1"

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_REDIRECTS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "GDataClient"

.field private static final X_HTTP_METHOD_OVERRIDE:Ljava/lang/String; = "X-HTTP-Method-Override"


# instance fields
.field private final mHttpClient:Lcom/google/android/net/GoogleHttpClient;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 5
    .parameter "resolver"

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/google/android/net/GoogleHttpClient;

    const-string v1, "Android-GData/1.1"

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/net/GoogleHttpClient;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gdata/client/AndroidGDataClient;->mHttpClient:Lcom/google/android/net/GoogleHttpClient;

    .line 126
    iget-object v0, p0, Lcom/google/android/gdata/client/AndroidGDataClient;->mHttpClient:Lcom/google/android/net/GoogleHttpClient;

    const-string v1, "GDataClient"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/net/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 127
    iput-object p1, p0, Lcom/google/android/gdata/client/AndroidGDataClient;->mResolver:Landroid/content/ContentResolver;

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 139
    const-string v0, "Android-GData/1.1"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gdata/client/AndroidGDataClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "appAndVersion"

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    new-instance v0, Lcom/google/android/net/GoogleHttpClient;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/net/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gdata/client/AndroidGDataClient;->mHttpClient:Lcom/google/android/net/GoogleHttpClient;

    .line 155
    iget-object v0, p0, Lcom/google/android/gdata/client/AndroidGDataClient;->mHttpClient:Lcom/google/android/net/GoogleHttpClient;

    const-string v1, "GDataClient"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/net/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gdata/client/AndroidGDataClient;->mResolver:Landroid/content/ContentResolver;

    .line 157
    return-void
.end method

.method private createAndExecuteMethod(Lcom/google/android/gdata/client/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 32
    .parameter "creator"
    .parameter "uriString"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const/16 v20, 0x0

    .line 196
    .local v20, response:Lorg/apache/http/HttpResponse;
    const/16 v21, 0x1f4

    .line 197
    .local v21, status:I
    const/16 v18, 0xa

    .line 201
    .local v18, redirectsLeft:I
    :try_start_6
    new-instance v23, Ljava/net/URI;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_f} :catch_93

    .line 211
    .local v23, uri:Ljava/net/URI;
    :goto_f
    if-lez v18, :cond_1ae

    .line 213
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/google/android/gdata/client/AndroidGDataClient$HttpRequestCreator;->createRequest(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v19

    .line 215
    .local v19, request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static/range {v19 .. v19}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 218
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_44

    .line 219
    const-string v25, "Authorization"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "GoogleLogin auth="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_44
    const-string v25, "GDataClient"

    const/16 v26, 0x3

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_6e

    .line 228
    const-string v25, "GDataClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Executing "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_6e
    const/16 v20, 0x0

    .line 234
    :try_start_70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gdata/client/AndroidGDataClient;->mHttpClient:Lcom/google/android/net/GoogleHttpClient;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/net/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_7d} :catch_e9

    move-result-object v20

    .line 240
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    .line 241
    .local v22, statusLine:Lorg/apache/http/StatusLine;
    if-nez v22, :cond_108

    .line 242
    const-string v25, "GDataClient"

    const-string v26, "StatusLine is null."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v25, Ljava/lang/NullPointerException;

    const-string v26, "StatusLine is null -- should not happen."

    invoke-direct/range {v25 .. v26}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 202
    .end local v19           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v22           #statusLine:Lorg/apache/http/StatusLine;
    .end local v23           #uri:Ljava/net/URI;
    :catch_93
    move-exception v25

    move-object/from16 v24, v25

    .line 203
    .local v24, use:Ljava/net/URISyntaxException;
    const-string v25, "GDataClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unable to parse "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " as URI."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    new-instance v25, Ljava/io/IOException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unable to parse "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " as URI: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v24 .. v24}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 235
    .end local v24           #use:Ljava/net/URISyntaxException;
    .restart local v19       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v23       #uri:Ljava/net/URI;
    :catch_e9
    move-exception v25

    move-object/from16 v15, v25

    .line 236
    .local v15, ioe:Ljava/io/IOException;
    const-string v25, "GDataClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unable to execute HTTP request."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    throw v15

    .line 246
    .end local v15           #ioe:Ljava/io/IOException;
    .restart local v22       #statusLine:Lorg/apache/http/StatusLine;
    :cond_108
    const-string v25, "GDataClient"

    const/16 v26, 0x3

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_156

    .line 247
    const-string v25, "GDataClient"

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    .local v4, arr$:[Lorg/apache/http/Header;
    move-object v0, v4

    array-length v0, v0

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_128
    move v0, v13

    move/from16 v1, v16

    if-ge v0, v1, :cond_156

    aget-object v12, v4, v13

    .line 249
    .local v12, h:Lorg/apache/http/Header;
    const-string v25, "GDataClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ": "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    add-int/lit8 v13, v13, 0x1

    goto :goto_128

    .line 252
    .end local v4           #arr$:[Lorg/apache/http/Header;
    .end local v12           #h:Lorg/apache/http/Header;
    .end local v13           #i$:I
    .end local v16           #len$:I
    :cond_156
    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v21

    .line 254
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 256
    .local v8, entity:Lorg/apache/http/HttpEntity;
    const/16 v25, 0xc8

    move/from16 v0, v21

    move/from16 v1, v25

    if-lt v0, v1, :cond_186

    const/16 v25, 0x12c

    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_186

    if-eqz v8, :cond_186

    .line 257
    invoke-static {v8}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v14

    .line 258
    .local v14, in:Ljava/io/InputStream;
    const-string v25, "GDataClient"

    const/16 v26, 0x3

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_185

    .line 259
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/google/android/gdata/client/AndroidGDataClient;->logInputStreamContents(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v14

    .line 261
    :cond_185
    return-object v14

    .line 267
    .end local v14           #in:Ljava/io/InputStream;
    :cond_186
    const/16 v25, 0x12e

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_1ae

    .line 269
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 270
    const-string v25, "Location"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v17

    .line 271
    .local v17, location:Lorg/apache/http/Header;
    if-nez v17, :cond_211

    .line 272
    const-string v25, "GDataClient"

    const/16 v26, 0x3

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_1ae

    .line 273
    const-string v25, "GDataClient"

    const-string v26, "Redirect requested but no Location specified."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    .end local v17           #location:Lorg/apache/http/Header;
    .end local v19           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v22           #statusLine:Lorg/apache/http/StatusLine;
    .end local v23           #uri:Ljava/net/URI;
    :cond_1ae
    const-string v25, "GDataClient"

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_1da

    .line 298
    const-string v25, "GDataClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Received "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " status code."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_1da
    const/4 v9, 0x0

    .line 301
    .local v9, errorMessage:Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 303
    .restart local v8       #entity:Lorg/apache/http/HttpEntity;
    if-eqz v20, :cond_2bf

    if-eqz v8, :cond_2bf

    .line 304
    :try_start_1e3
    invoke-static {v8}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v14

    .line 305
    .restart local v14       #in:Ljava/io/InputStream;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 306
    .local v5, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v25, 0x2000

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object v6, v0

    .line 307
    .local v6, buf:[B
    const/4 v7, -0x1

    .line 308
    .local v7, bytesRead:I
    :goto_1f4
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/16 v25, -0x1

    move v0, v7

    move/from16 v1, v25

    if-eq v0, v1, :cond_2a0

    .line 309
    const/16 v25, 0x0

    move-object v0, v5

    move-object v1, v6

    move/from16 v2, v25

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_209
    .catchall {:try_start_1e3 .. :try_end_209} :catchall_20a

    goto :goto_1f4

    .line 318
    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #buf:[B
    .end local v7           #bytesRead:I
    .end local v14           #in:Ljava/io/InputStream;
    :catchall_20a
    move-exception v25

    :goto_20b
    if-eqz v8, :cond_210

    .line 319
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 318
    :cond_210
    throw v25

    .line 278
    .end local v9           #errorMessage:Ljava/lang/String;
    .restart local v17       #location:Lorg/apache/http/Header;
    .restart local v19       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v22       #statusLine:Lorg/apache/http/StatusLine;
    .restart local v23       #uri:Ljava/net/URI;
    :cond_211
    const-string v25, "GDataClient"

    const/16 v26, 0x3

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_237

    .line 279
    const-string v25, "GDataClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Following redirect to "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_237
    :try_start_237
    new-instance v23, Ljava/net/URI;

    .end local v23           #uri:Ljava/net/URI;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_244
    .catch Ljava/net/URISyntaxException; {:try_start_237 .. :try_end_244} :catch_248

    .line 291
    .restart local v23       #uri:Ljava/net/URI;
    add-int/lit8 v18, v18, -0x1

    .line 295
    goto/16 :goto_f

    .line 283
    .end local v23           #uri:Ljava/net/URI;
    :catch_248
    move-exception v25

    move-object/from16 v24, v25

    .line 284
    .restart local v24       #use:Ljava/net/URISyntaxException;
    const-string v25, "GDataClient"

    const/16 v26, 0x3

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_1ae

    .line 285
    const-string v25, "GDataClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unable to parse "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " as URI."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    new-instance v25, Ljava/io/IOException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unable to parse "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " as URI."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 312
    .end local v17           #location:Lorg/apache/http/Header;
    .end local v19           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v22           #statusLine:Lorg/apache/http/StatusLine;
    .end local v24           #use:Ljava/net/URISyntaxException;
    .restart local v5       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #buf:[B
    .restart local v7       #bytesRead:I
    .restart local v9       #errorMessage:Ljava/lang/String;
    .restart local v14       #in:Ljava/io/InputStream;
    :cond_2a0
    :try_start_2a0
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v25

    move-object v0, v10

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_2ac
    .catchall {:try_start_2a0 .. :try_end_2ac} :catchall_20a

    .line 313
    .end local v9           #errorMessage:Ljava/lang/String;
    .local v10, errorMessage:Ljava/lang/String;
    :try_start_2ac
    const-string v25, "GDataClient"

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25

    if-eqz v25, :cond_2be

    .line 314
    const-string v25, "GDataClient"

    move-object/from16 v0, v25

    move-object v1, v10

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2be
    .catchall {:try_start_2ac .. :try_end_2be} :catchall_30f

    :cond_2be
    move-object v9, v10

    .line 318
    .end local v5           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v6           #buf:[B
    .end local v7           #bytesRead:I
    .end local v10           #errorMessage:Ljava/lang/String;
    .end local v14           #in:Ljava/io/InputStream;
    .restart local v9       #errorMessage:Ljava/lang/String;
    :cond_2bf
    if-eqz v8, :cond_2c4

    .line 319
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 322
    :cond_2c4
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Received "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " status code"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 323
    .local v11, exceptionMessage:Ljava/lang/String;
    if-eqz v9, :cond_300

    .line 324
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ": "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 326
    :cond_300
    new-instance v25, Lcom/google/wireless/gdata/client/HttpException;

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object v1, v11

    move/from16 v2, v21

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/google/wireless/gdata/client/HttpException;-><init>(Ljava/lang/String;ILjava/io/InputStream;)V

    throw v25

    .line 318
    .end local v9           #errorMessage:Ljava/lang/String;
    .end local v11           #exceptionMessage:Ljava/lang/String;
    .restart local v5       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #buf:[B
    .restart local v7       #bytesRead:I
    .restart local v10       #errorMessage:Ljava/lang/String;
    .restart local v14       #in:Ljava/io/InputStream;
    :catchall_30f
    move-exception v25

    move-object v9, v10

    .end local v10           #errorMessage:Ljava/lang/String;
    .restart local v9       #errorMessage:Ljava/lang/String;
    goto/16 :goto_20b
.end method

.method private createEntityForEntry(Lcom/google/wireless/gdata/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;
    .registers 13
    .parameter "entry"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v8, "Unable to serialize entry."

    const-string v7, "GDataClient"

    .line 467
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 469
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_9
    invoke-interface {p1, v0, p2}, Lcom/google/wireless/gdata/serializer/GDataSerializer;->serialize(Ljava/io/OutputStream;I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_48
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_9 .. :try_end_c} :catch_51

    .line 478
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 480
    .local v2, entryBytes:[B
    if-eqz v2, :cond_3a

    const-string v6, "GDataClient"

    const/4 v6, 0x3

    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 482
    :try_start_1b
    const-string v6, "GDataClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Serialized entry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v2, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_3a} :catch_76

    .line 490
    :cond_3a
    iget-object v6, p0, Lcom/google/android/gdata/client/AndroidGDataClient;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v6}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v1

    .line 491
    .local v1, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    invoke-interface {p1}, Lcom/google/wireless/gdata/serializer/GDataSerializer;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 492
    return-object v1

    .line 470
    .end local v1           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v2           #entryBytes:[B
    :catch_48
    move-exception v3

    .line 471
    .local v3, ioe:Ljava/io/IOException;
    const-string v6, "GDataClient"

    const-string v6, "Unable to serialize entry."

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    throw v3

    .line 473
    .end local v3           #ioe:Ljava/io/IOException;
    :catch_51
    move-exception v4

    .line 474
    .local v4, pe:Lcom/google/wireless/gdata/parser/ParseException;
    const-string v6, "GDataClient"

    const-string v6, "Unable to serialize entry."

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to serialize entry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/wireless/gdata/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 483
    .end local v4           #pe:Lcom/google/wireless/gdata/parser/ParseException;
    .restart local v2       #entryBytes:[B
    :catch_76
    move-exception v6

    move-object v5, v6

    .line 485
    .local v5, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "UTF-8 should be supported!"

    invoke-direct {v6, v7, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private logInputStreamContents(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 12
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x4000

    .line 353
    if-nez p1, :cond_6

    move-object v6, p1

    .line 378
    :goto_5
    return-object v6

    .line 364
    :cond_6
    const/16 v2, 0x4000

    .line 365
    .local v2, bufferSize:I
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 366
    .local v0, bin:Ljava/io/BufferedInputStream;
    invoke-virtual {v0, v6}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 367
    const/16 v5, 0x4000

    .line 368
    .local v5, wanted:I
    const/4 v4, 0x0

    .line 369
    .local v4, totalReceived:I
    new-array v1, v5, [B

    .line 370
    .local v1, buf:[B
    :goto_15
    if-lez v5, :cond_1d

    .line 371
    invoke-virtual {v0, v1, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    .line 372
    .local v3, got:I
    if-gtz v3, :cond_2f

    .line 376
    .end local v3           #got:I
    :cond_1d
    const-string v6, "GDataClient"

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "UTF-8"

    invoke-direct {v7, v1, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    move-object v6, v0

    .line 378
    goto :goto_5

    .line 373
    .restart local v3       #got:I
    :cond_2f
    sub-int/2addr v5, v3

    .line 374
    add-int/2addr v4, v3

    .line 375
    goto :goto_15
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/gdata/client/AndroidGDataClient;->mHttpClient:Lcom/google/android/net/GoogleHttpClient;

    invoke-virtual {v0}, Lcom/google/android/net/GoogleHttpClient;->close()V

    .line 161
    return-void
.end method

.method public createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/serializer/GDataSerializer;)Ljava/io/InputStream;
    .registers 8
    .parameter "feedUrl"
    .parameter "authToken"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    const/4 v2, 0x1

    invoke-direct {p0, p3, v2}, Lcom/google/android/gdata/client/AndroidGDataClient;->createEntityForEntry(Lcom/google/wireless/gdata/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 401
    .local v0, entity:Lorg/apache/http/HttpEntity;
    new-instance v2, Lcom/google/android/gdata/client/AndroidGDataClient$PostRequestCreator;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/google/android/gdata/client/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/gdata/client/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/gdata/client/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 405
    .local v1, in:Ljava/io/InputStream;
    if-eqz v1, :cond_12

    .line 406
    return-object v1

    .line 408
    :cond_12
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to create entry."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createQueryParams()Lcom/google/wireless/gdata/client/QueryParams;
    .registers 2

    .prologue
    .line 186
    new-instance v0, Lcom/google/android/gdata/client/QueryParamsImpl;

    invoke-direct {v0}, Lcom/google/android/gdata/client/QueryParamsImpl;-><init>()V

    return-object v0
.end method

.method public deleteEntry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "editUri"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 435
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "you must specify an non-empty edit url"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 438
    :cond_e
    new-instance v1, Lcom/google/android/gdata/client/AndroidGDataClient$PostRequestCreator;

    const-string v2, "DELETE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gdata/client/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v1, p1, p2}, Lcom/google/android/gdata/client/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/gdata/client/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 443
    .local v0, in:Ljava/io/InputStream;
    if-nez v0, :cond_24

    .line 444
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to delete entry."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 447
    :cond_24
    :try_start_24
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    .line 451
    :goto_27
    return-void

    .line 448
    :catch_28
    move-exception v1

    goto :goto_27
.end method

.method public encodeUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "uri"

    .prologue
    .line 170
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 178
    .local v0, encodedUri:Ljava/lang/String;
    :goto_6
    return-object v0

    .line 171
    .end local v0           #encodedUri:Ljava/lang/String;
    :catch_7
    move-exception v2

    move-object v1, v2

    .line 173
    .local v1, uee:Ljava/io/UnsupportedEncodingException;
    const-string v2, "JakartaGDataClient"

    const-string v3, "UTF-8 not supported -- should not happen.  Using default encoding."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedUri:Ljava/lang/String;
    goto :goto_6
.end method

.method public getFeedAsStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6
    .parameter "feedUrl"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v1, Lcom/google/android/gdata/client/AndroidGDataClient$GetRequestCreator;

    invoke-direct {v1}, Lcom/google/android/gdata/client/AndroidGDataClient$GetRequestCreator;-><init>()V

    invoke-direct {p0, v1, p1, p2}, Lcom/google/android/gdata/client/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/gdata/client/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 338
    .local v0, in:Ljava/io/InputStream;
    if-eqz v0, :cond_c

    .line 339
    return-object v0

    .line 341
    :cond_c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to access feed."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMediaEntryAsStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6
    .parameter "mediaEntryUrl"
    .parameter "authToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    new-instance v1, Lcom/google/android/gdata/client/AndroidGDataClient$GetRequestCreator;

    invoke-direct {v1}, Lcom/google/android/gdata/client/AndroidGDataClient$GetRequestCreator;-><init>()V

    invoke-direct {p0, v1, p1, p2}, Lcom/google/android/gdata/client/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/gdata/client/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 386
    .local v0, in:Ljava/io/InputStream;
    if-eqz v0, :cond_c

    .line 387
    return-object v0

    .line 389
    :cond_c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to access media entry."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/serializer/GDataSerializer;)Ljava/io/InputStream;
    .registers 8
    .parameter "editUri"
    .parameter "authToken"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    const/4 v2, 0x2

    invoke-direct {p0, p3, v2}, Lcom/google/android/gdata/client/AndroidGDataClient;->createEntityForEntry(Lcom/google/wireless/gdata/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 419
    .local v0, entity:Lorg/apache/http/HttpEntity;
    new-instance v2, Lcom/google/android/gdata/client/AndroidGDataClient$PostRequestCreator;

    const-string v3, "PUT"

    invoke-direct {v2, v3, v0}, Lcom/google/android/gdata/client/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/gdata/client/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/gdata/client/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 423
    .local v1, in:Ljava/io/InputStream;
    if-eqz v1, :cond_13

    .line 424
    return-object v1

    .line 426
    :cond_13
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to update entry."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public updateMediaEntry(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 8
    .parameter "editUri"
    .parameter "authToken"
    .parameter "mediaEntryInputStream"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 456
    new-instance v1, Lcom/google/android/gdata/client/AndroidGDataClient$MediaPutRequestCreator;

    invoke-direct {v1, p3, p4}, Lcom/google/android/gdata/client/AndroidGDataClient$MediaPutRequestCreator;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v1, p1, p2}, Lcom/google/android/gdata/client/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/gdata/client/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 460
    .local v0, in:Ljava/io/InputStream;
    if-eqz v0, :cond_c

    .line 461
    return-object v0

    .line 463
    :cond_c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to write media entry."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
