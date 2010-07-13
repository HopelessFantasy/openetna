.class Ljavax/net/ssl/ContextImpl;
.super Ljavax/net/ssl/SSLContext;
.source "ContextImpl.java"


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .parameter "contextSpi"
    .parameter "provider"
    .parameter "protocol"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Ljavax/net/ssl/SSLContext;-><init>(Ljavax/net/ssl/SSLContextSpi;Ljava/security/Provider;Ljava/lang/String;)V

    .line 32
    return-void
.end method
