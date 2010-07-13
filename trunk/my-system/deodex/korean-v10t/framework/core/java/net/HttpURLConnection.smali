.class public abstract Ljava/net/HttpURLConnection;
.super Ljava/net/URLConnection;
.source "HttpURLConnection.java"


# static fields
.field private static final DEFAULT_CHUNK_LENGTH:I = 0x400

.field public static final HTTP_ACCEPTED:I = 0xca

.field public static final HTTP_BAD_GATEWAY:I = 0x1f6

.field public static final HTTP_BAD_METHOD:I = 0x195

.field public static final HTTP_BAD_REQUEST:I = 0x190

.field public static final HTTP_CLIENT_TIMEOUT:I = 0x198

.field public static final HTTP_CONFLICT:I = 0x199

.field public static final HTTP_CREATED:I = 0xc9

.field public static final HTTP_ENTITY_TOO_LARGE:I = 0x19d

.field public static final HTTP_FORBIDDEN:I = 0x193

.field public static final HTTP_GATEWAY_TIMEOUT:I = 0x1f8

.field public static final HTTP_GONE:I = 0x19a

.field public static final HTTP_INTERNAL_ERROR:I = 0x1f4

.field public static final HTTP_LENGTH_REQUIRED:I = 0x19b

.field public static final HTTP_MOVED_PERM:I = 0x12d

.field public static final HTTP_MOVED_TEMP:I = 0x12e

.field public static final HTTP_MULT_CHOICE:I = 0x12c

.field public static final HTTP_NOT_ACCEPTABLE:I = 0x196

.field public static final HTTP_NOT_AUTHORITATIVE:I = 0xcb

.field public static final HTTP_NOT_FOUND:I = 0x194

.field public static final HTTP_NOT_IMPLEMENTED:I = 0x1f5

.field public static final HTTP_NOT_MODIFIED:I = 0x130

.field public static final HTTP_NO_CONTENT:I = 0xcc

.field public static final HTTP_OK:I = 0xc8

.field public static final HTTP_PARTIAL:I = 0xce

.field public static final HTTP_PAYMENT_REQUIRED:I = 0x192

.field public static final HTTP_PRECON_FAILED:I = 0x19c

.field public static final HTTP_PROXY_AUTH:I = 0x197

.field public static final HTTP_REQ_TOO_LONG:I = 0x19e

.field public static final HTTP_RESET:I = 0xcd

.field public static final HTTP_SEE_OTHER:I = 0x12f

.field public static final HTTP_SERVER_ERROR:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HTTP_UNAUTHORIZED:I = 0x191

.field public static final HTTP_UNAVAILABLE:I = 0x1f7

.field public static final HTTP_UNSUPPORTED_TYPE:I = 0x19f

.field public static final HTTP_USE_PROXY:I = 0x131

.field public static final HTTP_VERSION:I = 0x1f9

.field private static followRedirects:Z


# instance fields
.field protected chunkLength:I

.field protected fixedContentLength:I

.field protected instanceFollowRedirects:Z

.field protected method:Ljava/lang/String;

.field private methodTokens:[Ljava/lang/String;

.field protected responseCode:I

.field protected responseMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    const/4 v0, 0x1

    sput-boolean v0, Ljava/net/HttpURLConnection;->followRedirects:Z

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;)V
    .registers 7
    .parameter "url"

    .prologue
    const/4 v3, -0x1

    const-string v4, "GET"

    .line 368
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "GET"

    aput-object v4, v0, v1

    const/4 v1, 0x1

    const-string v2, "DELETE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "HEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "OPTIONS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "POST"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "PUT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TRACE"

    aput-object v2, v0, v1

    iput-object v0, p0, Ljava/net/HttpURLConnection;->methodTokens:[Ljava/lang/String;

    .line 45
    const-string v0, "GET"

    iput-object v4, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    .line 60
    iput v3, p0, Ljava/net/HttpURLConnection;->responseCode:I

    .line 75
    sget-boolean v0, Ljava/net/HttpURLConnection;->followRedirects:Z

    iput-boolean v0, p0, Ljava/net/HttpURLConnection;->instanceFollowRedirects:Z

    .line 86
    iput v3, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    .line 95
    iput v3, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    .line 369
    return-void
.end method

.method public static getFollowRedirects()Z
    .registers 1

    .prologue
    .line 402
    sget-boolean v0, Ljava/net/HttpURLConnection;->followRedirects:Z

    return v0
.end method

.method public static setFollowRedirects(Z)V
    .registers 2
    .parameter "auto"

    .prologue
    .line 502
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 503
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_9

    .line 504
    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 506
    :cond_9
    sput-boolean p0, Ljava/net/HttpURLConnection;->followRedirects:Z

    .line 507
    return-void
.end method


# virtual methods
.method public abstract disconnect()V
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 389
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 6
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 586
    invoke-super {p0, p1, p2, p3}, Ljava/net/URLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInstanceFollowRedirects()Z
    .registers 2

    .prologue
    .line 555
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->instanceFollowRedirects:Z

    return v0
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    iget-object v1, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 420
    .local v0, port:I
    if-gez v0, :cond_a

    .line 421
    const/16 v0, 0x50

    .line 423
    :cond_a
    new-instance v1, Ljava/net/SocketPermission;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/net/HttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "connect, resolve"

    invoke-direct {v1, v2, v3}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getRequestMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 453
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 454
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, response:Ljava/lang/String;
    if-nez v2, :cond_d

    move v3, v4

    .line 471
    :goto_c
    return v3

    .line 458
    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 459
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 460
    .local v1, mark:I
    if-nez v1, :cond_1d

    move v3, v4

    .line 461
    goto :goto_c

    .line 463
    :cond_1d
    add-int/lit8 v0, v1, 0x3

    .line 464
    .local v0, last:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_29

    .line 465
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 467
    :cond_29
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Ljava/net/HttpURLConnection;->responseCode:I

    .line 468
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_43

    .line 469
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    .line 471
    :cond_43
    iget v3, p0, Ljava/net/HttpURLConnection;->responseCode:I

    goto :goto_c
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 485
    iget-object v0, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    .line 488
    :goto_6
    return-object v0

    .line 487
    :cond_7
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 488
    iget-object v0, p0, Ljava/net/HttpURLConnection;->responseMessage:Ljava/lang/String;

    goto :goto_6
.end method

.method public setChunkedStreamingMode(I)V
    .registers 4
    .parameter "chunklen"

    .prologue
    .line 630
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_10

    .line 631
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "K0079"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_10
    iget v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    if-ltz v0, :cond_20

    .line 634
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KA003"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_20
    if-gtz p1, :cond_27

    .line 637
    const/16 v0, 0x400

    iput v0, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    .line 641
    :goto_26
    return-void

    .line 639
    :cond_27
    iput p1, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    goto :goto_26
.end method

.method public setFixedLengthStreamingMode(I)V
    .registers 4
    .parameter "contentLength"

    .prologue
    .line 604
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_10

    .line 605
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "K0079"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_10
    iget v0, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    if-lez v0, :cond_20

    .line 608
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KA003"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_20
    if-gez p1, :cond_2e

    .line 611
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K0051"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_2e
    iput p1, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    .line 614
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .registers 2
    .parameter "followRedirects"

    .prologue
    .line 567
    iput-boolean p1, p0, Ljava/net/HttpURLConnection;->instanceFollowRedirects:Z

    .line 568
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .registers 5
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 523
    iget-boolean v1, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v1, :cond_10

    .line 524
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "K0037"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 526
    :cond_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    iget-object v1, p0, Ljava/net/HttpURLConnection;->methodTokens:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    .line 527
    iget-object v1, p0, Ljava/net/HttpURLConnection;->methodTokens:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 530
    iget-object v1, p0, Ljava/net/HttpURLConnection;->methodTokens:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    .line 531
    return-void

    .line 526
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 535
    :cond_2a
    new-instance v1, Ljava/net/ProtocolException;

    invoke-direct {v1}, Ljava/net/ProtocolException;-><init>()V

    throw v1
.end method

.method public abstract usingProxy()Z
.end method
