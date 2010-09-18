.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;
.super Ljavax/net/ssl/SSLServerSocket;
.source "OpenSSLServerSocketImpl.java"


# static fields
.field private static SSL_OP_NO_SSLv3:J

.field private static SSL_OP_NO_TLSv1:J

.field private static SSL_VERIFY_CLIENT_ONCE:I

.field private static SSL_VERIFY_FAIL_IF_NO_PEER_CERT:I

.field private static SSL_VERIFY_NONE:I

.field private static SSL_VERIFY_PEER:I

.field private static final supportedProtocols:[Ljava/lang/String;


# instance fields
.field private client_mode:Z

.field private sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

.field private ssl_ctx:I

.field private ssl_op_no:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SSLv3"

    aput-object v1, v0, v2

    const-string v1, "TLSv1"

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->supportedProtocols:[Ljava/lang/String;

    .line 49
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->nativeinitstatic()V

    .line 136
    const-wide/32 v0, 0x2000000

    sput-wide v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->SSL_OP_NO_SSLv3:J

    .line 137
    const-wide/32 v0, 0x4000000

    sput-wide v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->SSL_OP_NO_TLSv1:J

    .line 248
    sput v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->SSL_VERIFY_NONE:I

    .line 249
    sput v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->SSL_VERIFY_PEER:I

    .line 250
    sput v4, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->SSL_VERIFY_FAIL_IF_NO_PEER_CERT:I

    .line 251
    const/4 v0, 0x4

    sput v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->SSL_VERIFY_CLIENT_ONCE:I

    return-void
.end method

.method protected constructor <init>(IILjava/net/InetAddress;Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V
    .registers 7
    .parameter "port"
    .parameter "backlog"
    .parameter "iAddress"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Ljavax/net/ssl/SSLServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->client_mode:Z

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->ssl_op_no:J

    .line 109
    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    .line 110
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->init()V

    .line 111
    return-void
.end method

.method protected constructor <init>(IILorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V
    .registers 6
    .parameter "port"
    .parameter "backlog"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLServerSocket;-><init>(II)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->client_mode:Z

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->ssl_op_no:J

    .line 102
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    .line 103
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->init()V

    .line 104
    return-void
.end method

.method protected constructor <init>(ILorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V
    .registers 5
    .parameter "port"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0, p1}, Ljavax/net/ssl/SSLServerSocket;-><init>(I)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->client_mode:Z

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->ssl_op_no:J

    .line 95
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    .line 96
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->init()V

    .line 97
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V
    .registers 4
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocket;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->client_mode:Z

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->ssl_op_no:J

    .line 88
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    .line 89
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->init()V

    .line 90
    return-void
.end method

.method private findSuite(Ljava/lang/String;)Z
    .registers 7
    .parameter "suite"

    .prologue
    .line 216
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->nativegetsupportedciphersuites()[Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, supportedCipherSuites:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 218
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    return v2

    .line 217
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 219
    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Protocol "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private init()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 59
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v8

    const-string v9, "RSA"

    invoke-interface {v8, v9, v11, v11}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, alias:Ljava/lang/String;
    if-nez v0, :cond_17

    .line 61
    new-instance v8, Ljava/io/IOException;

    const-string v9, "No suitable certificates found"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 64
    :cond_17
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v8

    invoke-interface {v8, v0}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v5

    .line 65
    .local v5, privateKey:Ljava/security/PrivateKey;
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v8

    invoke-interface {v8, v0}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 67
    .local v3, certificates:[Ljava/security/cert/X509Certificate;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 68
    .local v6, privateKeyOS:Ljava/io/ByteArrayOutputStream;
    new-instance v7, Lorg/bouncycastle/openssl/PEMWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-direct {v8, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v8}, Lorg/bouncycastle/openssl/PEMWriter;-><init>(Ljava/io/Writer;)V

    .line 69
    .local v7, privateKeyPEMWriter:Lorg/bouncycastle/openssl/PEMWriter;
    invoke-virtual {v7, v5}, Lorg/bouncycastle/openssl/PEMWriter;->writeObject(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v7}, Lorg/bouncycastle/openssl/PEMWriter;->close()V

    .line 72
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 73
    .local v1, certificateOS:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lorg/bouncycastle/openssl/PEMWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-direct {v8, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v8}, Lorg/bouncycastle/openssl/PEMWriter;-><init>(Ljava/io/Writer;)V

    .line 75
    .local v2, certificateWriter:Lorg/bouncycastle/openssl/PEMWriter;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_50
    array-length v8, v3

    if-ge v4, v8, :cond_5b

    .line 76
    aget-object v8, v3, v4

    invoke-virtual {v2, v8}, Lorg/bouncycastle/openssl/PEMWriter;->writeObject(Ljava/lang/Object;)V

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    .line 78
    :cond_5b
    invoke-virtual {v2}, Lorg/bouncycastle/openssl/PEMWriter;->close()V

    .line 80
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v10}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getSecureRandomMember()Ljava/security/SecureRandom;

    move-result-object v10

    if-eqz v10, :cond_7e

    iget-object v10, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v10}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getSecureRandomMember()Ljava/security/SecureRandom;

    move-result-object v10

    const/16 v11, 0x400

    invoke-virtual {v10, v11}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v10

    :goto_7a
    invoke-direct {p0, v8, v9, v10}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->nativeinit(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 83
    return-void

    :cond_7e
    move-object v10, v11

    .line 80
    goto :goto_7a
.end method

.method private native nativefree()V
.end method

.method private native nativegetenabledciphersuites()[Ljava/lang/String;
.end method

.method static native nativegetsupportedciphersuites()[Ljava/lang/String;
.end method

.method private native nativeinit(Ljava/lang/String;Ljava/lang/String;[B)V
.end method

.method private static native nativeinitstatic()V
.end method

.method private native nativesetclientauth(I)V
.end method

.method private native nativesetenabledciphersuites(Ljava/lang/String;)V
.end method

.method private native nativesetenabledprotocols(J)V
.end method

.method private setClientAuth()V
    .registers 4

    .prologue
    .line 260
    sget v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->SSL_VERIFY_NONE:I

    .line 262
    .local v0, value:I
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getNeedClientAuth()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 263
    sget v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->SSL_VERIFY_PEER:I

    sget v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->SSL_VERIFY_FAIL_IF_NO_PEER_CERT:I

    or-int/2addr v1, v2

    sget v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->SSL_VERIFY_CLIENT_ONCE:I

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 268
    :cond_13
    :goto_13
    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->nativesetclientauth(I)V

    .line 269
    return-void

    .line 264
    :cond_17
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getWantClientAuth()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 265
    sget v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->SSL_VERIFY_PEER:I

    sget v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->SSL_VERIFY_CLIENT_ONCE:I

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    goto :goto_13
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    iget-wide v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->ssl_op_no:J

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;J)V

    .line 307
    .local v0, socket:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->implAccept(Ljava/net/Socket;)V

    .line 308
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->ssl_ctx:I

    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->client_mode:Z

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->accept(IZ)V

    .line 310
    return-object v0
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->nativefree()V

    .line 329
    invoke-super {p0}, Ljavax/net/ssl/SSLServerSocket;->close()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 330
    monitor-exit p0

    return-void

    .line 328
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->close()V

    .line 324
    :cond_9
    return-void
.end method

.method public getEnableSessionCreation()Z
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->nativegetenabledciphersuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-wide v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->ssl_op_no:J

    sget-wide v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->SSL_OP_NO_SSLv3:J

    and-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-nez v1, :cond_18

    .line 149
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->supportedProtocols:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_18
    iget-wide v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->ssl_op_no:J

    sget-wide v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->SSL_OP_NO_TLSv1:J

    and-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-nez v1, :cond_29

    .line 152
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->supportedProtocols:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getNeedClientAuth()Z
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->nativegetsupportedciphersuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->supportedProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getUseClientMode()Z
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public setEnableSessionCreation(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->setEnableSessionCreation(Z)V

    .line 121
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 6
    .parameter "suites"

    .prologue
    .line 233
    if-nez p1, :cond_a

    .line 234
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Provided parameter is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    :cond_a
    const-string v0, ""

    .line 237
    .local v0, controlString:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    array-length v2, p1

    if-ge v1, v2, :cond_36

    .line 238
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->findSuite(Ljava/lang/String;)Z

    .line 239
    if-nez v1, :cond_1c

    aget-object v0, p1, v1

    .line 237
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 240
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 242
    :cond_36
    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->nativesetenabledciphersuites(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .registers 7
    .parameter "protocols"

    .prologue
    .line 170
    if-nez p1, :cond_a

    .line 171
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provided parameter is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    :cond_a
    sget-wide v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->SSL_OP_NO_SSLv3:J

    sget-wide v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->SSL_OP_NO_TLSv1:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->ssl_op_no:J

    .line 176
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    array-length v1, p1

    if-ge v0, v1, :cond_5c

    .line 177
    aget-object v1, p1, v0

    const-string v2, "SSLv3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 178
    iget-wide v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->ssl_op_no:J

    sget-wide v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->SSL_OP_NO_SSLv3:J

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->ssl_op_no:J

    .line 176
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 179
    :cond_29
    aget-object v1, p1, v0

    const-string v2, "TLSv1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 180
    iget-wide v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->ssl_op_no:J

    sget-wide v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->SSL_OP_NO_TLSv1:J

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->ssl_op_no:J

    goto :goto_26

    .line 181
    :cond_3b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Protocol "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_5c
    iget-wide v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->ssl_op_no:J

    invoke-direct {p0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->nativesetenabledprotocols(J)V

    .line 186
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .registers 3
    .parameter "need"

    .prologue
    .line 289
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->setNeedClientAuth(Z)V

    .line 290
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->setClientAuth()V

    .line 291
    return-void
.end method

.method public setUseClientMode(Z)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 295
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->setUseClientMode(Z)V

    .line 296
    return-void
.end method

.method public setWantClientAuth(Z)V
    .registers 3
    .parameter "want"

    .prologue
    .line 278
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->setWantClientAuth(Z)V

    .line 279
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLServerSocketImpl;->setClientAuth()V

    .line 280
    return-void
.end method
