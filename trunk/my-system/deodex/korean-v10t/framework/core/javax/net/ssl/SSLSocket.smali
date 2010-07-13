.class public abstract Ljavax/net/ssl/SSLSocket;
.super Ljava/net/Socket;
.source "SSLSocket.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 43
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "host"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .registers 5
    .parameter "host"
    .parameter "port"
    .parameter "clientAddress"
    .parameter "clientPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 110
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;I)V
    .registers 3
    .parameter "address"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 84
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .registers 5
    .parameter "address"
    .parameter "port"
    .parameter "clientAddress"
    .parameter "clientPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 134
    return-void
.end method


# virtual methods
.method public abstract addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
.end method

.method public abstract getEnableSessionCreation()Z
.end method

.method public abstract getEnabledCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getEnabledProtocols()[Ljava/lang/String;
.end method

.method public abstract getNeedClientAuth()Z
.end method

.method public abstract getSession()Ljavax/net/ssl/SSLSession;
.end method

.method public abstract getSupportedCipherSuites()[Ljava/lang/String;
.end method

.method public abstract getSupportedProtocols()[Ljava/lang/String;
.end method

.method public abstract getUseClientMode()Z
.end method

.method public abstract getWantClientAuth()Z
.end method

.method public abstract removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
.end method

.method public abstract setEnableSessionCreation(Z)V
.end method

.method public abstract setEnabledCipherSuites([Ljava/lang/String;)V
.end method

.method public abstract setEnabledProtocols([Ljava/lang/String;)V
.end method

.method public abstract setNeedClientAuth(Z)V
.end method

.method public abstract setUseClientMode(Z)V
.end method

.method public abstract setWantClientAuth(Z)V
.end method

.method public abstract startHandshake()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
