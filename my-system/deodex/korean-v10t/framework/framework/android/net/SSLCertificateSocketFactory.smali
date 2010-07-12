.class public Landroid/net/SSLCertificateSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SSLCertificateSocketFactory.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SSLCertificateSocketFactory"

.field private static final TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;


# instance fields
.field private final mFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final mSocketReadTimeoutForSslHandshake:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Landroid/net/SSLCertificateSocketFactory$1;

    invoke-direct {v2}, Landroid/net/SSLCertificateSocketFactory$1;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/SSLCertificateSocketFactory;->TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "socketReadTimeoutForSslHandshake"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;)V

    .line 82
    return-void
.end method

.method private constructor <init>(ILorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;)V
    .registers 9
    .parameter "socketReadTimeoutForSslHandshake"
    .parameter "cache"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 86
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;-><init>()V

    .line 87
    .local v0, sslContext:Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;
    sget-object v2, Landroid/net/SSLCertificateSocketFactory;->TRUST_MANAGER:[Ljavax/net/ssl/TrustManager;

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    move-object v4, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;)V

    .line 90
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 91
    iput p1, p0, Landroid/net/SSLCertificateSocketFactory;->mSocketReadTimeoutForSslHandshake:I

    .line 92
    return-void
.end method

.method public static getDefault(I)Ljavax/net/SocketFactory;
    .registers 2
    .parameter "socketReadTimeoutForSslHandshake"

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;)Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getDefault(ILorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;)Ljavax/net/SocketFactory;
    .registers 6
    .parameter "socketReadTimeoutForSslHandshake"
    .parameter "cache"

    .prologue
    const/4 v2, 0x0

    const-string v3, "SSLCertificateSocketFactory"

    .line 121
    :try_start_3
    new-instance v1, Landroid/net/SSLCertificateSocketFactory;

    invoke-direct {v1, p0, p1}, Landroid/net/SSLCertificateSocketFactory;-><init>(ILorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;)V
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_8} :catch_9
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_8} :catch_14

    .line 131
    :goto_8
    return-object v1

    .line 122
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 123
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v1, "SSLCertificateSocketFactory"

    const-string v1, "SSLCertifcateSocketFactory.getDefault NoSuchAlgorithmException "

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 126
    goto :goto_8

    .line 127
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 128
    .local v0, e:Ljava/security/KeyManagementException;
    const-string v1, "SSLCertificateSocketFactory"

    const-string v1, "SSLCertifcateSocketFactory.getDefault KeyManagementException "

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .line 131
    goto :goto_8
.end method

.method private hasValidCertificateChain([Ljava/security/cert/Certificate;)Z
    .registers 8
    .parameter "certs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    if-eqz p1, :cond_17

    array-length v3, p1

    if-lez v3, :cond_17

    const/4 v3, 0x1

    move v2, v3

    .line 139
    .local v2, trusted:Z
    :goto_7
    if-eqz v2, :cond_16

    .line 142
    :try_start_9
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    check-cast p1, [Ljava/security/cert/X509Certificate;

    .end local p1
    check-cast p1, [Ljava/security/cert/X509Certificate;

    const-string v4, "RSA"

    invoke-interface {v3, p1, v4}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/security/GeneralSecurityException; {:try_start_9 .. :try_end_16} :catch_1a

    .line 154
    :cond_16
    :goto_16
    return v2

    .line 137
    .end local v2           #trusted:Z
    .restart local p1
    :cond_17
    const/4 v3, 0x0

    move v2, v3

    goto :goto_7

    .line 144
    .end local p1
    .restart local v2       #trusted:Z
    :catch_1a
    move-exception v3

    move-object v0, v3

    .line 145
    .local v0, e:Ljava/security/GeneralSecurityException;
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 147
    .local v1, exceptionMessage:Ljava/lang/String;
    :goto_23
    const-string v3, "SSLCertificateSocketFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasValidCertificateChain(): sec. exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v2, 0x0

    goto :goto_16

    .line 145
    .end local v1           #exceptionMessage:Ljava/lang/String;
    :cond_3d
    const-string v3, "none"

    move-object v1, v3

    goto :goto_23
.end method

.method private validateSocket(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .registers 9
    .parameter "sslSock"
    .parameter "destHost"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "SSLCertificateSocketFactory"

    .line 164
    const-string v4, "socket.relaxsslcheck"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, relaxSslCheck:Ljava/lang/String;
    const-string v4, "ro.secure"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, secure:Ljava/lang/String;
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "yes"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 171
    const-string v4, "SSLCertificateSocketFactory"

    const-string v4, "sys prop socket.relaxsslcheck is set, ignoring invalid certs"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_25
    return-void

    .line 177
    :cond_26
    const/4 v0, 0x0

    .line 178
    .local v0, certs:[Ljava/security/cert/Certificate;
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 179
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 180
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v4

    invoke-interface {v4}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 184
    if-nez v0, :cond_47

    .line 185
    const-string v4, "SSLCertificateSocketFactory"

    const-string v4, "[SSLCertificateSocketFactory] no trusted root CA"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v4, Ljava/io/IOException;

    const-string v5, "no trusted root CA"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 194
    :cond_47
    invoke-direct {p0, v0}, Landroid/net/SSLCertificateSocketFactory;->hasValidCertificateChain([Ljava/security/cert/Certificate;)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 196
    const-string v4, "SSLCertificateSocketFactory"

    const-string v4, "validateSocket(): certificate untrusted!"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Certificate untrusted"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 201
    :cond_5c
    const/4 v4, 0x0

    aget-object v1, v0, v4

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 203
    .local v1, lastChainCert:Ljava/security/cert/X509Certificate;
    invoke-static {v1, p2}, Landroid/net/http/DomainNameChecker;->match(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 205
    const-string v4, "SSLCertificateSocketFactory"

    const-string v4, "validateSocket(): domain name check failed"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Domain Name check failed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 5
    .parameter "s"
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 243
    .local v0, sslSock:Ljavax/net/ssl/SSLSocket;
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSocketReadTimeoutForSslHandshake:I

    if-ltz v1, :cond_11

    .line 244
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSocketReadTimeoutForSslHandshake:I

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 247
    :cond_11
    invoke-direct {p0, v0, p1}, Landroid/net/SSLCertificateSocketFactory;->validateSocket(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 248
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 250
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 7
    .parameter "s"
    .parameter "i"
    .parameter "inaddr"
    .parameter "j"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v1, p0, Landroid/net/SSLCertificateSocketFactory;->mFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 230
    .local v0, sslSock:Ljavax/net/ssl/SSLSocket;
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSocketReadTimeoutForSslHandshake:I

    if-ltz v1, :cond_11

    .line 231
    iget v1, p0, Landroid/net/SSLCertificateSocketFactory;->mSocketReadTimeoutForSslHandshake:I

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 234
    :cond_11
    invoke-direct {p0, v0, p1}, Landroid/net/SSLCertificateSocketFactory;->validateSocket(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 235
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 237
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 5
    .parameter "inaddr"
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot validate certification without a hostname"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 7
    .parameter "inaddr"
    .parameter "i"
    .parameter "inaddr2"
    .parameter "j"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot validate certification without a hostname"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 7
    .parameter "socket"
    .parameter "s"
    .parameter "i"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot validate certification without a hostname"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Landroid/net/SSLCertificateSocketFactory;->mFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
