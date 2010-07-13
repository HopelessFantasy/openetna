.class Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;
.super Ljava/net/DatagramSocket;
.source "DatagramChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/nio/internal/DatagramChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatagramSocketAdapter"
.end annotation


# instance fields
.field private channelImpl:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;


# direct methods
.method constructor <init>(Ljava/net/DatagramSocketImpl;Lorg/apache/harmony/nio/internal/DatagramChannelImpl;)V
    .registers 3
    .parameter "socketimpl"
    .parameter "channelImpl"

    .prologue
    .line 788
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/DatagramSocketImpl;)V

    .line 789
    iput-object p2, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;

    .line 790
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .registers 4
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 851
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 852
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 854
    :cond_e
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 855
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isBound:Z

    .line 856
    return-void
.end method

.method public close()V
    .registers 3

    .prologue
    .line 885
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;

    monitor-enter v0

    .line 886
    :try_start_3
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isOpen()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    move-result v1

    if-eqz v1, :cond_10

    .line 888
    :try_start_b
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->close()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_18

    .line 893
    :cond_10
    :goto_10
    :try_start_10
    invoke-super {p0}, Ljava/net/DatagramSocket;->close()V

    .line 894
    monitor-exit v0

    .line 895
    return-void

    .line 894
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_15

    throw v1

    .line 889
    :catch_18
    move-exception v1

    goto :goto_10
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 903
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->disconnect()Ljava/nio/channels/DatagramChannel;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_9

    .line 907
    :goto_5
    invoke-super {p0}, Ljava/net/DatagramSocket;->disconnect()V

    .line 908
    return-void

    .line 904
    :catch_9
    move-exception v0

    goto :goto_5
.end method

.method public getChannel()Ljava/nio/channels/DatagramChannel;
    .registers 2

    .prologue
    .line 797
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 821
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;

    iget-object v0, v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_8

    .line 822
    const/4 v0, 0x0

    .line 824
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;

    iget-object v0, v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_7
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 832
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 840
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;

    iget-object v0, v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_8

    .line 841
    const/4 v0, -0x1

    .line 843
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;

    iget-object v0, v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_7
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 805
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;

    iget-boolean v0, v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isBound:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 813
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isConnected()Z

    move-result v0

    return v0
.end method

.method public receive(Ljava/net/DatagramPacket;)V
    .registers 3
    .parameter "packet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 863
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_e

    .line 864
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v0

    .line 866
    :cond_e
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 867
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .registers 3
    .parameter "packet"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 874
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_e

    .line 875
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v0

    .line 877
    :cond_e
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 878
    return-void
.end method
