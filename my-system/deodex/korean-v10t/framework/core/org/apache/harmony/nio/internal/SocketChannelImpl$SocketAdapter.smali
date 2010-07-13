.class Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;
.super Ljava/net/Socket;
.source "SocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/nio/internal/SocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketAdapter"
.end annotation


# instance fields
.field channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

.field socketImpl:Ljava/net/SocketImpl;


# direct methods
.method constructor <init>(Ljava/net/SocketImpl;Lorg/apache/harmony/nio/internal/SocketChannelImpl;)V
    .registers 3
    .parameter "socketimpl"
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 714
    invoke-direct {p0, p1}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    .line 715
    iput-object p1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/SocketImpl;

    .line 716
    iput-object p2, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    .line 717
    return-void
.end method

.method private checkOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 940
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 942
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "nio.00"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 944
    :cond_12
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .registers 4
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 787
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 788
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 790
    :cond_f
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    iget v0, v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I

    if-ne v1, v0, :cond_1b

    .line 791
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v0

    .line 793
    :cond_1b
    invoke-super {p0, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 797
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    iput-boolean v1, v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBound:Z

    .line 799
    return-void
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 807
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    monitor-enter v0

    .line 808
    :try_start_3
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 809
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->close()V

    .line 813
    :goto_10
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    const/4 v2, 0x3

    iput v2, v1, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I

    .line 814
    monitor-exit v0

    .line 815
    return-void

    .line 811
    :cond_17
    invoke-super {p0}, Ljava/net/Socket;->close()V

    goto :goto_10

    .line 814
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .registers 7
    .parameter "remoteAddr"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 766
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_e

    .line 767
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v0

    .line 769
    :cond_e
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 770
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 772
    :cond_1a
    invoke-super {p0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 773
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    sget-object v1, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v2, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    iget-object v2, v2, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketLocalAddress(Ljava/io/FileDescriptor;Z)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    .line 775
    invoke-super {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 776
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->setConnected()V

    .line 777
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-super {p0}, Ljava/net/Socket;->isBound()Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBound:Z

    .line 779
    :cond_3f
    return-void
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .prologue
    .line 725
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    return-object v0
.end method

.method public getImpl()Ljava/net/SocketImpl;
    .registers 2

    .prologue
    .line 950
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/SocketImpl;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 921
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_14

    .line 923
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "nio.00"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 925
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_28

    .line 927
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "nio.01"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    :cond_28
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 931
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "nio.03"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    :cond_3a
    new-instance v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketChannelInputStream;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-direct {v0, v1}, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketChannelInputStream;-><init>(Ljava/nio/channels/SocketChannel;)V

    return-object v0
.end method

.method public getKeepAlive()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 858
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->checkOpen()V

    .line 859
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/SocketImpl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 3

    .prologue
    .line 753
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->getLocalAddress()Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 755
    :goto_6
    return-object v1

    .line 754
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 755
    .local v0, e:Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getOOBInline()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 869
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->checkOpen()V

    .line 870
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/SocketImpl;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 900
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_14

    .line 902
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "nio.00"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 904
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_28

    .line 906
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "nio.01"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 908
    :cond_28
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 910
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "nio.02"

    invoke-static {v1}, Lorg/apache/harmony/nio/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 912
    :cond_3a
    new-instance v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketChannelOutputStream;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-direct {v0, v1}, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketChannelOutputStream;-><init>(Ljava/nio/channels/SocketChannel;)V

    return-object v0
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 826
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->checkOpen()V

    .line 827
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result v0

    monitor-exit p0

    return v0

    .line 826
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReuseAddress()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 819
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->checkOpen()V

    .line 820
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSendBufferSize()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 833
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->checkOpen()V

    .line 834
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/SocketImpl;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result v0

    monitor-exit p0

    return v0

    .line 833
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSoLinger()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 880
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->checkOpen()V

    .line 881
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/SocketImpl;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getSoTimeout()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 840
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->checkOpen()V

    .line 841
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/SocketImpl;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result v0

    monitor-exit p0

    return v0

    .line 840
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTcpNoDelay()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 890
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->checkOpen()V

    .line 891
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/SocketImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 847
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->checkOpen()V

    .line 848
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/SocketImpl;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 734
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    iget-boolean v0, v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBound:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 743
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;->channel:Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isConnected()Z

    move-result v0

    return v0
.end method
