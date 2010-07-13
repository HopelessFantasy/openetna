.class public Ljava/net/InetSocketAddress;
.super Ljava/net/SocketAddress;
.source "InetSocketAddress.java"


# static fields
.field private static final serialVersionUID:J = 0x467194616ff9aa45L


# instance fields
.field private addr:Ljava/net/InetAddress;

.field private hostname:Ljava/lang/String;

.field private port:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "port"

    .prologue
    .line 49
    const/4 v0, 0x0

    check-cast v0, Ljava/net/InetAddress;

    invoke-direct {p0, v0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "host"
    .parameter "port"

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;IZ)V

    .line 95
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IZ)V
    .registers 7
    .parameter "host"
    .parameter "port"
    .parameter "needResolved"

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 102
    if-eqz p1, :cond_d

    if-ltz p2, :cond_d

    const v1, 0xffff

    if-le p2, v1, :cond_13

    .line 103
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 105
    :cond_13
    iput-object p1, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    .line 106
    iput p2, p0, Ljava/net/InetSocketAddress;->port:I

    .line 107
    if-eqz p3, :cond_2e

    .line 109
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 110
    .local v0, smgr:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_22

    .line 111
    invoke-virtual {v0, p1, p2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 115
    :cond_22
    :try_start_22
    iget-object v1, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    .line 116
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;
    :try_end_2d
    .catch Ljava/net/UnknownHostException; {:try_start_22 .. :try_end_2d} :catch_31

    .line 123
    .end local v0           #smgr:Ljava/lang/SecurityManager;
    :goto_2d
    return-void

    .line 121
    :cond_2e
    iput-object v2, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    goto :goto_2d

    .line 117
    .restart local v0       #smgr:Ljava/lang/SecurityManager;
    :catch_31
    move-exception v1

    goto :goto_2d
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .registers 4
    .parameter "address"
    .parameter "port"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 65
    if-ltz p2, :cond_a

    const v0, 0xffff

    if-le p2, v0, :cond_10

    .line 66
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 68
    :cond_10
    if-nez p1, :cond_21

    .line 69
    sget-object v0, Ljava/net/InetAddress;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    .line 73
    :goto_16
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    .line 74
    iput p2, p0, Ljava/net/InetSocketAddress;->port:I

    .line 75
    return-void

    .line 71
    :cond_21
    iput-object p1, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    goto :goto_16
.end method

.method public static createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    .registers 4
    .parameter "host"
    .parameter "port"

    .prologue
    .line 141
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;IZ)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 261
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "socketAddr"

    .prologue
    const/4 v4, 0x0

    .line 216
    if-ne p0, p1, :cond_5

    .line 217
    const/4 v2, 0x1

    .line 241
    :goto_4
    return v2

    .line 219
    :cond_5
    instance-of v2, p1, Ljava/net/InetSocketAddress;

    if-nez v2, :cond_b

    move v2, v4

    .line 220
    goto :goto_4

    .line 222
    :cond_b
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    .line 225
    .local v1, iSockAddr:Ljava/net/InetSocketAddress;
    iget v2, p0, Ljava/net/InetSocketAddress;->port:I

    iget v3, v1, Ljava/net/InetSocketAddress;->port:I

    if-eq v2, v3, :cond_17

    move v2, v4

    .line 226
    goto :goto_4

    .line 231
    :cond_17
    iget-object v2, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-nez v2, :cond_28

    iget-object v2, v1, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-nez v2, :cond_28

    .line 232
    iget-object v2, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    iget-object v3, v1, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4

    .line 236
    :cond_28
    iget-object v2, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-nez v2, :cond_2e

    move v2, v4

    .line 239
    goto :goto_4

    .line 241
    :cond_2e
    iget-object v2, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    iget-object v3, v1, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4
.end method

.method public final getAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getHostName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    goto :goto_a
.end method

.method public final getPort()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Ljava/net/InetSocketAddress;->port:I

    return v0
.end method

.method public final hashCode()I
    .registers 3

    .prologue
    .line 252
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-nez v0, :cond_e

    .line 253
    iget-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/net/InetSocketAddress;->port:I

    add-int/2addr v0, v1

    .line 255
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/net/InetSocketAddress;->port:I

    add-int/2addr v0, v1

    goto :goto_d
.end method

.method public final isUnresolved()Z
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 195
    iget-object v1, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-eqz v1, :cond_24

    .line 196
    iget-object v1, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, host:Ljava/lang/String;
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/net/InetSocketAddress;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 198
    .end local v0           #host:Ljava/lang/String;
    :cond_24
    iget-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    .restart local v0       #host:Ljava/lang/String;
    goto :goto_a
.end method
