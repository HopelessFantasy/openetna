.class public Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;
.super Ljava/lang/Object;
.source "HttpConfiguration.java"


# instance fields
.field private hostName:Ljava/lang/String;

.field private hostPort:I

.field private proxy:Ljava/net/Proxy;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .registers 4
    .parameter "uri"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->uri:Ljava/net/URI;

    .line 51
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    .line 53
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    .line 54
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 55
    const/16 v0, 0x1bb

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    .line 60
    :cond_26
    :goto_26
    return-void

    .line 57
    :cond_27
    const/16 v0, 0x50

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    goto :goto_26
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/net/Proxy;)V
    .registers 9
    .parameter "uri"
    .parameter "proxy"

    .prologue
    const-string v5, "K0316"

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->uri:Ljava/net/URI;

    .line 64
    iput-object p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->proxy:Ljava/net/Proxy;

    .line 65
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_53

    .line 66
    invoke-virtual {p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 67
    .local v2, proxyAddr:Ljava/net/SocketAddress;
    instance-of v3, v2, Ljava/net/InetSocketAddress;

    if-nez v3, :cond_29

    .line 68
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "K0316"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v5, v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    :cond_29
    move-object v0, v2

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    .line 72
    .local v1, iProxyAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostName:Ljava/lang/String;

    .line 73
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    .line 86
    .end local v1           #iProxyAddr:Ljava/net/InetSocketAddress;
    .end local v2           #proxyAddr:Ljava/net/SocketAddress;
    :cond_39
    :goto_39
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->uri:Ljava/net/URI;

    .line 87
    invoke-virtual {p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 88
    .restart local v2       #proxyAddr:Ljava/net/SocketAddress;
    instance-of v3, v2, Ljava/net/InetSocketAddress;

    if-nez v3, :cond_7a

    .line 89
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "K0316"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v5, v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    .end local v2           #proxyAddr:Ljava/net/SocketAddress;
    :cond_53
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostName:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    .line 78
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_39

    .line 79
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 80
    const/16 v3, 0x1bb

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    goto :goto_39

    .line 82
    :cond_75
    const/16 v3, 0x50

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    goto :goto_39

    .line 92
    .restart local v2       #proxyAddr:Ljava/net/SocketAddress;
    :cond_7a
    move-object v0, v2

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    .line 93
    .restart local v1       #iProxyAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostName:Ljava/lang/String;

    .line 94
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    .line 95
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    .line 128
    instance-of v2, p1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;

    if-nez v2, :cond_7

    move v2, v4

    .line 135
    :goto_6
    return v2

    .line 131
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;

    move-object v1, v0

    .line 132
    .local v1, config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;
    iget-object v2, v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->proxy:Ljava/net/Proxy;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->proxy:Ljava/net/Proxy;

    if-eqz v2, :cond_2b

    .line 133
    iget-object v2, v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->proxy:Ljava/net/Proxy;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->proxy:Ljava/net/Proxy;

    invoke-virtual {v2, v3}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->uri:Ljava/net/URI;

    iget-object v3, v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->uri:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    goto :goto_6

    :cond_29
    move v2, v4

    goto :goto_6

    .line 135
    :cond_2b
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->uri:Ljava/net/URI;

    iget-object v3, v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->uri:Ljava/net/URI;

    invoke-virtual {v2, v3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_6
.end method

.method public getHostName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getHostPort()I
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->hostPort:I

    return v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    return v0
.end method

.method public usesProxy()Z
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
