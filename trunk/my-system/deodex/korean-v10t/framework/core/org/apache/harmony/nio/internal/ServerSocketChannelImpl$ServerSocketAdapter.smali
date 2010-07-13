.class Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;
.super Ljava/net/ServerSocket;
.source "ServerSocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerSocketAdapter"
.end annotation


# instance fields
.field channelImpl:Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;

.field final synthetic this$0:Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;


# direct methods
.method constructor <init>(Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;Ljava/net/SocketImpl;Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;)V
    .registers 4
    .parameter
    .parameter "impl"
    .parameter "aChannelImpl"

    .prologue
    .line 222
    iput-object p1, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;->this$0:Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;

    .line 223
    invoke-direct {p0, p2}, Ljava/net/ServerSocket;-><init>(Ljava/net/SocketImpl;)V

    .line 224
    iput-object p3, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;

    .line 225
    return-void
.end method

.method private accept(Ljava/net/Socket;Lorg/apache/harmony/nio/internal/SocketChannelImpl;)Ljava/net/Socket;
    .registers 7
    .parameter "aSocket"
    .parameter "sockChannel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    const/4 v0, 0x0

    .line 264
    .local v0, connectOK:Z
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_2c

    .line 265
    :try_start_2
    invoke-super {p0, p1}, Ljava/net/ServerSocket;->implAccept(Ljava/net/Socket;)V

    .line 266
    invoke-virtual {p2}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->setConnected()V

    .line 269
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lorg/apache/harmony/nio/internal/SocketChannelImpl;->setBound(Z)V

    .line 271
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_29

    .line 272
    :try_start_d
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 273
    .local v1, sm:Ljava/lang/SecurityManager;
    if-eqz v1, :cond_22

    .line 274
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/SecurityManager;->checkAccept(Ljava/lang/String;I)V
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_2c

    .line 277
    :cond_22
    const/4 v0, 0x1

    .line 279
    if-nez v0, :cond_28

    .line 280
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 283
    :cond_28
    return-object p1

    .line 271
    .end local v1           #sm:Ljava/lang/SecurityManager;
    :catchall_29
    move-exception v2

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2c

    .line 279
    :catchall_2c
    move-exception v2

    if-nez v0, :cond_32

    .line 280
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    :cond_32
    throw v2
.end method

.method static synthetic access$100(Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;Ljava/net/Socket;Lorg/apache/harmony/nio/internal/SocketChannelImpl;)Ljava/net/Socket;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;->accept(Ljava/net/Socket;Lorg/apache/harmony/nio/internal/SocketChannelImpl;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;->this$0:Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;

    iget-boolean v1, v1, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->isBound:Z

    if-nez v1, :cond_c

    .line 246
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 248
    :cond_c
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    .line 249
    .local v0, sc:Ljava/nio/channels/SocketChannel;
    if-nez v0, :cond_1a

    .line 250
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    .line 252
    :cond_1a
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    return-object v1
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .registers 4
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-super {p0, p1}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 307
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->isBound:Z

    .line 308
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;I)V
    .registers 5
    .parameter "localAddr"
    .parameter "backlog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-super {p0, p1, p2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 234
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->isBound:Z

    .line 235
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
    .line 314
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;

    monitor-enter v0

    .line 315
    :try_start_3
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 316
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->close()V

    .line 320
    :goto_10
    iget-object v1, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;

    const/4 v2, 0x1

    iput v2, v1, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->status:I

    .line 321
    monitor-exit v0

    .line 322
    return-void

    .line 318
    :cond_17
    invoke-super {p0}, Ljava/net/ServerSocket;->close()V

    goto :goto_10

    .line 321
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public getChannel()Ljava/nio/channels/ServerSocketChannel;
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;

    return-object v0
.end method

.method public isBound()Z
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl$ServerSocketAdapter;->channelImpl:Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;

    iget-boolean v0, v0, Lorg/apache/harmony/nio/internal/ServerSocketChannelImpl;->isBound:Z

    return v0
.end method
