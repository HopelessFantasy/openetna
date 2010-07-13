.class Lorg/apache/harmony/nio/internal/DatagramChannelImpl;
.super Ljava/nio/channels/DatagramChannel;
.source "DatagramChannelImpl.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/FileDescriptorHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x1

.field private static final ERRCODE_SOCKET_NONBLOCKING_WOULD_BLOCK:I = -0xd3

.field private static final networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

.field private static final stubArray:[B


# instance fields
.field connectAddress:Ljava/net/InetSocketAddress;

.field connected:Z

.field private fd:Ljava/io/FileDescriptor;

.field isBound:Z

.field private localPort:I

.field private final readLock:Ljava/lang/Object;

.field private socket:Ljava/net/DatagramSocket;

.field private trafficClass:I

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    .line 73
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->stubArray:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 83
    iput-object v2, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    .line 86
    iput-object v2, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 92
    iput-boolean v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->connected:Z

    .line 95
    iput-boolean v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isBound:Z

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    .line 104
    iput v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->trafficClass:I

    .line 125
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 126
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 127
    return-void
.end method

.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
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

    .line 115
    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 83
    iput-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    .line 86
    iput-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 92
    iput-boolean v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->connected:Z

    .line 95
    iput-boolean v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isBound:Z

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    .line 104
    iput v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->trafficClass:I

    .line 116
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 117
    sget-object v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->createDatagramSocket(Ljava/io/FileDescriptor;Z)V

    .line 118
    return-void
.end method

.method private calculateByteBufferArray([Ljava/nio/ByteBuffer;II)I
    .registers 7
    .parameter "sources"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, sum:I
    move v1, p2

    .local v1, val:I
    :goto_2
    add-int v2, p2, p3

    if-ge v1, v2, :cond_10

    .line 768
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v0, v2

    .line 767
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 770
    :cond_10
    return v0
.end method

.method private checkNotNull(Ljava/nio/ByteBuffer;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 737
    if-nez p1, :cond_8

    .line 738
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 740
    :cond_8
    return-void
.end method

.method private checkOpen()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 718
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 719
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 721
    :cond_c
    return-void
.end method

.method private checkOpenConnected()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 727
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->checkOpen()V

    .line 728
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_f

    .line 729
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    .line 731
    :cond_f
    return-void
.end method

.method private checkWritable(Ljava/nio/ByteBuffer;)V
    .registers 3
    .parameter "target"

    .prologue
    .line 748
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 749
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 751
    :cond_c
    return-void
.end method

.method private readImpl(Ljava/nio/ByteBuffer;)I
    .registers 22
    .parameter "readBuffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 534
    const/16 v18, 0x0

    .line 536
    .local v18, readCount:I
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->begin()V

    .line 539
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v2, 0x0

    move v8, v2

    .line 540
    .local v8, timeout:I
    :goto_14
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 541
    .local v6, start:I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 542
    .local v7, length:I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 543
    invoke-static/range {p1 .. p1}, Lorg/apache/harmony/nio/AddressUtil;->getDirectBufferAddress(Ljava/nio/Buffer;)I

    move-result v5

    .line 544
    .local v5, address:I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 545
    sget-object v2, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Lorg/apache/harmony/luni/platform/INetworkSystem;->recvConnectedDatagramDirect(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIIZ)I
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_a0
    .catch Ljava/io/InterruptedIOException; {:try_start_9 .. :try_end_38} :catch_8c

    move-result v18

    .line 568
    .end local v5           #address:I
    :goto_39
    if-lez v18, :cond_8a

    const/4 v2, 0x1

    :goto_3c
    :try_start_3c
    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->end(Z)V

    monitor-exit v19
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_9b

    move/from16 v2, v18

    .end local v6           #start:I
    .end local v7           #length:I
    .end local v8           #timeout:I
    :goto_45
    return v2

    .line 539
    :cond_46
    const/4 v2, 0x1

    move v8, v2

    goto :goto_14

    .line 548
    .restart local v5       #address:I
    .restart local v6       #start:I
    .restart local v7       #length:I
    .restart local v8       #timeout:I
    :cond_49
    :try_start_49
    sget-object v2, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Lorg/apache/harmony/luni/platform/INetworkSystem;->receiveDatagramDirect(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIIZ)I

    move-result v18

    goto :goto_39

    .line 553
    .end local v5           #address:I
    :cond_57
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    .line 554
    .local v12, target:[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int/2addr v6, v2

    .line 555
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 556
    sget-object v9, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    move-object v10, v0

    const/4 v11, 0x0

    const/16 v16, 0x0

    move v13, v6

    move v14, v7

    move v15, v8

    invoke-interface/range {v9 .. v16}, Lorg/apache/harmony/luni/platform/INetworkSystem;->recvConnectedDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I

    move-result v18

    goto :goto_39

    .line 559
    :cond_78
    sget-object v9, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    move-object v10, v0

    const/4 v11, 0x0

    const/16 v16, 0x0

    move v13, v6

    move v14, v7

    move v15, v8

    invoke-interface/range {v9 .. v16}, Lorg/apache/harmony/luni/platform/INetworkSystem;->receiveDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I
    :try_end_88
    .catchall {:try_start_49 .. :try_end_88} :catchall_a0
    .catch Ljava/io/InterruptedIOException; {:try_start_49 .. :try_end_88} :catch_8c

    move-result v18

    goto :goto_39

    .line 568
    .end local v12           #target:[B
    :cond_8a
    const/4 v2, 0x0

    goto :goto_3c

    .line 564
    .end local v6           #start:I
    .end local v7           #length:I
    .end local v8           #timeout:I
    :catch_8c
    move-exception v2

    move-object/from16 v17, v2

    .line 566
    .local v17, e:Ljava/io/InterruptedIOException;
    const/4 v2, 0x0

    .line 568
    if-lez v18, :cond_9e

    const/4 v3, 0x1

    :goto_93
    :try_start_93
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->end(Z)V

    monitor-exit v19

    goto :goto_45

    .line 570
    .end local v17           #e:Ljava/io/InterruptedIOException;
    :catchall_9b
    move-exception v2

    monitor-exit v19
    :try_end_9d
    .catchall {:try_start_93 .. :try_end_9d} :catchall_9b

    throw v2

    .line 568
    .restart local v17       #e:Ljava/io/InterruptedIOException;
    :cond_9e
    const/4 v3, 0x0

    goto :goto_93

    .end local v17           #e:Ljava/io/InterruptedIOException;
    :catchall_a0
    move-exception v2

    if-lez v18, :cond_ab

    const/4 v3, 0x1

    :goto_a4
    :try_start_a4
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->end(Z)V

    throw v2
    :try_end_ab
    .catchall {:try_start_a4 .. :try_end_ab} :catchall_9b

    :cond_ab
    const/4 v3, 0x0

    goto :goto_a4
.end method

.method private receiveDirectImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;
    .registers 16
    .parameter "target"
    .parameter "loop"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    const/4 v11, 0x0

    .line 333
    .local v11, retAddr:Ljava/net/SocketAddress;
    new-instance v2, Ljava/net/DatagramPacket;

    sget-object v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->stubArray:[B

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 335
    .local v2, receivePacket:Ljava/net/DatagramPacket;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 336
    .local v9, oldposition:I
    const/4 v10, 0x0

    .line 338
    .local v10, received:I
    :cond_e
    invoke-static {p1}, Lorg/apache/harmony/nio/AddressUtil;->getDirectBufferAddress(Ljava/nio/Buffer;)I

    move-result v3

    .line 339
    .local v3, address:I
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 340
    sget-object v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_5f

    const/4 v6, 0x0

    :goto_2b
    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->recvConnectedDatagramDirect(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIIZ)I

    move-result v10

    .line 352
    :goto_30
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v12

    .line 353
    .local v12, sm:Ljava/lang/SecurityManager;
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4b

    if-eqz v12, :cond_4b

    .line 355
    :try_start_3c
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_4b
    .catch Ljava/lang/SecurityException; {:try_start_3c .. :try_end_4b} :catch_7c

    .line 362
    :cond_4b
    :goto_4b
    if-eqz v2, :cond_80

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 365
    if-lez v10, :cond_5a

    .line 366
    add-int v0, v9, v10

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 368
    :cond_5a
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v11

    .line 372
    :goto_5e
    return-object v11

    .line 340
    .end local v12           #sm:Ljava/lang/SecurityManager;
    :cond_5f
    const/4 v6, 0x1

    goto :goto_2b

    .line 345
    :cond_61
    sget-object v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_7a

    const/4 v6, 0x0

    :goto_74
    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->receiveDatagramDirect(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;IIIIZ)I

    move-result v10

    goto :goto_30

    :cond_7a
    const/4 v6, 0x1

    goto :goto_74

    .line 357
    .restart local v12       #sm:Ljava/lang/SecurityManager;
    :catch_7c
    move-exception v0

    move-object v8, v0

    .line 359
    .local v8, e:Ljava/lang/SecurityException;
    const/4 v2, 0x0

    goto :goto_4b

    .line 371
    .end local v8           #e:Ljava/lang/SecurityException;
    :cond_80
    if-nez p2, :cond_e

    goto :goto_5e
.end method

.method private receiveImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;
    .registers 16
    .parameter "target"
    .parameter "loop"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    const/4 v11, 0x0

    .line 280
    .local v11, retAddr:Ljava/net/SocketAddress;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 281
    .local v9, oldposition:I
    const/4 v10, 0x0

    .line 282
    .local v10, received:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 283
    new-instance v2, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-direct {v2, v0, v1, v3}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 290
    .local v2, receivePacket:Ljava/net/DatagramPacket;
    :cond_22
    :goto_22
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 291
    sget-object v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_89

    const/4 v6, 0x0

    :goto_3f
    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->recvConnectedDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I

    move-result v10

    .line 303
    :goto_44
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v12

    .line 304
    .local v12, sm:Ljava/lang/SecurityManager;
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_5f

    if-eqz v12, :cond_5f

    .line 306
    :try_start_50
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    invoke-virtual {v12, v0, v1}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_5f
    .catch Ljava/lang/SecurityException; {:try_start_50 .. :try_end_5f} :catch_aa

    .line 313
    :cond_5f
    :goto_5f
    if-eqz v2, :cond_b7

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_b7

    .line 315
    if-lez v10, :cond_74

    .line 316
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 317
    add-int v0, v9, v10

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 323
    :cond_74
    :goto_74
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v11

    .line 327
    :goto_78
    return-object v11

    .line 287
    .end local v2           #receivePacket:Ljava/net/DatagramPacket;
    .end local v12           #sm:Ljava/lang/SecurityManager;
    :cond_79
    new-instance v2, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-direct {v2, v0, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .restart local v2       #receivePacket:Ljava/net/DatagramPacket;
    goto :goto_22

    .line 291
    :cond_89
    const/4 v6, 0x1

    goto :goto_3f

    .line 296
    :cond_8b
    sget-object v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v4

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_a8

    const/4 v6, 0x0

    :goto_a2
    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lorg/apache/harmony/luni/platform/INetworkSystem;->receiveDatagram(Ljava/io/FileDescriptor;Ljava/net/DatagramPacket;[BIIIZ)I

    move-result v10

    goto :goto_44

    :cond_a8
    const/4 v6, 0x1

    goto :goto_a2

    .line 308
    .restart local v12       #sm:Ljava/lang/SecurityManager;
    :catch_aa
    move-exception v0

    move-object v8, v0

    .line 310
    .local v8, e:Ljava/lang/SecurityException;
    const/4 v2, 0x0

    goto :goto_5f

    .line 320
    .end local v8           #e:Ljava/lang/SecurityException;
    :cond_ae
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_74

    .line 326
    :cond_b7
    if-nez p2, :cond_22

    goto :goto_78
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;)I
    .registers 16
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 648
    iget-object v13, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v13

    .line 649
    const/4 v12, 0x0

    .line 651
    .local v12, result:I
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->begin()V

    .line 652
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 653
    .local v4, length:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 655
    .local v3, start:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 656
    invoke-static {p1}, Lorg/apache/harmony/nio/AddressUtil;->getDirectBufferAddress(Ljava/nio/Buffer;)I

    move-result v2

    .line 657
    .local v2, address:I
    sget-object v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget-boolean v5, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isBound:Z

    invoke-interface/range {v0 .. v5}, Lorg/apache/harmony/luni/platform/INetworkSystem;->sendConnectedDatagramDirect(Ljava/io/FileDescriptor;IIIZ)I
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_68
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_22} :catch_44

    move-result v12

    .line 675
    .end local v2           #address:I
    :goto_23
    if-lez v12, :cond_42

    const/4 v0, 0x1

    :goto_26
    :try_start_26
    invoke-virtual {p0, v0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->end(Z)V

    monitor-exit v13
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_70

    move v13, v12

    .end local v3           #start:I
    .end local v4           #length:I
    .end local v12           #result:I
    .end local p1
    .local v13, result:I
    :goto_2b
    return v13

    .line 661
    .end local v13           #result:I
    .restart local v3       #start:I
    .restart local v4       #length:I
    .restart local v12       #result:I
    .restart local p1
    :cond_2c
    :try_start_2c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    add-int/2addr v3, v0

    .line 662
    sget-object v5, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v6, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    iget-boolean v10, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isBound:Z

    move v8, v3

    move v9, v4

    invoke-interface/range {v5 .. v10}, Lorg/apache/harmony/luni/platform/INetworkSystem;->sendConnectedDatagram(Ljava/io/FileDescriptor;[BIIZ)I
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_68
    .catch Ljava/net/SocketException; {:try_start_2c .. :try_end_40} :catch_44

    move-result v12

    goto :goto_23

    .line 675
    :cond_42
    const/4 v0, 0x0

    goto :goto_26

    .line 666
    .end local v3           #start:I
    .end local v4           #length:I
    :catch_44
    move-exception v0

    move-object v11, v0

    .line 667
    .local v11, e:Ljava/net/SocketException;
    :try_start_46
    invoke-virtual {v11}, Ljava/net/SocketException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/harmony/luni/util/ErrorCodeException;

    if-eqz v0, :cond_67

    .line 668
    const/16 v0, -0xd3

    invoke-virtual {v11}, Ljava/net/SocketException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/apache/harmony/luni/util/ErrorCodeException;

    invoke-virtual {p1}, Lorg/apache/harmony/luni/util/ErrorCodeException;->getErrorCode()I
    :try_end_59
    .catchall {:try_start_46 .. :try_end_59} :catchall_68

    move-result v1

    if-ne v0, v1, :cond_67

    .line 675
    if-lez v12, :cond_65

    const/4 v0, 0x1

    :goto_5f
    :try_start_5f
    invoke-virtual {p0, v0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->end(Z)V

    monitor-exit v13
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_70

    move v13, v12

    .end local v12           #result:I
    .restart local v13       #result:I
    goto :goto_2b

    .end local v13           #result:I
    .restart local v12       #result:I
    :cond_65
    const/4 v0, 0x0

    goto :goto_5f

    .line 673
    :cond_67
    :try_start_67
    throw v11
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_68

    .line 675
    .end local v11           #e:Ljava/net/SocketException;
    :catchall_68
    move-exception v0

    if-lez v12, :cond_73

    const/4 v1, 0x1

    :goto_6c
    :try_start_6c
    invoke-virtual {p0, v1}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->end(Z)V

    throw v0

    .line 677
    :catchall_70
    move-exception v0

    monitor-exit v13
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_70

    throw v0

    .line 675
    :cond_73
    const/4 v1, 0x0

    goto :goto_6c
.end method


# virtual methods
.method public declared-synchronized connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .registers 9
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->checkOpen()V

    .line 181
    iget-boolean v2, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->connected:Z

    if-eqz v2, :cond_11

    .line 182
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    .line 179
    :catchall_e
    move-exception v2

    monitor-exit p0

    throw v2

    .line 186
    :cond_11
    :try_start_11
    invoke-static {p1}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 190
    .local v0, inetSocketAddress:Ljava/net/InetSocketAddress;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 191
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_2c

    .line 192
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 193
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_e

    .line 201
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->begin()V

    .line 202
    sget-object v2, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v3, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    iget v5, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->trafficClass:I

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/apache/harmony/luni/platform/INetworkSystem;->connectDatagram(Ljava/io/FileDescriptor;IILjava/net/InetAddress;)V
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_64
    .catch Ljava/net/ConnectException; {:try_start_2c .. :try_end_40} :catch_5e

    .line 207
    const/4 v2, 0x1

    :try_start_41
    invoke-virtual {p0, v2}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->end(Z)V

    .line 211
    :goto_44
    iput-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 212
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->connected:Z

    .line 213
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isBound:Z
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_e

    .line 214
    monitor-exit p0

    return-object p0

    .line 195
    :cond_4e
    :try_start_4e
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_2c

    .line 204
    :catch_5e
    move-exception v2

    .line 207
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->end(Z)V

    goto :goto_44

    :catchall_64
    move-exception v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->end(Z)V

    throw v2
    :try_end_6a
    .catchall {:try_start_4e .. :try_end_6a} :catchall_e
.end method

.method public declared-synchronized disconnect()Ljava/nio/channels/DatagramChannel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isOpen()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_28

    move-result v1

    if-nez v1, :cond_10

    :cond_d
    move-object v0, p0

    .line 232
    .end local p0
    .local v0, this:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;
    :goto_e
    monitor-exit p0

    return-object v0

    .line 226
    .end local v0           #this:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;
    .restart local p0
    :cond_10
    const/4 v1, 0x0

    :try_start_11
    iput-boolean v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->connected:Z

    .line 227
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 228
    sget-object v1, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v2, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->disconnectDatagram(Ljava/io/FileDescriptor;)V

    .line 229
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_26

    .line 230
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->disconnect()V
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_28

    :cond_26
    move-object v0, p0

    .line 232
    .end local p0
    .restart local v0       #this:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;
    goto :goto_e

    .line 223
    .end local v0           #this:Lorg/apache/harmony/nio/internal/DatagramChannelImpl;
    .restart local p0
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 761
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method getLocalAddress()Ljava/net/InetAddress;
    .registers 4

    .prologue
    .line 154
    sget-object v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv6Addresses()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->getSocketLocalAddress(Ljava/io/FileDescriptor;Z)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized implCloseSelectableChannel()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->connected:Z

    .line 690
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    .line 691
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_1f

    .line 695
    :goto_15
    monitor-exit p0

    return-void

    .line 693
    :cond_17
    :try_start_17
    sget-object v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Lorg/apache/harmony/luni/platform/INetworkSystem;->socketClose(Ljava/io/FileDescriptor;)V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1f

    goto :goto_15

    .line 689
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected implConfigureBlocking(Z)V
    .registers 2
    .parameter "blockingMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 708
    return-void
.end method

.method public declared-synchronized isConnected()Z
    .registers 2

    .prologue
    .line 168
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->connected:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
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

    .line 458
    if-nez p1, :cond_9

    .line 459
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 462
    :cond_9
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->checkOpenConnected()V

    .line 464
    invoke-direct {p0, p1}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->checkWritable(Ljava/nio/ByteBuffer;)V

    .line 466
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_17

    move v3, v4

    .line 485
    :goto_16
    return v3

    .line 470
    :cond_17
    const/4 v2, 0x0

    .line 471
    .local v2, readCount:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 472
    :cond_24
    invoke-direct {p0, p1}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 473
    if-lez v2, :cond_32

    .line 474
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_32
    :goto_32
    move v3, v2

    .line 485
    goto :goto_16

    .line 478
    :cond_34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v0, v3, [B

    .line 479
    .local v0, readArray:[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 480
    .local v1, readBuffer:Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 481
    if-lez v2, :cond_32

    .line 482
    invoke-virtual {p1, v0, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_32
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .registers 16
    .parameter "targets"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    if-ltz p3, :cond_d

    if-ltz p2, :cond_d

    int-to-long v8, p3

    int-to-long v10, p2

    add-long/2addr v8, v10

    array-length v10, p1

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_13

    .line 498
    :cond_d
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v8}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v8

    .line 502
    :cond_13
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->checkOpenConnected()V

    .line 504
    const/4 v6, 0x0

    .line 505
    .local v6, totalCount:I
    move v7, p2

    .local v7, val:I
    :goto_18
    if-ge v7, p3, :cond_29

    .line 507
    aget-object v8, p1, v7

    invoke-direct {p0, v8}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->checkWritable(Ljava/nio/ByteBuffer;)V

    .line 508
    aget-object v8, p1, v7

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    add-int/2addr v6, v8

    .line 505
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .line 513
    :cond_29
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 515
    .local v4, readBuffer:Ljava/nio/ByteBuffer;
    invoke-direct {p0, v4}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 516
    .local v5, readCount:I
    move v1, v5

    .line 517
    .local v1, left:I
    move v0, p2

    .line 519
    .local v0, index:I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 520
    .local v3, readArray:[B
    :goto_37
    if-lez v1, :cond_4e

    .line 521
    aget-object v8, p1, v0

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 522
    .local v2, putLength:I
    aget-object v8, p1, v0

    sub-int v9, v5, v1

    invoke-virtual {v8, v3, v9, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 523
    add-int/lit8 v0, v0, 0x1

    .line 524
    sub-int/2addr v1, v2

    .line 525
    goto :goto_37

    .line 526
    .end local v2           #putLength:I
    :cond_4e
    int-to-long v8, v5

    return-wide v8
.end method

.method public receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .registers 10
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 246
    invoke-direct {p0, p1}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->checkWritable(Ljava/nio/ByteBuffer;)V

    .line 248
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->checkOpen()V

    .line 250
    iget-boolean v3, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isBound:Z

    if-nez v3, :cond_f

    move-object v3, v7

    .line 273
    :goto_e
    return-object v3

    .line 254
    :cond_f
    const/4 v2, 0x0

    .line 256
    .local v2, retAddr:Ljava/net/SocketAddress;
    :try_start_10
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->begin()V

    .line 259
    iget-object v3, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_43
    .catch Ljava/io/InterruptedIOException; {:try_start_10 .. :try_end_16} :catch_35

    .line 260
    :try_start_16
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isBlocking()Z

    move-result v1

    .line 261
    .local v1, loop:Z
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 262
    invoke-direct {p0, p1, v1}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->receiveImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;

    move-result-object v2

    .line 266
    :goto_24
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_32

    .line 271
    if-eqz v2, :cond_3f

    move v3, v6

    :goto_28
    invoke-virtual {p0, v3}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->end(Z)V

    move-object v3, v2

    .line 273
    goto :goto_e

    .line 264
    :cond_2d
    :try_start_2d
    invoke-direct {p0, p1, v1}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->receiveDirectImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;

    move-result-object v2

    goto :goto_24

    .line 266
    .end local v1           #loop:Z
    :catchall_32
    move-exception v4

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_32

    :try_start_34
    throw v4
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_43
    .catch Ljava/io/InterruptedIOException; {:try_start_34 .. :try_end_35} :catch_35

    .line 267
    :catch_35
    move-exception v3

    move-object v0, v3

    .line 271
    .local v0, e:Ljava/io/InterruptedIOException;
    if-eqz v2, :cond_41

    move v3, v6

    :goto_3a
    invoke-virtual {p0, v3}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->end(Z)V

    move-object v3, v7

    goto :goto_e

    .end local v0           #e:Ljava/io/InterruptedIOException;
    .restart local v1       #loop:Z
    :cond_3f
    move v3, v5

    goto :goto_28

    .end local v1           #loop:Z
    .restart local v0       #e:Ljava/io/InterruptedIOException;
    :cond_41
    move v3, v5

    goto :goto_3a

    .end local v0           #e:Ljava/io/InterruptedIOException;
    :catchall_43
    move-exception v3

    if-eqz v2, :cond_4b

    move v4, v6

    :goto_47
    invoke-virtual {p0, v4}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->end(Z)V

    throw v3

    :cond_4b
    move v4, v5

    goto :goto_47
.end method

.method public send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .registers 25
    .parameter "source"
    .parameter "socketAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-direct/range {p0 .. p1}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->checkNotNull(Ljava/nio/ByteBuffer;)V

    .line 385
    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->checkOpen()V

    .line 388
    move-object/from16 v0, p2

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object/from16 v18, v0

    .line 389
    .local v18, isa:Ljava/net/InetSocketAddress;
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_18

    .line 390
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 393
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 395
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 399
    :cond_32
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v21

    .line 400
    .local v21, sm:Ljava/lang/SecurityManager;
    if-eqz v21, :cond_4c

    .line 401
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 402
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    move-object/from16 v0, v21

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkMulticast(Ljava/net/InetAddress;)V

    .line 411
    .end local v21           #sm:Ljava/lang/SecurityManager;
    :cond_4c
    :goto_4c
    const/16 v20, 0x0

    .line 413
    .local v20, sendCount:I
    :try_start_4e
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->begin()V

    .line 414
    const/16 v17, 0x0

    .line 415
    .local v17, array:[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    .line 416
    .local v7, length:I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v19

    .line 417
    .local v19, oldposition:I
    move/from16 v6, v19

    .line 418
    .local v6, start:I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    move-object v12, v0

    monitor-enter v12
    :try_end_69
    .catchall {:try_start_4e .. :try_end_69} :catchall_b2

    .line 420
    :try_start_69
    invoke-static/range {p1 .. p1}, Lorg/apache/harmony/nio/AddressUtil;->getDirectBufferAddress(Ljava/nio/Buffer;)I

    move-result v5

    .line 422
    .local v5, data_address:I
    sget-object v3, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    move-object v4, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->trafficClass:I

    move v10, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-interface/range {v3 .. v11}, Lorg/apache/harmony/luni/platform/INetworkSystem;->sendDatagramDirect(Ljava/io/FileDescriptor;IIIIZILjava/net/InetAddress;)I

    move-result v20

    .line 425
    monitor-exit v12
    :try_end_87
    .catchall {:try_start_69 .. :try_end_87} :catchall_af

    move-object/from16 v10, v17

    .line 441
    .end local v5           #data_address:I
    .end local v17           #array:[B
    .local v10, array:[B
    :goto_89
    add-int v3, v19, v20

    :try_start_8b
    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_91
    .catchall {:try_start_8b .. :try_end_91} :catchall_b2

    .line 444
    if-ltz v20, :cond_fc

    const/4 v3, 0x1

    :goto_94
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->end(Z)V

    return v20

    .line 404
    .end local v6           #start:I
    .end local v7           #length:I
    .end local v10           #array:[B
    .end local v19           #oldposition:I
    .end local v20           #sendCount:I
    .restart local v21       #sm:Ljava/lang/SecurityManager;
    :cond_9b
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    move-object/from16 v0, v21

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_4c

    .line 425
    .end local v21           #sm:Ljava/lang/SecurityManager;
    .restart local v6       #start:I
    .restart local v7       #length:I
    .restart local v17       #array:[B
    .restart local v19       #oldposition:I
    .restart local v20       #sendCount:I
    :catchall_af
    move-exception v3

    :try_start_b0
    monitor-exit v12
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    :try_start_b1
    throw v3
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b2

    .line 444
    .end local v6           #start:I
    .end local v7           #length:I
    .end local v17           #array:[B
    .end local v19           #oldposition:I
    :catchall_b2
    move-exception v3

    if-ltz v20, :cond_fe

    const/4 v4, 0x1

    :goto_b6
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->end(Z)V

    throw v3

    .line 427
    .restart local v6       #start:I
    .restart local v7       #length:I
    .restart local v17       #array:[B
    .restart local v19       #oldposition:I
    :cond_bd
    :try_start_bd
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 428
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    .line 429
    .end local v17           #array:[B
    .restart local v10       #array:[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v6, v3

    .line 435
    :goto_cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    move-object v3, v0

    monitor-enter v3
    :try_end_d2
    .catchall {:try_start_bd .. :try_end_d2} :catchall_b2

    .line 436
    :try_start_d2
    sget-object v8, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->networkSystem:Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    move-object v9, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->trafficClass:I

    move v15, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v16

    move v11, v6

    move v12, v7

    invoke-interface/range {v8 .. v16}, Lorg/apache/harmony/luni/platform/INetworkSystem;->sendDatagram(Ljava/io/FileDescriptor;[BIIIZILjava/net/InetAddress;)I

    move-result v20

    .line 439
    monitor-exit v3

    goto :goto_89

    :catchall_ef
    move-exception v4

    monitor-exit v3
    :try_end_f1
    .catchall {:try_start_d2 .. :try_end_f1} :catchall_ef

    :try_start_f1
    throw v4

    .line 431
    .end local v10           #array:[B
    .restart local v17       #array:[B
    :cond_f2
    new-array v10, v7, [B

    .line 432
    .end local v17           #array:[B
    .restart local v10       #array:[B
    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_fa
    .catchall {:try_start_f1 .. :try_end_fa} :catchall_b2

    .line 433
    const/4 v6, 0x0

    goto :goto_cc

    .line 444
    :cond_fc
    const/4 v3, 0x0

    goto :goto_94

    .end local v6           #start:I
    .end local v7           #length:I
    .end local v10           #array:[B
    .end local v19           #oldposition:I
    :cond_fe
    const/4 v4, 0x0

    goto :goto_b6
.end method

.method public declared-synchronized socket()Ljava/net/DatagramSocket;
    .registers 4

    .prologue
    .line 139
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_14

    .line 140
    new-instance v0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget v2, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->localPort:I

    invoke-static {v1, v2}, Lorg/apache/harmony/luni/net/SocketImplProvider;->getDatagramSocketImpl(Ljava/io/FileDescriptor;I)Ljava/net/DatagramSocketImpl;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl$DatagramSocketAdapter;-><init>(Ljava/net/DatagramSocketImpl;Lorg/apache/harmony/nio/internal/DatagramChannelImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    .line 143
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    .line 139
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 7
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->checkNotNull(Ljava/nio/ByteBuffer;)V

    .line 581
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->checkOpenConnected()V

    .line 583
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_e

    .line 584
    const/4 v4, 0x0

    .line 602
    :goto_d
    return v4

    .line 587
    :cond_e
    const/4 v3, 0x0

    .line 588
    .local v3, writeBuffer:Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 589
    .local v2, writeArray:[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 591
    .local v0, oldposition:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_20

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 592
    :cond_20
    move-object v3, p1

    .line 598
    :goto_21
    invoke-direct {p0, v3}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 599
    .local v1, result:I
    if-lez v1, :cond_2c

    .line 600
    add-int v4, v0, v1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2c
    move v4, v1

    .line 602
    goto :goto_d

    .line 594
    .end local v1           #result:I
    :cond_2e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v2, v4, [B

    .line 595
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 596
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_21
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .registers 16
    .parameter "sources"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 612
    if-ltz p3, :cond_d

    if-ltz p2, :cond_d

    int-to-long v8, p3

    int-to-long v10, p2

    add-long/2addr v8, v10

    array-length v10, p1

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_13

    .line 614
    :cond_d
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v8}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v8

    .line 618
    :cond_13
    invoke-direct {p0}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->checkOpenConnected()V

    .line 619
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->calculateByteBufferArray([Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 620
    .local v0, count:I
    if-nez v0, :cond_1f

    .line 621
    const-wide/16 v8, 0x0

    .line 641
    :goto_1e
    return-wide v8

    .line 623
    :cond_1f
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 624
    .local v6, writeBuf:Ljava/nio/ByteBuffer;
    move v5, p2

    .local v5, val:I
    :goto_24
    add-int v8, p3, p2

    if-ge v5, v8, :cond_37

    .line 625
    aget-object v4, p1, v5

    .line 626
    .local v4, source:Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 627
    .local v2, oldPosition:I
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 628
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 624
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 630
    .end local v2           #oldPosition:I
    .end local v4           #source:Ljava/nio/ByteBuffer;
    :cond_37
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 631
    invoke-direct {p0, v6}, Lorg/apache/harmony/nio/internal/DatagramChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 632
    .local v3, result:I
    move v5, p2

    .line 633
    move v7, v3

    .line 634
    .local v7, written:I
    :goto_40
    if-lez v3, :cond_58

    .line 635
    aget-object v4, p1, v5

    .line 636
    .restart local v4       #source:Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 637
    .local v1, gap:I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 638
    add-int/lit8 v5, v5, 0x1

    .line 639
    sub-int/2addr v3, v1

    .line 640
    goto :goto_40

    .line 641
    .end local v1           #gap:I
    .end local v4           #source:Ljava/nio/ByteBuffer;
    :cond_58
    int-to-long v8, v7

    goto :goto_1e
.end method
