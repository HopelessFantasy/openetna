.class final Lorg/apache/harmony/luni/net/GenericIPMreq;
.super Ljava/lang/Object;
.source "GenericIPMreq.java"


# instance fields
.field private interfaceAddr:Ljava/net/InetAddress;

.field private interfaceIdx:I

.field private isIPV6Address:Z

.field private multiaddr:Ljava/net/InetAddress;


# direct methods
.method constructor <init>(Ljava/net/InetAddress;)V
    .registers 3
    .parameter "addr"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->multiaddr:Ljava/net/InetAddress;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->interfaceAddr:Ljava/net/InetAddress;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->interfaceIdx:I

    .line 54
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/GenericIPMreq;->init()V

    .line 55
    return-void
.end method

.method constructor <init>(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)V
    .registers 8
    .parameter "addr"
    .parameter "netInterface"

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->multiaddr:Ljava/net/InetAddress;

    .line 66
    if-eqz p2, :cond_2c

    .line 76
    iput-object v4, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->interfaceAddr:Ljava/net/InetAddress;

    .line 77
    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 78
    .local v2, theAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    instance-of v3, p1, Ljava/net/Inet4Address;

    if-eqz v3, :cond_31

    if-eqz v2, :cond_31

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, found:Z
    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v3, 0x1

    if-eq v0, v3, :cond_31

    .line 81
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 82
    .local v1, theAddress:Ljava/net/InetAddress;
    instance-of v3, v1, Ljava/net/Inet4Address;

    if-eqz v3, :cond_15

    .line 83
    iput-object v1, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->interfaceAddr:Ljava/net/InetAddress;

    .line 84
    const/4 v0, 0x1

    goto :goto_15

    .line 93
    .end local v0           #found:Z
    .end local v1           #theAddress:Ljava/net/InetAddress;
    .end local v2           #theAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2c
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->interfaceIdx:I

    .line 94
    iput-object v4, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->interfaceAddr:Ljava/net/InetAddress;

    .line 96
    :cond_31
    invoke-direct {p0}, Lorg/apache/harmony/luni/net/GenericIPMreq;->init()V

    .line 97
    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->multiaddr:Ljava/net/InetAddress;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->multiaddr:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_b
    iput-boolean v0, p0, Lorg/apache/harmony/luni/net/GenericIPMreq;->isIPV6Address:Z

    .line 108
    return-void

    .line 107
    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method
