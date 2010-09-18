.class public Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;
.super Ljava/nio/channels/ServerSocketChannel;
.source "ServerSocketChannelImpl.java"

# interfaces
.implements Lorg/apache/harmony/luni/platform/FileDescriptorHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$1;,
        Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;,
        Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$AcceptLock;
    }
.end annotation


# static fields
.field private static final SERVER_STATUS_CLOSED:I = 0x1

.field private static final SERVER_STATUS_OPEN:I = 0x0

.field private static final SERVER_STATUS_UNINIT:I = -0x1


# instance fields
.field private final acceptLock:Ljava/lang/Object;

.field private final fd:Ljava/io/FileDescriptor;

.field private final impl:Ljava/net/SocketImpl;

.field isBound:Z

.field private final socket:Ljava/net/ServerSocket;

.field status:I


# direct methods
.method private constructor <init>()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/ServerSocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->status:I

    .line 74
    iput-boolean v2, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->isBound:Z

    .line 78
    new-instance v0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$AcceptLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$AcceptLock;-><init>(Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$1;)V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->acceptLock:Ljava/lang/Object;

    .line 100
    iput v2, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->status:I

    .line 101
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 102
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lorg/apache/harmony/luni/net/SocketImplProvider;->getServerSocketImpl(Ljava/io/FileDescriptor;)Ljava/net/SocketImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->impl:Ljava/net/SocketImpl;

    .line 103
    new-instance v0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->impl:Ljava/net/SocketImpl;

    invoke-direct {v0, p0, v1, p0}, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;-><init>(Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;Ljava/net/SocketImpl;Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->socket:Ljava/net/ServerSocket;

    .line 104
    iput-boolean v2, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->isBound:Z

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .registers 5
    .parameter "sp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1}, Ljava/nio/channels/ServerSocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->status:I

    .line 74
    iput-boolean v2, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->isBound:Z

    .line 78
    new-instance v0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$AcceptLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$AcceptLock;-><init>(Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$1;)V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->acceptLock:Ljava/lang/Object;

    .line 89
    iput v2, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->status:I

    .line 90
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 91
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {}, Lorg/apache/harmony/luni/net/NetUtil;->preferIPv4Stack()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/apache/harmony/luni/platform/INetworkSystem;->createServerStreamSocket(Ljava/io/FileDescriptor;Z)V

    .line 93
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lorg/apache/harmony/luni/net/SocketImplProvider;->getServerSocketImpl(Ljava/io/FileDescriptor;)Ljava/net/SocketImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->impl:Ljava/net/SocketImpl;

    .line 94
    new-instance v0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->impl:Ljava/net/SocketImpl;

    invoke-direct {v0, p0, v1, p0}, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;-><init>(Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;Ljava/net/SocketImpl;Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->socket:Ljava/net/ServerSocket;

    .line 95
    return-void
.end method


# virtual methods
.method public accept()Ljava/nio/channels/SocketChannel;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->isOpen()Z

    move-result v5

    if-nez v5, :cond_c

    .line 125
    new-instance v5, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v5}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v5

    .line 127
    :cond_c
    iget-boolean v5, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->isBound:Z

    if-nez v5, :cond_16

    .line 128
    new-instance v5, Ljava/nio/channels/NotYetBoundException;

    invoke-direct {v5}, Ljava/nio/channels/NotYetBoundException;-><init>()V

    throw v5

    .line 131
    :cond_16
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    .line 132
    .local v2, sockChannel:Ljava/nio/channels/SocketChannel;
    invoke-virtual {v2}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    .line 135
    .local v3, socketGot:Ljava/net/Socket;
    :try_start_1e
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->begin()V

    .line 137
    iget-object v7, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->acceptLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_77

    .line 138
    :try_start_24
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_74

    .line 139
    :try_start_29
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->isBlocking()Z

    move-result v1

    .line 140
    .local v1, isBlocking:Z
    if-nez v1, :cond_57

    .line 143
    invoke-static {}, Lorg/apache/harmony/luni/platform/Platform;->getNetworkSystem()Lorg/apache/harmony/luni/platform/INetworkSystem;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/io/FileDescriptor;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    aput-object v10, v6, v9

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/io/FileDescriptor;

    const-wide/16 v10, 0x0

    invoke-interface {v5, v6, v9, v10, v11}, Lorg/apache/harmony/luni/platform/INetworkSystem;->select([Ljava/io/FileDescriptor;[Ljava/io/FileDescriptor;J)[I

    move-result-object v4

    .line 146
    .local v4, tryResult:[I
    array-length v5, v4

    if-eqz v5, :cond_4c

    const/4 v5, 0x0

    aget v5, v4, v5

    if-nez v5, :cond_57

    .line 148
    :cond_4c
    const/4 v5, 0x0

    monitor-exit v8
    :try_end_4e
    .catchall {:try_start_29 .. :try_end_4e} :catchall_71

    :try_start_4e
    monitor-exit v7
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_74

    .line 166
    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v6

    invoke-virtual {p0, v6}, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->end(Z)V

    .line 168
    .end local v4           #tryResult:[I
    :goto_56
    return-object v5

    .line 154
    :cond_57
    :try_start_57
    iget-object v5, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->socket:Ljava/net/ServerSocket;

    check-cast v5, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;

    move-object v0, v2

    check-cast v0, Lorg/apache/harmony/nio/internal/SocketChannelImpl;

    move-object v6, v0

    invoke-static {v5, v3, v6}, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;->access$100(Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;Ljava/net/Socket;Lorg/apache/harmony/nio/internal/SocketChannelImpl;)Ljava/net/Socket;
    :try_end_62
    .catchall {:try_start_57 .. :try_end_62} :catchall_71
    .catch Ljava/net/SocketTimeoutException; {:try_start_57 .. :try_end_62} :catch_6d

    .line 163
    :goto_62
    :try_start_62
    monitor-exit v8
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_71

    .line 164
    :try_start_63
    monitor-exit v7
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_74

    .line 166
    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    invoke-virtual {p0, v5}, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->end(Z)V

    move-object v5, v2

    .line 168
    goto :goto_56

    .line 158
    :catch_6d
    move-exception v5

    .line 162
    if-nez v1, :cond_57

    goto :goto_62

    .line 163
    .end local v1           #isBlocking:Z
    :catchall_71
    move-exception v5

    :try_start_72
    monitor-exit v8
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    :try_start_73
    throw v5

    .line 164
    :catchall_74
    move-exception v5

    monitor-exit v7
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_74

    :try_start_76
    throw v5
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_77

    .line 166
    :catchall_77
    move-exception v5

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v6

    invoke-virtual {p0, v6}, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->end(Z)V

    throw v5
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected declared-synchronized implCloseSelectableChannel()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->status:I

    .line 193
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_11

    .line 194
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_13

    .line 196
    :cond_11
    monitor-exit p0

    return-void

    .line 192
    :catchall_13
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
    .line 185
    return-void
.end method

.method public socket()Ljava/net/ServerSocket;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->socket:Ljava/net/ServerSocket;

    return-object v0
.end method
