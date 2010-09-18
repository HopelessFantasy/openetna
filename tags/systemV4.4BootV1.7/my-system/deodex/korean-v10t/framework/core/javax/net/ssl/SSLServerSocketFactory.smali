.class public abstract Ljavax/net/ssl/SSLServerSocketFactory;
.super Ljavax/net/ServerSocketFactory;
.source "SSLServerSocketFactory.java"


# static fields
.field private static defaultName:Ljava/lang/String;

.field private static defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljavax/net/ServerSocketFactory;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    sput-object p0, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Ljavax/net/ServerSocketFactory;)Ljavax/net/ServerSocketFactory;
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    sput-object p0, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    return-object p0
.end method

.method public static getDefault()Ljavax/net/ServerSocketFactory;
    .registers 3

    .prologue
    .line 56
    sget-object v1, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    if-eqz v1, :cond_7

    .line 57
    sget-object v1, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 91
    :goto_6
    return-object v1

    .line 59
    :cond_7
    sget-object v1, Ljavax/net/ssl/SSLServerSocketFactory;->defaultName:Ljava/lang/String;

    if-nez v1, :cond_13

    .line 60
    new-instance v1, Ljavax/net/ssl/SSLServerSocketFactory$1;

    invoke-direct {v1}, Ljavax/net/ssl/SSLServerSocketFactory$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 80
    :cond_13
    sget-object v1, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    if-nez v1, :cond_23

    .line 82
    invoke-static {}, Ljavax/net/ssl/DefaultSSLContext;->getContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 83
    .local v0, context:Ljavax/net/ssl/SSLContext;
    if-eqz v0, :cond_23

    .line 84
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v1

    sput-object v1, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 87
    .end local v0           #context:Ljavax/net/ssl/SSLContext;
    :cond_23
    sget-object v1, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    if-nez v1, :cond_30

    .line 89
    new-instance v1, Ljavax/net/ssl/DefaultSSLServerSocketFactory;

    const-string v2, "No ServerSocketFactory installed"

    invoke-direct {v1, v2}, Ljavax/net/ssl/DefaultSSLServerSocketFactory;-><init>(Ljava/lang/String;)V

    sput-object v1, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    .line 91
    :cond_30
    sget-object v1, Ljavax/net/ssl/SSLServerSocketFactory;->defaultServerSocketFactory:Ljavax/net/ServerSocketFactory;

    goto :goto_6
.end method


# virtual methods
.method public abstract getDefaultCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method
