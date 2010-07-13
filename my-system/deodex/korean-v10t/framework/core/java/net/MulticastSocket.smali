.class public Ljava/net/MulticastSocket;
.super Ljava/net/DatagramSocket;
.source "MulticastSocket.java"


# static fields
.field static final SO_REUSEPORT:I = 0x200


# instance fields
.field private interfaceSet:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/net/DatagramSocket;-><init>()V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "aPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;-><init>(I)V

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .registers 3
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    .line 599
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    .line 600
    return-void
.end method


# virtual methods
.method declared-synchronized createSocket(ILjava/net/InetAddress;)V
    .registers 5
    .parameter "aPort"
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 570
    monitor-enter p0

    :try_start_1
    sget-object v1, Ljava/net/MulticastSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v1, :cond_1c

    sget-object v1, Ljava/net/MulticastSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    invoke-interface {v1}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    :goto_b
    iput-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    .line 572
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->create()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_27

    .line 576
    :try_start_12
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    .line 577
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/MulticastSocket;->isBound:Z
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_27
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_1a} :catch_21

    .line 582
    monitor-exit p0

    return-void

    .line 570
    :cond_1c
    :try_start_1c
    invoke-static {}, Lorg/apache/harmony/luni/net/SocketImplProvider;->getMulticastSocketImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    goto :goto_b

    .line 578
    :catch_21
    move-exception v1

    move-object v0, v1

    .line 579
    .local v0, e:Ljava/net/SocketException;
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->close()V

    .line 580
    throw v0
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_27

    .line 570
    .end local v0           #e:Ljava/net/SocketException;
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getInterface()Ljava/net/InetAddress;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 79
    iget-object v4, p0, Ljava/net/MulticastSocket;->interfaceSet:Ljava/net/InetAddress;

    if-nez v4, :cond_38

    .line 80
    iget-object v4, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 82
    .local v1, ipvXaddress:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 85
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v3

    .line 86
    .local v3, theInterface:Ljava/net/NetworkInterface;
    if-eqz v3, :cond_36

    .line 87
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    .line 89
    .local v0, addresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    if-eqz v0, :cond_36

    .line 90
    :cond_24
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 91
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 92
    .local v2, nextAddress:Ljava/net/InetAddress;
    instance-of v4, v2, Ljava/net/Inet6Address;

    if-eqz v4, :cond_24

    move-object v4, v2

    .line 101
    .end local v0           #addresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v1           #ipvXaddress:Ljava/net/InetAddress;
    .end local v2           #nextAddress:Ljava/net/InetAddress;
    .end local v3           #theInterface:Ljava/net/NetworkInterface;
    :goto_35
    return-object v4

    .restart local v1       #ipvXaddress:Ljava/net/InetAddress;
    :cond_36
    move-object v4, v1

    .line 99
    goto :goto_35

    .line 101
    .end local v1           #ipvXaddress:Ljava/net/InetAddress;
    :cond_38
    iget-object v4, p0, Ljava/net/MulticastSocket;->interfaceSet:Ljava/net/InetAddress;

    goto :goto_35
.end method

.method public getLoopbackMode()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 612
    invoke-virtual {p0, v2}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 613
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    move v0, v2

    goto :goto_15
.end method

.method public getNetworkInterface()Ljava/net/NetworkInterface;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 115
    invoke-virtual {p0, v8}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 119
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 121
    .local v4, theIndex:Ljava/lang/Integer;
    :try_start_a
    iget-object v6, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v7, 0x1f

    invoke-virtual {v6, v7}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/Integer;

    move-object v4, v0
    :try_end_16
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_16} :catch_6f

    .line 126
    :goto_16
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_38

    .line 127
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    .line 129
    .local v5, theInterfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_20
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_38

    .line 130
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 131
    .local v1, nextInterface:Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_20

    move-object v6, v1

    .line 160
    .end local v1           #nextInterface:Ljava/net/NetworkInterface;
    .end local v5           #theInterfaces:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_37
    return-object v6

    .line 138
    :cond_38
    iget-object v6, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 140
    .local v2, theAddress:Ljava/net/InetAddress;
    if-eqz v2, :cond_6d

    .line 141
    invoke-virtual {v2}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v6

    if-nez v6, :cond_4f

    .line 142
    invoke-static {v2}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v6

    goto :goto_37

    .line 148
    :cond_4f
    new-array v3, v10, [Ljava/net/InetAddress;

    .line 149
    .local v3, theAddresses:[Ljava/net/InetAddress;
    invoke-static {}, Ljava/net/Socket;->preferIPv4Stack()Z

    move-result v6

    if-nez v6, :cond_68

    invoke-static {}, Ljava/net/InetAddress;->preferIPv6Addresses()Z

    move-result v6

    if-ne v6, v10, :cond_68

    .line 151
    sget-object v6, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    aput-object v6, v3, v8

    .line 155
    :goto_61
    new-instance v6, Ljava/net/NetworkInterface;

    const/4 v7, -0x1

    invoke-direct {v6, v9, v9, v3, v7}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/net/InetAddress;I)V

    goto :goto_37

    .line 153
    :cond_68
    sget-object v6, Ljava/net/InetAddress;->ANY:Ljava/net/InetAddress;

    aput-object v6, v3, v8

    goto :goto_61

    .end local v3           #theAddresses:[Ljava/net/InetAddress;
    :cond_6d
    move-object v6, v9

    .line 160
    goto :goto_37

    .line 122
    .end local v2           #theAddress:Ljava/net/InetAddress;
    :catch_6f
    move-exception v6

    goto :goto_16
.end method

.method public getTTL()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 189
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTTL()B

    move-result v0

    return v0
.end method

.method public getTimeToLive()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 173
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTimeToLive()I

    move-result v0

    return v0
.end method

.method isMulticastSocket()Z
    .registers 2

    .prologue
    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public joinGroup(Ljava/net/InetAddress;)V
    .registers 5
    .parameter "groupAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 210
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_16

    .line 211
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K0039"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_16
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 214
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1f

    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 217
    :cond_1f
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocketImpl;->join(Ljava/net/InetAddress;)V

    .line 218
    return-void
.end method

.method public joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 9
    .parameter "groupAddress"
    .parameter "netInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 241
    if-nez p1, :cond_12

    .line 242
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "K0318"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 245
    :cond_12
    if-eqz p2, :cond_26

    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getFirstAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_26

    .line 247
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "K0335"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 250
    :cond_26
    instance-of v3, p1, Ljava/net/InetSocketAddress;

    if-nez v3, :cond_3a

    .line 251
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "K0316"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 255
    :cond_3a
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 257
    .local v1, groupAddr:Ljava/net/InetAddress;
    if-nez v1, :cond_50

    .line 258
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "K0331"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 261
    :cond_50
    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-nez v3, :cond_62

    .line 262
    new-instance v3, Ljava/io/IOException;

    const-string v4, "K0039"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 265
    :cond_62
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 266
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_6b

    .line 267
    invoke-virtual {v2, v1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 269
    :cond_6b
    iget-object v3, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v3, p1, p2}, Ljava/net/DatagramSocketImpl;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 270
    return-void
.end method

.method public leaveGroup(Ljava/net/InetAddress;)V
    .registers 5
    .parameter "groupAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 285
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_16

    .line 286
    new-instance v1, Ljava/io/IOException;

    const-string v2, "K003a"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_16
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 289
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_1f

    .line 290
    invoke-virtual {v0, p1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 292
    :cond_1f
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1, p1}, Ljava/net/DatagramSocketImpl;->leave(Ljava/net/InetAddress;)V

    .line 293
    return-void
.end method

.method public leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .registers 9
    .parameter "groupAddress"
    .parameter "netInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 314
    if-nez p1, :cond_12

    .line 315
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "K0318"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 318
    :cond_12
    if-eqz p2, :cond_26

    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getFirstAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_26

    .line 320
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "K0335"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 323
    :cond_26
    instance-of v3, p1, Ljava/net/InetSocketAddress;

    if-nez v3, :cond_3a

    .line 324
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "K0316"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 328
    :cond_3a
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 330
    .local v1, groupAddr:Ljava/net/InetAddress;
    if-nez v1, :cond_50

    .line 331
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "K0331"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 334
    :cond_50
    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-nez v3, :cond_62

    .line 335
    new-instance v3, Ljava/io/IOException;

    const-string v4, "K003a"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 337
    :cond_62
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 338
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_6b

    .line 339
    invoke-virtual {v2, v1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 341
    :cond_6b
    iget-object v3, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v3, p1, p2}, Ljava/net/DatagramSocketImpl;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    .line 342
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;B)V
    .registers 8
    .parameter "pack"
    .parameter "ttl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 360
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 361
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 362
    .local v1, packAddr:Ljava/net/InetAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 363
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_17

    .line 364
    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 365
    invoke-virtual {v2, v1, p2}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;B)V

    .line 370
    :cond_17
    :goto_17
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getTimeToLive()I

    move-result v0

    .line 371
    .local v0, currTTL:I
    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_43

    int-to-byte v3, v0

    if-eq v3, p2, :cond_43

    .line 373
    and-int/lit16 v3, p2, 0xff

    :try_start_26
    invoke-virtual {p0, v3}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 374
    iget-object v3, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v3, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_3e

    .line 376
    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    .line 381
    :goto_31
    return-void

    .line 367
    .end local v0           #currTTL:I
    :cond_32
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_17

    .line 376
    .restart local v0       #currTTL:I
    :catchall_3e
    move-exception v3

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    throw v3

    .line 379
    :cond_43
    iget-object v3, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v3, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V

    goto :goto_31
.end method

.method public setInterface(Ljava/net/InetAddress;)V
    .registers 6
    .parameter "addr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    const/4 v1, 0x0

    .line 396
    invoke-virtual {p0, v1}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 397
    if-nez p1, :cond_e

    .line 398
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 400
    :cond_e
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 401
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    sget-object v2, Ljava/net/InetAddress;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v1, v3, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 415
    :cond_1b
    :goto_1b
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 416
    .local v0, theInterface:Ljava/net/NetworkInterface;
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v1

    if-eqz v1, :cond_43

    .line 418
    :try_start_27
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v2, 0x1f

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_36
    .catch Ljava/net/SocketException; {:try_start_27 .. :try_end_36} :catch_68

    .line 433
    :cond_36
    :goto_36
    return-void

    .line 402
    .end local v0           #theInterface:Ljava/net/NetworkInterface;
    :cond_37
    instance-of v1, p1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_1b

    .line 403
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1, v3, p1}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 406
    iput-object p1, p0, Ljava/net/MulticastSocket;->interfaceSet:Ljava/net/InetAddress;

    goto :goto_1b

    .line 423
    .restart local v0       #theInterface:Ljava/net/NetworkInterface;
    :cond_43
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 425
    :try_start_49
    iget-object v1, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_55
    .catch Ljava/net/SocketException; {:try_start_49 .. :try_end_55} :catch_56

    goto :goto_36

    .line 427
    :catch_56
    move-exception v1

    goto :goto_36

    .line 430
    :cond_58
    instance-of v1, p1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_36

    .line 431
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "K0338"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 420
    :catch_68
    move-exception v1

    goto :goto_36
.end method

.method public setLoopbackMode(Z)V
    .registers 5
    .parameter "loop"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 628
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 629
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x12

    if-eqz p1, :cond_10

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_c
    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 631
    return-void

    .line 629
    :cond_10
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_c
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)V
    .registers 11
    .parameter "netInterface"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x10

    const-string v8, "K0335"

    .line 449
    invoke-virtual {p0, v4}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 451
    if-nez p1, :cond_16

    .line 453
    new-instance v4, Ljava/net/SocketException;

    const-string v5, "K0334"

    invoke-static {v5}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 456
    :cond_16
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getFirstAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 457
    .local v0, firstAddress:Ljava/net/InetAddress;
    if-nez v0, :cond_28

    .line 459
    new-instance v4, Ljava/net/SocketException;

    const-string v5, "K0335"

    invoke-static {v8}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 462
    :cond_28
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_42

    .line 465
    iget-object v4, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    sget-object v5, Ljava/net/InetAddress;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v4, v7, v5}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 471
    :try_start_36
    iget-object v4, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v5, 0x1f

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_42
    .catch Ljava/net/SocketException; {:try_start_36 .. :try_end_42} :catch_94

    .line 484
    :cond_42
    :goto_42
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 485
    .local v3, theAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    const/4 v1, 0x0

    .line 486
    .local v1, found:Z
    const/4 v0, 0x0

    .line 487
    :cond_48
    :goto_48
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_5e

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5e

    .line 488
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 489
    .local v2, theAddress:Ljava/net/InetAddress;
    instance-of v4, v2, Ljava/net/Inet4Address;

    if-eqz v4, :cond_48

    .line 490
    move-object v0, v2

    .line 491
    const/4 v1, 0x1

    goto :goto_48

    .line 494
    .end local v2           #theAddress:Ljava/net/InetAddress;
    :cond_5e
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    if-nez v4, :cond_7b

    .line 498
    if-eqz v0, :cond_6f

    .line 499
    iget-object v4, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v4, v7, v0}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 526
    :goto_6b
    const/4 v4, 0x0

    iput-object v4, p0, Ljava/net/MulticastSocket;->interfaceSet:Ljava/net/InetAddress;

    .line 527
    return-void

    .line 506
    :cond_6f
    new-instance v4, Ljava/net/SocketException;

    const-string v5, "K0335"

    invoke-static {v8}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 511
    :cond_7b
    if-eqz v0, :cond_82

    .line 512
    iget-object v4, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v4, v7, v0}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    .line 519
    :cond_82
    :try_start_82
    iget-object v4, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v5, 0x1f

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_91
    .catch Ljava/net/SocketException; {:try_start_82 .. :try_end_91} :catch_92

    goto :goto_6b

    .line 521
    :catch_92
    move-exception v4

    goto :goto_6b

    .line 473
    .end local v1           #found:Z
    .end local v3           #theAddresses:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :catch_94
    move-exception v4

    goto :goto_42
.end method

.method public setTTL(B)V
    .registers 3
    .parameter "ttl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 563
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 564
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    .line 565
    return-void
.end method

.method public setTimeToLive(I)V
    .registers 4
    .parameter "ttl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->checkClosedAndBind(Z)V

    .line 542
    if-ltz p1, :cond_a

    const/16 v0, 0xff

    if-le p1, v0, :cond_16

    .line 543
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K003c"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_16
    iget-object v0, p0, Ljava/net/MulticastSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTimeToLive(I)V

    .line 546
    return-void
.end method
