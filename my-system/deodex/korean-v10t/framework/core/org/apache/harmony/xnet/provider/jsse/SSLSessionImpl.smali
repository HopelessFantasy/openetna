.class public Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
.super Ljava/lang/Object;
.source "SSLSessionImpl.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# static fields
.field public static final NULL_SESSION:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;


# instance fields
.field cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

.field clientRandom:[B

.field context:Ljavax/net/ssl/SSLSessionContext;

.field private creationTime:J

.field id:[B

.field isServer:Z

.field private isValid:Z

.field lastAccessedTime:J

.field localCertificates:[Ljava/security/cert/X509Certificate;

.field master_secret:[B

.field peerCertificates:[Ljava/security/cert/X509Certificate;

.field peerHost:Ljava/lang/String;

.field peerPort:I

.field protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

.field serverRandom:[B

.field private values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 56
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Ljava/security/SecureRandom;)V

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->NULL_SESSION:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid:Z

    .line 60
    new-instance v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-direct {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerPort:I

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isServer:Z

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .registers 3
    .parameter "sr"

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;Ljava/security/SecureRandom;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;Ljava/security/SecureRandom;)V
    .registers 11
    .parameter "cipher_suite"
    .parameter "sr"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid:Z

    .line 60
    new-instance v2, Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-direct {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    .line 107
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerPort:I

    .line 128
    iput-boolean v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isServer:Z

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->creationTime:J

    .line 137
    iget-wide v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->creationTime:J

    iput-wide v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 138
    if-nez p1, :cond_2a

    .line 139
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->TLS_NULL_WITH_NULL_NULL:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 140
    new-array v2, v4, [B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    .line 141
    iput-boolean v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isServer:Z

    .line 154
    :goto_29
    return-void

    .line 143
    :cond_2a
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 144
    const/16 v2, 0x20

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    .line 145
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    invoke-virtual {p2, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 146
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 147
    .local v0, time:J
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    const/16 v3, 0x1c

    const-wide/32 v4, -0x1000000

    and-long/2addr v4, v0

    const/16 v6, 0x18

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 148
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    const/16 v3, 0x1d

    const-wide/32 v4, 0xff0000

    and-long/2addr v4, v0

    const/16 v6, 0x10

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 149
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    const/16 v3, 0x1e

    const-wide/32 v4, 0xff00

    and-long/2addr v4, v0

    const/16 v6, 0x8

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 150
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    const/16 v3, 0x1f

    const-wide/16 v4, 0xff

    and-long/2addr v4, v0

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 151
    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isServer:Z

    goto :goto_29
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 380
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>()V

    .line 381
    .local v0, ses:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    .line 382
    iget-wide v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->creationTime:J

    iput-wide v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->creationTime:J

    .line 383
    iget-wide v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    iput-wide v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 384
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid:Z

    iput-boolean v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid:Z

    .line 385
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 386
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 387
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    .line 388
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    .line 389
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clientRandom:[B

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clientRandom:[B

    .line 390
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->serverRandom:[B

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->serverRandom:[B

    .line 391
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerHost:Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerHost:Ljava/lang/String;

    .line 392
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerPort:I

    iput v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerPort:I

    .line 393
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isServer:Z

    iput-boolean v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isServer:Z

    .line 394
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    .line 395
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .line 396
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    .line 397
    return-object v0
.end method

.method public getApplicationBufferSize()I
    .registers 2

    .prologue
    .line 171
    sget v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_DATA_LENGTH:I

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTime()J
    .registers 3

    .prologue
    .line 185
    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->creationTime:J

    return-wide v0
.end method

.method public getId()[B
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    return-object v0
.end method

.method public getLastAccessedTime()J
    .registers 3

    .prologue
    .line 199
    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_13

    .line 214
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 216
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getPacketBufferSize()I
    .registers 2

    .prologue
    .line 224
    sget v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_SSL_PACKET_SIZE:I

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_c

    .line 233
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v3, "No peer certificate"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 235
    :cond_c
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v2, v2

    new-array v0, v2, [Ljavax/security/cert/X509Certificate;

    .line 236
    .local v0, certs:[Ljavax/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    array-length v2, v0

    if-ge v1, v2, :cond_26

    .line 238
    :try_start_15
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_23
    .catch Ljavax/security/cert/CertificateException; {:try_start_15 .. :try_end_23} :catch_29
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_15 .. :try_end_23} :catch_27

    .line 236
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 244
    :cond_26
    return-object v0

    .line 241
    :catch_27
    move-exception v2

    goto :goto_23

    .line 240
    :catch_29
    move-exception v2

    goto :goto_23
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_c

    .line 253
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerPort:I

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
    .line 276
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_c

    .line 277
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 4

    .prologue
    .line 293
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 294
    .local v0, sm:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 295
    new-instance v1, Ljavax/net/ssl/SSLPermission;

    const-string v2, "getSSLSessionContext"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 297
    :cond_10
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    return-object v1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "name"

    .prologue
    .line 304
    if-nez p1, :cond_a

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .registers 7

    .prologue
    .line 314
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 315
    .local v4, v:Ljava/util/Vector;
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    .line 317
    .local v1, current:Ljava/security/AccessControlContext;
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

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

    .line 318
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 319
    .local v2, entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    invoke-virtual {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/AccessControlContext;

    .line 320
    .local v0, cont:Ljava/security/AccessControlContext;
    if-nez v1, :cond_29

    if-eqz v0, :cond_31

    :cond_29
    if-eqz v1, :cond_13

    invoke-virtual {v1, v0}, Ljava/security/AccessControlContext;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 322
    :cond_31
    invoke-virtual {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->getKey1()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 325
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
    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid:Z

    .line 333
    return-void
.end method

.method public isValid()Z
    .registers 5

    .prologue
    .line 339
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v0

    if-eqz v0, :cond_25

    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    invoke-interface {v2}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid:Z

    .line 346
    :cond_25
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid:Z

    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .parameter "name"
    .parameter "value"

    .prologue
    .line 353
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 354
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 356
    :cond_c
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 357
    .local v0, old:Ljava/lang/Object;
    instance-of v1, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_24

    .line 358
    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    .end local p2
    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 361
    :cond_24
    if-eqz v0, :cond_34

    instance-of v1, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_34

    .line 362
    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    .end local v0           #old:Ljava/lang/Object;
    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 366
    :cond_34
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 372
    if-nez p1, :cond_a

    .line 373
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->values:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    return-void
.end method

.method setPeer(Ljava/lang/String;I)V
    .registers 3
    .parameter "peerHost"
    .parameter "peerPort"

    .prologue
    .line 407
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerHost:Ljava/lang/String;

    .line 408
    iput p2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerPort:I

    .line 409
    return-void
.end method
