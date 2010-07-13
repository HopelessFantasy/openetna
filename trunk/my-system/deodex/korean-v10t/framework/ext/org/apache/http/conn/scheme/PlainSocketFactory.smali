.class public final Lorg/apache/http/conn/scheme/PlainSocketFactory;
.super Ljava/lang/Object;
.source "PlainSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/SocketFactory;


# static fields
.field private static final DEFAULT_FACTORY:Lorg/apache/http/conn/scheme/PlainSocketFactory;


# instance fields
.field private final nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    sput-object v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;->DEFAULT_FACTORY:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>(Lorg/apache/http/conn/scheme/HostNameResolver;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/HostNameResolver;)V
    .registers 2
    .parameter "nameResolver"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/http/conn/scheme/PlainSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 69
    return-void
.end method

.method public static getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;->DEFAULT_FACTORY:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .registers 12
    .parameter "sock"
    .parameter "host"
    .parameter "port"
    .parameter "localAddress"
    .parameter "localPort"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    if-nez p2, :cond_a

    .line 88
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Target host may not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    :cond_a
    if-nez p6, :cond_14

    .line 91
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Parameters may not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    :cond_14
    if-nez p1, :cond_1a

    .line 95
    invoke-virtual {p0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    .line 97
    :cond_1a
    if-nez p4, :cond_1e

    if-lez p5, :cond_29

    .line 100
    :cond_1e
    if-gez p5, :cond_21

    .line 101
    const/4 p5, 0x0

    .line 103
    :cond_21
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 105
    .local v0, isa:Ljava/net/InetSocketAddress;
    invoke-virtual {p1, v0}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 108
    .end local v0           #isa:Ljava/net/InetSocketAddress;
    :cond_29
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v2

    .line 111
    .local v2, timeout:I
    iget-object v3, p0, Lorg/apache/http/conn/scheme/PlainSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    if-eqz v3, :cond_40

    .line 112
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lorg/apache/http/conn/scheme/PlainSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    invoke-interface {v3, p2}, Lorg/apache/http/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v1, v3, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 117
    .local v1, remoteAddress:Ljava/net/InetSocketAddress;
    :goto_3c
    invoke-virtual {p1, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 119
    return-object p1

    .line 114
    .end local v1           #remoteAddress:Ljava/net/InetSocketAddress;
    :cond_40
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .restart local v1       #remoteAddress:Ljava/net/InetSocketAddress;
    goto :goto_3c
.end method

.method public createSocket()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 78
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 169
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 179
    const-class v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .registers 4
    .parameter "sock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 138
    if-nez p1, :cond_a

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/net/Socket;

    if-eq v0, v1, :cond_1a

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket not created by this factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1a
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_28
    const/4 v0, 0x0

    return v0
.end method
