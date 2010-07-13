.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "OpenSSLSocketFactoryImpl.java"


# instance fields
.field private instantiationException:Ljava/io/IOException;

.field private sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 35
    :try_start_3
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getDefault()Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;
    :try_end_9
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_9} :catch_a

    .line 41
    :goto_9
    return-void

    .line 36
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 37
    .local v0, e:Ljava/security/KeyManagementException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Delayed instantiation exception:"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    .line 39
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_9
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V
    .registers 2
    .parameter "sslParameters"

    .prologue
    .line 44
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    .line 46
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_7

    .line 59
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0

    .line 61
    :cond_7
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 5
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;-><init>(Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 11
    .parameter "host"
    .parameter "port"
    .parameter "localHost"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 5
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 11
    .parameter "address"
    .parameter "port"
    .parameter "localAddress"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 11
    .parameter "s"
    .parameter "host"
    .parameter "port"
    .parameter "autoClose"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImplWrapper;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImplWrapper;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativegetsupportedciphersuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativegetsupportedciphersuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
