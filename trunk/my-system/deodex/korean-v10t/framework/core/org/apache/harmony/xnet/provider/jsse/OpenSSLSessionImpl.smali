.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
.super Ljava/lang/Object;
.source "OpenSSLSessionImpl.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# instance fields
.field private isValid:Z

.field lastAccessedTime:J

.field localCertificates:[Ljava/security/cert/X509Certificate;

.field private peerCertificateChain:[Ljavax/security/cert/X509Certificate;

.field peerCertificates:[Ljava/security/cert/X509Certificate;

.field private peerHost:Ljava/lang/String;

.field private peerPort:I

.field protected session:I

.field private final sessionContext:Ljavax/net/ssl/SSLSessionContext;

.field private sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

.field private values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;


# direct methods
.method protected constructor <init>(ILorg/apache/harmony/xnet/provider/jsse/SSLParameters;Ljava/lang/String;ILjavax/net/ssl/SSLSessionContext;)V
    .registers 8
    .parameter "session"
    .parameter "sslParameters"
    .parameter "peerHost"
    .parameter "peerPort"
    .parameter "sessionContext"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    .line 53
    new-instance v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-direct {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    .line 70
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->session:I

    .line 71
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    .line 72
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerHost:Ljava/lang/String;

    .line 73
    iput p4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerPort:I

    .line 74
    iput-object p5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sessionContext:Ljavax/net/ssl/SSLSessionContext;

    .line 75
    return-void
.end method

.method constructor <init>([BLorg/apache/harmony/xnet/provider/jsse/SSLParameters;Ljava/lang/String;I[Ljavax/security/cert/X509Certificate;Ljavax/net/ssl/SSLSessionContext;)V
    .registers 9
    .parameter "derData"
    .parameter "sslParameters"
    .parameter "peerHost"
    .parameter "peerPort"
    .parameter "peerCertificateChain"
    .parameter "sessionContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    .line 53
    new-instance v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-direct {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    .line 85
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    .line 86
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerHost:Ljava/lang/String;

    .line 87
    iput p4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerPort:I

    .line 88
    iput-object p5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    .line 89
    iput-object p6, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sessionContext:Ljavax/net/ssl/SSLSessionContext;

    .line 90
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->initializeNative([B)V

    .line 91
    return-void
.end method

.method private initializeNative([B)V
    .registers 4
    .parameter "derData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->nativedeserialize([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->session:I

    .line 141
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->session:I

    if-nez v0, :cond_13

    .line 142
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid session data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_13
    return-void
.end method

.method private native nativedeserialize([BI)I
.end method

.method private native nativefree(I)V
.end method

.method private native nativegetciphersuite()Ljava/lang/String;
.end method

.method private native nativegetcreationtime()J
.end method

.method private native nativegetid()[B
.end method

.method private native nativegetpeercertificates()[[B
.end method

.method private native nativegetpeerhost()Ljava/lang/String;
.end method

.method private native nativegetpeerport()Ljava/lang/String;
.end method

.method private native nativegetprotocol()Ljava/lang/String;
.end method

.method private native nativeserialize()[B
.end method


# virtual methods
.method protected finalize()V
    .registers 3

    .prologue
    .line 519
    const-class v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    monitor-enter v0

    .line 520
    :try_start_3
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->session:I

    invoke-direct {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->nativefree(I)V

    .line 521
    monitor-exit v0

    .line 522
    return-void

    .line 521
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public getApplicationBufferSize()I
    .registers 2

    .prologue
    .line 177
    sget v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_DATA_LENGTH:I

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 360
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->nativegetciphersuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTime()J
    .registers 3

    .prologue
    .line 153
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->nativegetcreationtime()J

    move-result-wide v0

    return-wide v0
.end method

.method getEncoded()[B
    .registers 2

    .prologue
    .line 131
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->nativeserialize()[B

    move-result-object v0

    return-object v0
.end method

.method public getId()[B
    .registers 2

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->nativegetid()[B

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessedTime()J
    .registers 5

    .prologue
    .line 165
    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    .line 166
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->nativegetcreationtime()J

    move-result-wide v0

    .line 168
    :goto_c
    return-wide v0

    :cond_d
    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    goto :goto_c
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 211
    const/4 v1, 0x0

    .line 213
    .local v1, localCertificates:[Ljava/security/cert/X509Certificate;
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "RSA"

    aput-object v5, v3, v4

    invoke-interface {v2, v3, v6, v6}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, alias:Ljava/lang/String;
    if-eqz v0, :cond_20

    .line 215
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v2

    invoke-interface {v2, v0}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 217
    :cond_20
    return-object v1
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_13

    .line 196
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 198
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getPacketBufferSize()I
    .registers 2

    .prologue
    .line 186
    sget v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_SSL_PACKET_SIZE:I

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    if-nez v3, :cond_37

    .line 240
    :try_start_4
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->nativegetpeercertificates()[[B

    move-result-object v0

    .line 241
    .local v0, bytes:[[B
    if-nez v0, :cond_1e

    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v4, "No certificate available"

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_12
    .catch Ljavax/security/cert/CertificateException; {:try_start_4 .. :try_end_12} :catch_12

    .line 250
    .end local v0           #bytes:[[B
    :catch_12
    move-exception v3

    move-object v1, v3

    .line 251
    .local v1, e:Ljavax/security/cert/CertificateException;
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljavax/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 243
    .end local v1           #e:Ljavax/security/cert/CertificateException;
    .restart local v0       #bytes:[[B
    :cond_1e
    :try_start_1e
    array-length v3, v0

    new-array v3, v3, [Ljavax/security/cert/X509Certificate;

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    .line 245
    const/4 v2, 0x0

    .local v2, i:I
    :goto_24
    array-length v3, v0

    if-ge v2, v3, :cond_34

    .line 246
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    aget-object v4, v0, v2

    invoke-static {v4}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v4

    aput-object v4, v3, v2

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 249
    :cond_34
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;
    :try_end_36
    .catch Ljavax/security/cert/CertificateException; {:try_start_1e .. :try_end_36} :catch_12

    .line 254
    .end local v0           #bytes:[[B
    .end local v2           #i:I
    :goto_36
    return-object v3

    :cond_37
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    goto :goto_36
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 269
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_48

    .line 270
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    if-nez v2, :cond_c

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    .line 272
    :cond_c
    :try_start_c
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    array-length v2, v2

    if-nez v2, :cond_15

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/security/cert/X509Certificate;

    .line 287
    :goto_14
    return-object v2

    .line 274
    :cond_15
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    array-length v2, v2

    new-array v2, v2, [Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    .line 275
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v2, v2

    if-ge v1, v2, :cond_36

    .line 276
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    new-instance v3, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljavax/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v3, v2, v1

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 278
    :cond_36
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;
    :try_end_38
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_c .. :try_end_38} :catch_39
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_38} :catch_3e
    .catch Ljavax/security/cert/CertificateEncodingException; {:try_start_c .. :try_end_38} :catch_43

    goto :goto_14

    .line 279
    .end local v1           #i:I
    :catch_39
    move-exception v2

    move-object v0, v2

    .line 280
    .local v0, e:Ljavax/net/ssl/SSLPeerUnverifiedException;
    new-array v2, v5, [Ljava/security/cert/X509Certificate;

    goto :goto_14

    .line 281
    .end local v0           #e:Ljavax/net/ssl/SSLPeerUnverifiedException;
    :catch_3e
    move-exception v2

    move-object v0, v2

    .line 282
    .local v0, e:Ljava/io/IOException;
    new-array v2, v5, [Ljava/security/cert/X509Certificate;

    goto :goto_14

    .line 283
    .end local v0           #e:Ljava/io/IOException;
    :catch_43
    move-exception v2

    move-object v0, v2

    .line 284
    .local v0, e:Ljavax/security/cert/CertificateEncodingException;
    new-array v2, v5, [Ljava/security/cert/X509Certificate;

    goto :goto_14

    .line 287
    .end local v0           #e:Ljavax/security/cert/CertificateEncodingException;
    :cond_48
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    goto :goto_14
.end method

.method public getPeerHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .registers 2

    .prologue
    .line 343
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerPort:I

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_c

    .line 303
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 377
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->nativegetprotocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 4

    .prologue
    .line 391
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 392
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 393
    new-instance v1, Ljavax/net/ssl/SSLPermission;

    const-string v2, "getSSLSessionContext"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 395
    :cond_10
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sessionContext:Ljavax/net/ssl/SSLSessionContext;

    return-object v1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "name"

    .prologue
    .line 436
    if-nez p1, :cond_a

    .line 437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 452
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 453
    .local v4, v:Ljava/util/Vector;
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    .line 455
    .local v1, current:Ljava/security/AccessControlContext;
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-virtual {v5}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 456
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 457
    .local v2, entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    invoke-virtual {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/AccessControlContext;

    .line 458
    .local v0, cont:Ljava/security/AccessControlContext;
    if-nez v1, :cond_29

    if-eqz v0, :cond_31

    :cond_29
    if-eqz v1, :cond_13

    invoke-virtual {v1, v0}, Ljava/security/AccessControlContext;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 460
    :cond_31
    invoke-virtual {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey1()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 463
    .end local v0           #cont:Ljava/security/AccessControlContext;
    .end local v2           #entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    :cond_39
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    .line 421
    return-void
.end method

.method public isValid()Z
    .registers 6

    .prologue
    .line 405
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sessionContext:Ljavax/net/ssl/SSLSessionContext;

    .line 406
    .local v0, context:Ljavax/net/ssl/SSLSessionContext;
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    if-eqz v1, :cond_21

    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v1

    if-eqz v1, :cond_21

    iget-wide v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    invoke-interface {v0}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_21

    .line 411
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    .line 413
    :cond_21
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->isValid:Z

    return v1
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .parameter "name"
    .parameter "value"

    .prologue
    .line 482
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 483
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 485
    :cond_c
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 486
    .local v0, old:Ljava/lang/Object;
    instance-of v1, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_24

    .line 487
    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    .end local p2
    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 490
    :cond_24
    if-eqz v0, :cond_34

    instance-of v1, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_34

    .line 491
    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    .end local v0           #old:Ljava/lang/Object;
    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 494
    :cond_34
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 507
    if-nez p1, :cond_a

    .line 508
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    return-void
.end method
