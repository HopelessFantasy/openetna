.class public abstract Ljavax/net/ServerSocketFactory;
.super Ljava/lang/Object;
.source "ServerSocketFactory.java"


# static fields
.field static defaultFactory:Ljavax/net/ServerSocketFactory;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static declared-synchronized getDefault()Ljavax/net/ServerSocketFactory;
    .registers 2

    .prologue
    .line 55
    const-class v0, Ljavax/net/ServerSocketFactory;

    monitor-enter v0

    :try_start_3
    sget-object v1, Ljavax/net/ServerSocketFactory;->defaultFactory:Ljavax/net/ServerSocketFactory;

    if-nez v1, :cond_e

    .line 56
    new-instance v1, Ljavax/net/DefaultServerSocketFactory;

    invoke-direct {v1}, Ljavax/net/DefaultServerSocketFactory;-><init>()V

    sput-object v1, Ljavax/net/ServerSocketFactory;->defaultFactory:Ljavax/net/ServerSocketFactory;

    .line 58
    :cond_e
    sget-object v1, Ljavax/net/ServerSocketFactory;->defaultFactory:Ljavax/net/ServerSocketFactory;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 55
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public createServerSocket()Ljava/net/ServerSocket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Unbound server sockets not implemented"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract createServerSocket(I)Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createServerSocket(II)Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
