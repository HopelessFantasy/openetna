.class public Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;
.super Ljavax/net/ssl/SSLContextSpi;
.source "SSLContextImpl.java"


# instance fields
.field private clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

.field private serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

.field protected sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    if-nez v0, :cond_c

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initiallized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_c
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V

    return-object v0
.end method

.method public engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .registers 5
    .parameter "host"
    .parameter "port"

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    if-nez v0, :cond_c

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initiallized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_c
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;-><init>(Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V

    return-object v0
.end method

.method public bridge synthetic engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->engineGetClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public engineGetClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    return-object v0
.end method

.method public bridge synthetic engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->engineGetServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public engineGetServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    return-object v0
.end method

.method public engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    if-nez v0, :cond_c

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initiallized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_c
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketFactoryImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketFactoryImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V

    return-object v0
.end method

.method public engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    if-nez v0, :cond_c

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initiallized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_c
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketFactoryImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V

    return-object v0
.end method

.method public engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .registers 10
    .parameter "kms"
    .parameter "tms"
    .parameter "sr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;)V

    .line 67
    return-void
.end method

.method public engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;)V
    .registers 12
    .parameter "kms"
    .parameter "tms"
    .parameter "sr"
    .parameter "clientCache"
    .parameter "serverCache"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    .line 88
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    .line 89
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->serverSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    .line 90
    return-void
.end method
