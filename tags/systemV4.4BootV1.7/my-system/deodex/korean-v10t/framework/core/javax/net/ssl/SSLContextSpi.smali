.class public abstract Ljavax/net/ssl/SSLContextSpi;
.super Ljava/lang/Object;
.source "SSLContextSpi.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method protected abstract engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
.end method

.method protected abstract engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
.end method

.method protected abstract engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
.end method

.method protected abstract engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
.end method

.method protected abstract engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
.end method

.method protected abstract engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
.end method

.method protected abstract engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation
.end method
