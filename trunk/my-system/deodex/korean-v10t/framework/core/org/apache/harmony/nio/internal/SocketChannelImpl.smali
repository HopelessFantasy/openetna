.class Lorg/apache/harmony/nio/internal/SocketChannelImpl;
.super Ljava/nio/channels/SocketChannel;
.source "SocketChannelImpl.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/FileDescriptorHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketChannelInputStream;,
        Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketChannelOutputStream;,
        Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;
    }
.end annotation


# static fields
.field private static final CONNECT_SUCCESS:I = 0x0

.field private static final EOF:I = -0x1

.field private static final ERRCODE_SOCKET_NONBLOCKING_WOULD_BLOCK:I = -0xd3

.field private static final HY_PORT_SOCKET_STEP_CHECK:I = 0x1

.field private static final HY_SOCK_STEP_START:I = 0x0

.field static final SOCKET_STATUS_CLOSED:I = 0x3

.field static final SOCKET_STATUS_CONNECTED:I = 0x2

.field static final SOCKET_STATUS_PENDING:I = 0x1

.field static final SOCKET_STATUS_UNCONNECTED:I = 0x0

.field static final SOCKET_STATUS_UNINIT:I = -0x1

.field private static final TIMEOUT_BLOCK:I = -0x1

.field private static final TIMEOUT_NONBLOCK:I

.field static final networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;


# instance fields
.field connectAddress:Ljava/net/InetSocketAddress;

.field private connectContext:[B

.field fd:Ljava/io/FileDescriptor;

.field volatile isBound:Z

.field localAddress:Ljava/net/InetAddress;

.field localPort:I

.field private final readLock:Ljava/lang/Object;

.field private socket:Ljava/net/Socket;

.field status:I

.field private trafficClass:I

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 163
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 109
    iput-object v2, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->socket:Ljava/net/Socket;

    .line 112
    iput-object v2, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 115
    iput-object v2, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I

    .line 126
    iput-boolean v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBound:Z

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 136
    const/16 v0, 0x188

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->connectContext:[B

    .line 142
    iput v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->trafficClass:I

    .line 164
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 165
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 166
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I

    .line 167
    return-void
.end method

.method constructor <init>(Ljava/net/Socket;Ljava/io/FileDescriptor;)V
    .registers 6
    .parameter "aSocket"
    .parameter "aFd"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 183
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 109
    iput-object v2, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->socket:Ljava/net/Socket;

    .line 112
    iput-object v2, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 115
    iput-object v2, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I

    .line 126
    iput-boolean v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBound:Z

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 136
    const/16 v0, 0x188

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->connectContext:[B

    .line 142
    iput v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->trafficClass:I

    .line 184
    iput-object p1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->socket:Ljava/net/Socket;

    .line 185
    iput-object p2, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 186
    iput v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 5
    .parameter "selectorProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 109
    iput-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->socket:Ljava/net/Socket;

    .line 112
    iput-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 115
    iput-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I

    .line 126
    iput-boolean v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBound:Z

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 136
    const/16 v0, 0x188

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->connectContext:[B

    .line 142
    iput v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->trafficClass:I

    .line 154
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 155
    iput v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I

    .line 156
    sget-object v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->createSocket(Ljava/io/FileDescriptor;Z)V

    .line 157
    return-void
.end method

.method private calculateByteBufferArray([Ljava/nio/ByteBuffer;II)I
    .registers 7
    .parameter "sources"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, sum:I
    move v1, p2

    .local v1, val:I
    :goto_2
    add-int v2, p2, p3

    if-ge v1, v2, :cond_10

    .line 547
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v0, v2

    .line 546
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 549
    :cond_10
    return v0
.end method

.method private declared-synchronized checkOpenConnected()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .prologue
    .line 607
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    .line 608
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 607
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 610
    :cond_10
    :try_start_10
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 611
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_d

    .line 613
    :cond_1c
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized checkUnconnected()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    .line 620
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 619
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 622
    :cond_10
    :try_start_10
    iget v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 623
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 625
    :cond_1b
    iget v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 626
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_d

    .line 628
    :cond_26
    monitor-exit p0

    return-void
.end method

.method private isIndexValid([Ljava/nio/ByteBuffer;II)Z
    .registers 8
    .parameter "targets"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 451
    if-ltz p3, :cond_f

    if-ltz p2, :cond_f

    int-to-long v0, p3

    int-to-long v2, p2

    add-long/2addr v0, v2

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private readImpl(Ljava/nio/ByteBuffer;)I
    .registers 15
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    iget-object v12, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v12

    .line 462
    const/4 v11, 0x0

    .line 464
    .local v11, readCount:I
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 465
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->begin()V

    .line 467
    :cond_d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 468
    .local v3, offset:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 469
    .local v4, length:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 470
    invoke-static {p1}, Lorg/apache/harmony/nio/AddressUtil;->getDirectBufferAddress(Ljava/nio/Buffer;)I

    move-result v2

    .line 471
    .local v2, address:I
    sget-object v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_3c

    const/4 v5, -0x1

    :goto_2a
    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/INetworkSystem;->readDirect(Ljava/io/FileDescriptor;IIII)I
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_5f

    move-result v11

    .line 483
    .end local v2           #address:I
    :goto_2e
    :try_start_2e
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 484
    if-lez v11, :cond_5d

    const/4 v0, 0x1

    :goto_37
    invoke-virtual {p0, v0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->end(Z)V

    :cond_3a
    monitor-exit v12
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_6d

    return v11

    .line 471
    .restart local v2       #address:I
    :cond_3c
    const/4 v5, 0x0

    goto :goto_2a

    .line 476
    .end local v2           #address:I
    :cond_3e
    :try_start_3e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    .line 477
    .local v7, array:[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int/2addr v3, v0

    .line 478
    sget-object v5, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v6, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v0, -0x1

    move v10, v0

    :goto_53
    move v8, v3

    move v9, v4

    invoke-interface/range {v5 .. v10}, Lorg/apache/harmony/luni/platform/INetworkSystem;->read(Ljava/io/FileDescriptor;[BIII)I
    :try_end_58
    .catchall {:try_start_3e .. :try_end_58} :catchall_5f

    move-result v11

    goto :goto_2e

    :cond_5a
    const/4 v0, 0x0

    move v10, v0

    goto :goto_53

    .line 484
    .end local v7           #array:[B
    :cond_5d
    const/4 v0, 0x0

    goto :goto_37

    .line 483
    .end local v3           #offset:I
    .end local v4           #length:I
    :catchall_5f
    move-exception v0

    :try_start_60
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 484
    if-lez v11, :cond_70

    const/4 v1, 0x1

    :goto_69
    invoke-virtual {p0, v1}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->end(Z)V

    :cond_6c
    throw v0

    .line 487
    :catchall_6d
    move-exception v0

    monitor-exit v12
    :try_end_6f
    .catchall {:try_start_60 .. :try_end_6f} :catchall_6d

    throw v0

    .line 484
    :cond_70
    const/4 v1, 0x0

    goto :goto_69
.end method

.method static validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    .registers 4
    .parameter "socketAddress"

    .prologue
    .line 635
    if-nez p0, :cond_8

    .line 636
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 638
    :cond_8
    instance-of v2, p0, Ljava/net/InetSocketAddress;

    if-nez v2, :cond_12

    .line 639
    new-instance v2, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v2}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v2

    .line 641
    :cond_12
    move-object v0, p0

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    .line 642
    .local v1, inetSocketAddress:Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 643
    new-instance v2, Ljava/nio/channels/UnresolvedAddressException;

    invoke-direct {v2}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    throw v2

    .line 645
    :cond_22
    return-object v1
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;)I
    .registers 14
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 556
    iget-object v7, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v7

    .line 557
    :try_start_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-nez v6, :cond_e

    .line 558
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a8

    move v6, v10

    .line 594
    :goto_d
    return v6

    .line 560
    :cond_e
    const/4 v5, 0x0

    .line 562
    .local v5, writeCount:I
    :try_start_f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 563
    .local v4, pos:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 564
    .local v3, length:I
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 565
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->begin()V

    .line 567
    :cond_20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v6

    if-eqz v6, :cond_46

    .line 568
    invoke-static {p1}, Lorg/apache/harmony/nio/AddressUtil;->getDirectBufferAddress(Ljava/nio/Buffer;)I

    move-result v0

    .line 569
    .local v0, address:I
    sget-object v6, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v8, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v6, v8, v0, v4, v3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->writeDirect(Ljava/io/FileDescriptor;III)I

    move-result v5

    .line 580
    .end local v0           #address:I
    :goto_32
    add-int v6, v4, v5

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_37
    .catchall {:try_start_f .. :try_end_37} :catchall_9a
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_37} :catch_6f

    .line 590
    :try_start_37
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 591
    if-ltz v5, :cond_6d

    move v6, v11

    :goto_40
    invoke-virtual {p0, v6}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->end(Z)V

    .line 594
    :cond_43
    monitor-exit v7
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_a8

    move v6, v5

    goto :goto_d

    .line 571
    :cond_46
    :try_start_46
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 572
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    add-int/2addr v4, v6

    .line 573
    sget-object v6, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v8, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-interface {v6, v8, v9, v4, v3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    goto :goto_32

    .line 576
    :cond_5e
    new-array v1, v3, [B

    .line 577
    .local v1, array:[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 578
    sget-object v6, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v8, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v9, 0x0

    invoke-interface {v6, v8, v1, v9, v3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_6b
    .catchall {:try_start_46 .. :try_end_6b} :catchall_9a
    .catch Ljava/net/SocketException; {:try_start_46 .. :try_end_6b} :catch_6f

    move-result v5

    goto :goto_32

    .end local v1           #array:[B
    :cond_6d
    move v6, v10

    .line 591
    goto :goto_40

    .line 581
    .end local v3           #length:I
    .end local v4           #pos:I
    :catch_6f
    move-exception v6

    move-object v2, v6

    .line 582
    .local v2, e:Ljava/net/SocketException;
    :try_start_71
    invoke-virtual {v2}, Ljava/net/SocketException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    instance-of v6, v6, Lorg/apache/harmony/luni/util/ErrorCodeException;

    if-eqz v6, :cond_99

    .line 583
    const/16 v8, -0xd3

    invoke-virtual {v2}, Ljava/net/SocketException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/luni/util/ErrorCodeException;

    invoke-virtual {v6}, Lorg/apache/harmony/luni/util/ErrorCodeException;->getErrorCode()I
    :try_end_84
    .catchall {:try_start_71 .. :try_end_84} :catchall_9a

    move-result v6

    if-ne v8, v6, :cond_99

    .line 590
    :try_start_87
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_93

    .line 591
    if-ltz v5, :cond_97

    move v6, v11

    :goto_90
    invoke-virtual {p0, v6}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->end(Z)V

    :cond_93
    monitor-exit v7
    :try_end_94
    .catchall {:try_start_87 .. :try_end_94} :catchall_a8

    move v6, v5

    goto/16 :goto_d

    :cond_97
    move v6, v10

    goto :goto_90

    .line 588
    :cond_99
    :try_start_99
    throw v2
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_9a

    .line 590
    .end local v2           #e:Ljava/net/SocketException;
    :catchall_9a
    move-exception v6

    :try_start_9b
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBlocking()Z

    move-result v8

    if-eqz v8, :cond_a7

    .line 591
    if-ltz v5, :cond_ab

    move v8, v11

    :goto_a4
    invoke-virtual {p0, v8}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->end(Z)V

    :cond_a7
    throw v6

    .line 595
    .end local v5           #writeCount:I
    :catchall_a8
    move-exception v6

    monitor-exit v7
    :try_end_aa
    .catchall {:try_start_9b .. :try_end_aa} :catchall_a8

    throw v6

    .restart local v5       #writeCount:I
    :cond_ab
    move v8, v10

    .line 591
    goto :goto_a4
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;)Z
    .registers 17
    .parameter "socketAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->checkUnconnected()V

    .line 259
    invoke-static/range {p1 .. p1}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v11

    .line 261
    .local v11, inetSocketAddress:Ljava/net/InetSocketAddress;
    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v12

    .line 262
    .local v12, port:I
    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v10

    .line 264
    .local v10, hostName:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v14

    .line 265
    .local v14, sm:Ljava/lang/SecurityManager;
    if-eqz v14, :cond_1c

    .line 266
    invoke-virtual {v14, v10, v12}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 270
    :cond_1c
    const/4 v13, -0x1

    .line 271
    .local v13, result:I
    const/4 v9, 0x0

    .line 274
    .local v9, finished:Z
    :try_start_1e
    iget-boolean v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBound:Z

    if-nez v0, :cond_38

    .line 276
    sget-object v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    new-array v4, v4, [B

    fill-array-data v4, :array_e8

    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/harmony/luni/platform/INetworkSystem;->bind2(Ljava/io/FileDescriptor;IZLjava/net/InetAddress;)Z

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBound:Z

    .line 281
    :cond_38
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 282
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->begin()V

    .line 283
    sget-object v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget v2, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->trafficClass:I

    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connect(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)I

    move-result v13

    .line 296
    :cond_53
    :goto_53
    if-nez v13, :cond_c6

    const/4 v0, 0x1

    move v9, v0

    .line 297
    :goto_57
    iput-boolean v9, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBound:Z
    :try_end_59
    .catchall {:try_start_1e .. :try_end_59} :catchall_d4
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_59} :catch_ad

    .line 309
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 310
    invoke-virtual {p0, v9}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->end(Z)V

    .line 315
    :cond_62
    :goto_62
    sget-object v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketLocalPort(Ljava/io/FileDescriptor;Z)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->localPort:I

    .line 316
    sget-object v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketLocalAddress(Ljava/io/FileDescriptor;Z)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    .line 319
    iput-object v11, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 320
    monitor-enter p0

    .line 321
    :try_start_7b
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 322
    if-eqz v9, :cond_df

    const/4 v0, 0x2

    :goto_84
    iput v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I

    .line 327
    :goto_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_7b .. :try_end_87} :catchall_e5

    .line 328
    return v9

    .line 288
    :cond_88
    :try_start_88
    sget-object v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->trafficClass:I

    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->connectContext:[B

    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connectWithTimeout(Ljava/io/FileDescriptor;IILjava/net/InetAddress;II[B)I

    move-result v13

    .line 292
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_53

    .line 293
    sget-object v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->setNonBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_ac
    .catchall {:try_start_88 .. :try_end_ac} :catchall_d4
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_ac} :catch_ad

    goto :goto_53

    .line 298
    :catch_ad
    move-exception v0

    move-object v8, v0

    .line 299
    .local v8, e:Ljava/io/IOException;
    :try_start_af
    instance-of v0, v8, Ljava/net/ConnectException;

    if-eqz v0, :cond_c9

    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_c9

    .line 300
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I
    :try_end_bc
    .catchall {:try_start_af .. :try_end_bc} :catchall_d4

    .line 309
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 310
    invoke-virtual {p0, v9}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->end(Z)V

    goto :goto_62

    .line 296
    .end local v8           #e:Ljava/io/IOException;
    :cond_c6
    const/4 v0, 0x0

    move v9, v0

    goto :goto_57

    .line 302
    .restart local v8       #e:Ljava/io/IOException;
    :cond_c9
    :try_start_c9
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 303
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->close()V

    .line 304
    const/4 v9, 0x1

    .line 306
    :cond_d3
    throw v8
    :try_end_d4
    .catchall {:try_start_c9 .. :try_end_d4} :catchall_d4

    .line 309
    .end local v8           #e:Ljava/io/IOException;
    :catchall_d4
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_de

    .line 310
    invoke-virtual {p0, v9}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->end(Z)V

    :cond_de
    throw v0

    .line 322
    :cond_df
    const/4 v0, 0x0

    goto :goto_84

    .line 325
    :cond_e1
    const/4 v0, 0x1

    :try_start_e2
    iput v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I

    goto :goto_86

    .line 327
    :catchall_e5
    move-exception v0

    monitor-exit p0
    :try_end_e7
    .catchall {:try_start_e2 .. :try_end_e7} :catchall_e5

    throw v0

    .line 276
    :array_e8
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public finishConnect()Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 337
    monitor-enter p0

    .line 338
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_13

    .line 339
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 347
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v0

    .line 341
    :cond_13
    :try_start_13
    iget v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I

    if-ne v0, v13, :cond_1a

    .line 342
    monitor-exit p0

    move v0, v11

    .line 376
    :goto_19
    return v0

    .line 344
    :cond_1a
    iget v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I

    if-eq v0, v11, :cond_24

    .line 345
    new-instance v0, Ljava/nio/channels/NoConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/NoConnectionPendingException;-><init>()V

    throw v0

    .line 347
    :cond_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_10

    .line 350
    const/4 v10, -0x1

    .line 351
    .local v10, result:I
    const/4 v9, 0x0

    .line 354
    .local v9, finished:Z
    :try_start_27
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->begin()V

    .line 355
    sget-object v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_68

    const/4 v2, -0x1

    :goto_35
    iget v3, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->trafficClass:I

    iget-object v4, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->connectContext:[B

    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connectWithTimeout(Ljava/io/FileDescriptor;IILjava/net/InetAddress;II[B)I

    move-result v10

    .line 359
    if-nez v10, :cond_6a

    move v9, v11

    .line 360
    :goto_4d
    iput-boolean v9, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBound:Z

    .line 361
    sget-object v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketLocalAddress(Ljava/io/FileDescriptor;Z)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;
    :try_end_5a
    .catchall {:try_start_27 .. :try_end_5a} :catchall_79
    .catch Ljava/net/ConnectException; {:try_start_27 .. :try_end_5a} :catch_6c

    .line 369
    invoke-virtual {p0, v9}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->end(Z)V

    .line 372
    monitor-enter p0

    .line 373
    if-eqz v9, :cond_7e

    move v0, v13

    :goto_61
    :try_start_61
    iput v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I

    .line 374
    iput-boolean v9, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBound:Z

    .line 375
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_81

    move v0, v9

    .line 376
    goto :goto_19

    :cond_68
    move v2, v12

    .line 355
    goto :goto_35

    :cond_6a
    move v9, v12

    .line 359
    goto :goto_4d

    .line 362
    :catch_6c
    move-exception v0

    move-object v8, v0

    .line 363
    .local v8, e:Ljava/net/ConnectException;
    :try_start_6e
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 364
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->close()V

    .line 365
    const/4 v9, 0x1

    .line 367
    :cond_78
    throw v8
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_79

    .line 369
    .end local v8           #e:Ljava/net/ConnectException;
    :catchall_79
    move-exception v0

    invoke-virtual {p0, v9}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->end(Z)V

    throw v0

    .line 373
    :cond_7e
    :try_start_7e
    iget v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I

    goto :goto_61

    .line 375
    :catchall_81
    move-exception v0

    monitor-exit p0
    :try_end_83
    .catchall {:try_start_7e .. :try_end_83} :catchall_81

    throw v0
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 691
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 652
    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_12

    .line 653
    .local v0, any_bytes:[B
    iget-boolean v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBound:Z

    if-nez v1, :cond_f

    .line 654
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 656
    :goto_e
    return-object v1

    :cond_f
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    goto :goto_e

    .line 652
    :array_12
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected declared-synchronized implCloseSelectableChannel()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 667
    monitor-enter p0

    :try_start_2
    iget v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I

    if-eq v1, v0, :cond_1a

    .line 668
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I

    .line 669
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 670
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_24

    .line 675
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    .line 672
    :cond_1c
    :try_start_1c
    sget-object v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->socketClose(Ljava/io/FileDescriptor;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_24

    goto :goto_1a

    .line 667
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected implConfigureBlocking(Z)V
    .registers 6
    .parameter "blockMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 682
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 683
    :try_start_5
    sget-object v1, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v2, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    if-nez p1, :cond_11

    const/4 v3, 0x1

    :goto_c
    invoke-interface {v1, v2, v3}, Lorg/apache/harmony/luni/platform/INetworkSystem;->setNonBlocking(Ljava/io/FileDescriptor;Z)V

    .line 684
    monitor-exit v0

    .line 685
    return-void

    .line 683
    :cond_11
    const/4 v3, 0x0

    goto :goto_c

    .line 684
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public declared-synchronized isConnected()Z
    .registers 3

    .prologue
    .line 225
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnectionPending()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 247
    monitor-enter p0

    :try_start_2
    iget v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_b

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 7
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 387
    if-nez p1, :cond_9

    .line 388
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 390
    :cond_9
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->checkOpenConnected()V

    .line 391
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_14

    move v3, v4

    .line 411
    :goto_13
    return v3

    .line 396
    :cond_14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-nez v3, :cond_20

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 397
    :cond_20
    invoke-direct {p0, p1}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 398
    .local v2, readCount:I
    if-lez v2, :cond_2e

    .line 399
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2e
    :goto_2e
    move v3, v2

    .line 411
    goto :goto_13

    .line 402
    .end local v2           #readCount:I
    :cond_30
    const/4 v1, 0x0

    .line 403
    .local v1, readBuffer:Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    .line 404
    .local v0, readArray:[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v0, v3, [B

    .line 405
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 406
    invoke-direct {p0, v1}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 407
    .restart local v2       #readCount:I
    if-lez v2, :cond_2e

    .line 408
    invoke-virtual {p1, v0, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_2e
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 13
    .parameter "targets"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isIndexValid([Ljava/nio/ByteBuffer;II)Z

    move-result v7

    if-nez v7, :cond_c

    .line 422
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    .line 425
    :cond_c
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->checkOpenConnected()V

    .line 426
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->calculateByteBufferArray([Ljava/nio/ByteBuffer;II)I

    move-result v6

    .line 427
    .local v6, totalCount:I
    if-nez v6, :cond_18

    .line 428
    const-wide/16 v7, 0x0

    .line 447
    :goto_17
    return-wide v7

    .line 430
    :cond_18
    new-array v3, v6, [B

    .line 431
    .local v3, readArray:[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 435
    .local v4, readBuffer:Ljava/nio/ByteBuffer;
    invoke-direct {p0, v4}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 436
    .local v5, readCount:I
    if-lez v5, :cond_3d

    .line 437
    move v1, v5

    .line 438
    .local v1, left:I
    move v0, p2

    .line 440
    .local v0, index:I
    :goto_26
    if-lez v1, :cond_3d

    .line 441
    aget-object v7, p1, v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 442
    .local v2, putLength:I
    aget-object v7, p1, v0

    sub-int v8, v5, v1

    invoke-virtual {v7, v3, v8, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 443
    add-int/lit8 v0, v0, 0x1

    .line 444
    sub-int/2addr v1, v2

    .line 445
    goto :goto_26

    .line 447
    .end local v0           #index:I
    .end local v1           #left:I
    .end local v2           #putLength:I
    :cond_3d
    int-to-long v7, v5

    goto :goto_17
.end method

.method setBound(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 238
    iput-boolean p1, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isBound:Z

    .line 239
    return-void
.end method

.method declared-synchronized setConnected()V
    .registers 2

    .prologue
    .line 232
    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    iput v0, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->status:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 233
    monitor-exit p0

    return-void

    .line 232
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized socket()Ljava/net/Socket;
    .registers 7

    .prologue
    .line 199
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->socket:Ljava/net/Socket;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2e

    if-nez v3, :cond_26

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, addr:Ljava/net/InetAddress;
    const/4 v2, 0x0

    .line 203
    .local v2, port:I
    :try_start_7
    iget-object v3, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_17

    .line 204
    iget-object v3, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 205
    iget-object v3, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 207
    :cond_17
    new-instance v3, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;

    iget-object v4, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget v5, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->localPort:I

    invoke-static {v4, v5, v0, v2}, Lorg/apache/harmony/luni/net/SocketImplProvider;->getSocketImpl(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)Ljava/net/SocketImpl;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl$SocketAdapter;-><init>(Ljava/net/SocketImpl;Lorg/apache/harmony/nio/internal/SocketChannelImpl;)V

    iput-object v3, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->socket:Ljava/net/Socket;
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_2e
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_26} :catch_2a

    .line 213
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v2           #port:I
    :cond_26
    :try_start_26
    iget-object v3, p0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->socket:Ljava/net/Socket;
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_2e

    :goto_28
    monitor-exit p0

    return-object v3

    .line 209
    .restart local v0       #addr:Ljava/net/InetAddress;
    .restart local v2       #port:I
    :catch_2a
    move-exception v3

    move-object v1, v3

    .line 210
    .local v1, e:Ljava/net/SocketException;
    const/4 v3, 0x0

    goto :goto_28

    .line 199
    .end local v0           #addr:Ljava/net/InetAddress;
    .end local v1           #e:Ljava/net/SocketException;
    .end local v2           #port:I
    :catchall_2e
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 3
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    if-nez p1, :cond_8

    .line 497
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 499
    :cond_8
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->checkOpenConnected()V

    .line 500
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_13

    .line 501
    const/4 v0, 0x0

    .line 503
    :goto_12
    return v0

    :cond_13
    invoke-direct {p0, p1}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_12
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .registers 14
    .parameter "sources"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->isIndexValid([Ljava/nio/ByteBuffer;II)Z

    move-result v8

    if-nez v8, :cond_c

    .line 514
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v8}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v8

    .line 517
    :cond_c
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->checkOpenConnected()V

    .line 518
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->calculateByteBufferArray([Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 519
    .local v0, count:I
    if-nez v0, :cond_18

    .line 520
    const-wide/16 v8, 0x0

    .line 540
    :goto_17
    return-wide v8

    .line 522
    :cond_18
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 523
    .local v6, writeBuf:Ljava/nio/ByteBuffer;
    move v5, p2

    .local v5, val:I
    :goto_1d
    add-int v8, p3, p2

    if-ge v5, v8, :cond_30

    .line 524
    aget-object v4, p1, v5

    .line 525
    .local v4, source:Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 526
    .local v2, oldPosition:I
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 527
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 523
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 529
    .end local v2           #oldPosition:I
    .end local v4           #source:Ljava/nio/ByteBuffer;
    :cond_30
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 530
    invoke-direct {p0, v6}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 531
    .local v3, result:I
    move v5, p2

    .line 532
    move v7, v3

    .line 533
    .local v7, written:I
    :goto_39
    if-lez v3, :cond_51

    .line 534
    aget-object v4, p1, v5

    .line 535
    .restart local v4       #source:Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 536
    .local v1, gap:I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 537
    add-int/lit8 v5, v5, 0x1

    .line 538
    sub-int/2addr v3, v1

    .line 539
    goto :goto_39

    .line 540
    .end local v1           #gap:I
    .end local v4           #source:Ljava/nio/ByteBuffer;
    :cond_51
    int-to-long v8, v7

    goto :goto_17
.end method
