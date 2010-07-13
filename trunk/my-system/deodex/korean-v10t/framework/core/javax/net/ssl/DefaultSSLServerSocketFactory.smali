.class Ljavax/net/ssl/DefaultSSLServerSocketFactory;
.super Ljavax/net/ssl/SSLServerSocketFactory;
.source "DefaultSSLServerSocketFactory.java"


# instance fields
.field private errMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "mes"

    .prologue
    .line 57
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    .line 58
    iput-object p1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->errMessage:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public createServerSocket(I)Ljava/net/ServerSocket;
    .registers 4
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljava/net/SocketException;

    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->errMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .registers 5
    .parameter "port"
    .parameter "backlog"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljava/net/SocketException;

    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->errMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .registers 6
    .parameter "port"
    .parameter "backlog"
    .parameter "iAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/net/SocketException;

    iget-object v1, p0, Ljavax/net/ssl/DefaultSSLServerSocketFactory;->errMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
