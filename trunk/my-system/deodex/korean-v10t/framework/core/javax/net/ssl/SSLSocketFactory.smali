.class public abstract Ljavax/net/ssl/SSLSocketFactory;
.super Ljavax/net/SocketFactory;
.source "SSLSocketFactory.java"


# static fields
.field private static defaultName:Ljava/lang/String;

.field private static defaultSocketFactory:Ljavax/net/SocketFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljavax/net/SocketFactory;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Ljavax/net/ssl/SSLSocketFactory;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    sput-object p0, Ljavax/net/ssl/SSLSocketFactory;->defaultName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Ljavax/net/SocketFactory;)Ljavax/net/SocketFactory;
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    sput-object p0, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public static getDefault()Ljavax/net/SocketFactory;
    .registers 5

    .prologue
    const-string v1, "Using factory "

    const-string v1, "SSLSocketFactory"

    .line 61
    const-class v1, Ljavax/net/ssl/SSLSocketFactory;

    monitor-enter v1

    .line 62
    :try_start_7
    sget-object v2, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    if-eqz v2, :cond_2a

    .line 64
    const-string v2, "SSLSocketFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using factory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljavax/net/ssl/SSLSocketFactory;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v2, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    monitor-exit v1

    move-object v1, v2

    .line 103
    :goto_29
    return-object v1

    .line 68
    :cond_2a
    sget-object v2, Ljavax/net/ssl/SSLSocketFactory;->defaultName:Ljava/lang/String;

    if-nez v2, :cond_36

    .line 69
    new-instance v2, Ljavax/net/ssl/SSLSocketFactory$1;

    invoke-direct {v2}, Ljavax/net/ssl/SSLSocketFactory$1;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 89
    :cond_36
    sget-object v2, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    if-nez v2, :cond_46

    .line 91
    invoke-static {}, Ljavax/net/ssl/DefaultSSLContext;->getContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 92
    .local v0, context:Ljavax/net/ssl/SSLContext;
    if-eqz v0, :cond_46

    .line 93
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    sput-object v2, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    .line 96
    .end local v0           #context:Ljavax/net/ssl/SSLContext;
    :cond_46
    sget-object v2, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    if-nez v2, :cond_53

    .line 98
    new-instance v2, Ljavax/net/ssl/DefaultSSLSocketFactory;

    const-string v3, "No SSLSocketFactory installed"

    invoke-direct {v2, v3}, Ljavax/net/ssl/DefaultSSLSocketFactory;-><init>(Ljava/lang/String;)V

    sput-object v2, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    .line 101
    :cond_53
    const-string v2, "SSLSocketFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using factory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljavax/net/ssl/SSLSocketFactory;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object v2, Ljavax/net/ssl/SSLSocketFactory;->defaultSocketFactory:Ljavax/net/SocketFactory;

    monitor-exit v1

    move-object v1, v2

    goto :goto_29

    .line 104
    :catchall_72
    move-exception v2

    monitor-exit v1
    :try_end_74
    .catchall {:try_start_7 .. :try_end_74} :catchall_72

    throw v2
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 110
    invoke-static {p0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 111
    return-void
.end method


# virtual methods
.method public abstract createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getDefaultCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method
