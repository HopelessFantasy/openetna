.class Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;
.super Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;
.source "HttpsURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpsEngine"
.end annotation


# instance fields
.field private makingSSLTunnel:Z

.field final synthetic this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;Ljava/net/URL;I)V
    .registers 4
    .parameter
    .parameter "url"
    .parameter "port"

    .prologue
    .line 359
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;

    .line 360
    invoke-direct {p0, p2, p3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;I)V

    .line 361
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;Ljava/net/URL;ILjava/net/Proxy;)V
    .registers 5
    .parameter
    .parameter "url"
    .parameter "port"
    .parameter "proxy"

    .prologue
    .line 363
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;

    .line 364
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;ILjava/net/Proxy;)V

    .line 365
    return-void
.end method


# virtual methods
.method public connect()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->connected:Z

    if-eqz v2, :cond_5

    .line 412
    :cond_4
    :goto_4
    return-void

    .line 372
    :cond_5
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->usingProxy()Z

    move-result v2

    if-eqz v2, :cond_73

    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->makingSSLTunnel:Z

    if-nez v2, :cond_73

    .line 374
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->makingSSLTunnel:Z

    .line 376
    invoke-super {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connect()V

    .line 378
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->method:Ljava/lang/String;

    .line 380
    .local v1, save_meth:Ljava/lang/String;
    const-string v2, "CONNECT"

    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->method:Ljava/lang/String;

    .line 382
    :try_start_1b
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->doRequest()V

    .line 383
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->endRequest()V
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_3b

    .line 386
    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->method:Ljava/lang/String;

    .line 388
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->connected:Z

    if-nez v2, :cond_3f

    .line 389
    new-instance v2, Ljava/io/IOException;

    const-string v3, "luni.01"

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->responseMessage:Ljava/lang/String;

    iget v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->responseCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/apache/harmony/luni/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 386
    :catchall_3b
    move-exception v2

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->method:Ljava/lang/String;

    throw v2

    .line 395
    :cond_3f
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 397
    .local v0, is:Ljava/io/InputStream;
    :goto_45
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-eqz v2, :cond_4f

    .line 398
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    goto :goto_45

    .line 400
    :cond_4f
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->makingSSLTunnel:Z

    .line 405
    .end local v0           #is:Ljava/io/InputStream;
    .end local v1           #save_meth:Ljava/lang/String;
    :goto_52
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->makingSSLTunnel:Z

    if-nez v2, :cond_4

    .line 408
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;

    invoke-virtual {v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;

    invoke-virtual {v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getSecureSocket(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/SSLSocket;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;->access$002(Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection;Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSocket;

    .line 409
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    invoke-virtual {p0, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->setUpTransportIO(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;)V

    goto :goto_4

    .line 403
    :cond_73
    invoke-super {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->connect()V

    goto :goto_52
.end method

.method protected requestString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 416
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->usingProxy()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 417
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->makingSSLTunnel:Z

    if-eqz v2, :cond_37

    .line 419
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 420
    .local v1, port:I
    if-lez v1, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 430
    .end local v1           #port:I
    :goto_2f
    return-object v2

    .line 420
    .restart local v1       #port:I
    :cond_30
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    .line 424
    .end local v1           #port:I
    :cond_37
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/https/HttpsURLConnection$HttpsEngine;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, file:Ljava/lang/String;
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_47

    .line 426
    :cond_45
    const-string v0, "/"

    :cond_47
    move-object v2, v0

    .line 428
    goto :goto_2f

    .line 430
    .end local v0           #file:Ljava/lang/String;
    :cond_49
    invoke-super {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->requestString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2f
.end method
