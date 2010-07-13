.class public abstract Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;
.super Ljava/lang/Object;
.source "HandshakeProtocol.java"


# static fields
.field public static final FINISHED:I = 0x3

.field public static final NEED_TASK:I = 0x4

.field public static final NEED_UNWRAP:I = 0x1

.field public static final NOT_HANDSHAKING:I = 0x2


# instance fields
.field protected certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

.field protected certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

.field protected changeCipherSpecReceived:Z

.field protected clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

.field protected clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

.field protected clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

.field protected clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

.field protected delegatedTaskErr:Ljava/lang/Exception;

.field protected delegatedTasks:Ljava/util/Vector;

.field public engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

.field protected io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

.field protected isResuming:Z

.field private master_secret_bytes:[B

.field private needSendCCSpec:Z

.field protected needSendHelloRequest:Z

.field protected nonBlocking:Z

.field protected parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

.field protected preMasterSecret:[B

.field protected recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

.field protected serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

.field protected serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

.field protected serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

.field protected serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

.field protected serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

.field protected session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

.field protected status:I

.field private verify_data:[B


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .parameter "owner"

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    .line 77
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    .line 92
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTasks:Ljava/util/Vector;

    .line 122
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->changeCipherSpecReceived:Z

    .line 127
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->isResuming:Z

    .line 140
    const/16 v0, 0xc

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->verify_data:[B

    .line 143
    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_3e

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->master_secret_bytes:[B

    .line 147
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendCCSpec:Z

    .line 150
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendHelloRequest:Z

    .line 169
    instance-of v0, p1, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    if-eqz v0, :cond_3d

    .line 170
    check-cast p1, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    .end local p1
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->nonBlocking:Z

    .line 172
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    .line 181
    :cond_3d
    return-void

    .line 143
    :array_3e
    .array-data 0x1
        0x6dt
        0x61t
        0x73t
        0x74t
        0x65t
        0x72t
        0x20t
        0x73t
        0x65t
        0x63t
        0x72t
        0x65t
        0x74t
    .end array-data
.end method

.method protected static getRSAKeyLength(Ljava/security/PublicKey;)I
    .registers 4
    .parameter "pk"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 522
    instance-of v2, p0, Ljava/security/interfaces/RSAKey;

    if-eqz v2, :cond_f

    .line 523
    check-cast p0, Ljava/security/interfaces/RSAKey;

    .end local p0
    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 529
    .local v1, mod:Ljava/math/BigInteger;
    :goto_a
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    return v2

    .line 525
    .end local v1           #mod:Ljava/math/BigInteger;
    .restart local p0
    :cond_f
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 526
    .local v0, kf:Ljava/security/KeyFactory;
    const-class v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v0, p0, v2}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {p0}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .restart local v1       #mod:Ljava/math/BigInteger;
    goto :goto_a
.end method


# virtual methods
.method protected clearMessages()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 497
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->clearBuffer()V

    .line 498
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    .line 499
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    .line 500
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    .line 501
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    .line 502
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    .line 503
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    .line 504
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    .line 505
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    .line 506
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    .line 507
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    .line 508
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    .line 509
    return-void
.end method

.method public computerMasterSecret()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x20

    const/4 v5, 0x0

    .line 458
    const/16 v2, 0x40

    new-array v1, v2, [B

    .line 459
    .local v1, seed:[B
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->getRandom()[B

    move-result-object v2

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->getRandom()[B

    move-result-object v2

    invoke-static {v2, v5, v1, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    const/16 v3, 0x30

    new-array v3, v3, [B

    iput-object v3, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    .line 462
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v2, v2, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v2, v2, v4

    if-ne v2, v4, :cond_48

    .line 464
    :try_start_2a
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v2, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->master_secret_bytes:[B

    invoke-static {v2, v3, v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->computePRF([B[B[B[B)V
    :try_end_35
    .catch Ljava/security/GeneralSecurityException; {:try_start_2a .. :try_end_35} :catch_3e

    .line 474
    :goto_35
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 475
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    .line 476
    return-void

    .line 466
    :catch_3e
    move-exception v2

    move-object v0, v2

    .line 467
    .local v0, e:Ljava/security/GeneralSecurityException;
    const/16 v2, 0x50

    const-string v3, "PRF error"

    invoke-virtual {p0, v2, v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_35

    .line 470
    .end local v0           #e:Ljava/security/GeneralSecurityException;
    :cond_48
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v2, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    invoke-static {v2, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->computePRF_SSLv3([B[B[B)V

    goto :goto_35
.end method

.method protected computerReferenceVerifyDataSSLv3([B)V
    .registers 3
    .parameter "sender"

    .prologue
    .line 379
    const/16 v0, 0x24

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->verify_data:[B

    .line 380
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->verify_data:[B

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->computerVerifyDataSSLv3([B[B)V

    .line 381
    return-void
.end method

.method protected computerReferenceVerifyDataTLS(Ljava/lang/String;)V
    .registers 3
    .parameter "label"

    .prologue
    .line 348
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->verify_data:[B

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->computerVerifyDataTLS(Ljava/lang/String;[B)V

    .line 349
    return-void
.end method

.method protected computerVerifyDataSSLv3([B[B)V
    .registers 13
    .parameter "sender"
    .parameter "buf"

    .prologue
    const/16 v9, 0x50

    .line 393
    :try_start_2
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 394
    .local v3, md5:Ljava/security/MessageDigest;
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_6a

    move-result-object v4

    .line 400
    .local v4, sha:Ljava/security/MessageDigest;
    :try_start_e
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getMessages()[B

    move-result-object v2

    .line 401
    .local v2, hanshake_messages:[B
    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 402
    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 403
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 404
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->MD5pad1:[B

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 405
    .local v0, b:[B
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 406
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->MD5pad2:[B

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 407
    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v5, v6, p2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 410
    invoke-virtual {v4, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 411
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 412
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->SHApad1:[B

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 413
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 414
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->SHApad2:[B

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 415
    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/16 v8, 0x14

    invoke-static {v5, v6, p2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_69} :catch_72

    .line 420
    .end local v0           #b:[B
    .end local v2           #hanshake_messages:[B
    .end local v3           #md5:Ljava/security/MessageDigest;
    .end local v4           #sha:Ljava/security/MessageDigest;
    :goto_69
    return-void

    .line 395
    :catch_6a
    move-exception v5

    move-object v1, v5

    .line 396
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Could not initialize the Digest Algorithms."

    invoke-virtual {p0, v9, v5, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_69

    .line 416
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #md5:Ljava/security/MessageDigest;
    .restart local v4       #sha:Ljava/security/MessageDigest;
    :catch_72
    move-exception v5

    move-object v1, v5

    .line 417
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v5, "INTERNAL ERROR"

    invoke-virtual {p0, v9, v5, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_69
.end method

.method protected computerVerifyDataTLS(Ljava/lang/String;[B)V
    .registers 10
    .parameter "label"
    .parameter "buf"

    .prologue
    const/4 v6, 0x0

    .line 358
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestMD5()[B

    move-result-object v2

    .line 359
    .local v2, md5_digest:[B
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHA()[B

    move-result-object v3

    .line 361
    .local v3, sha_digest:[B
    array-length v4, v2

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v0, v4, [B

    .line 362
    .local v0, digest:[B
    array-length v4, v2

    invoke-static {v2, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    array-length v4, v2

    array-length v5, v3

    invoke-static {v3, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    :try_start_1b
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {p2, v4, v5, v0}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->computePRF([B[B[B[B)V
    :try_end_26
    .catch Ljava/security/GeneralSecurityException; {:try_start_1b .. :try_end_26} :catch_27

    .line 371
    :goto_26
    return-void

    .line 368
    :catch_27
    move-exception v4

    move-object v1, v4

    .line 369
    .local v1, e:Ljava/security/GeneralSecurityException;
    const/16 v4, 0x50

    const-string v5, "PRF error"

    invoke-virtual {p0, v4, v5, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_26
.end method

.method protected fatalAlert(BLjava/lang/String;)V
    .registers 5
    .parameter "description"
    .parameter "reason"

    .prologue
    .line 318
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v1, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v0
.end method

.method protected fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V
    .registers 6
    .parameter "description"
    .parameter "reason"
    .parameter "cause"

    .prologue
    .line 329
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, p2, p3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v0, p1, v1}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v0
.end method

.method protected fatalAlert(BLjavax/net/ssl/SSLException;)V
    .registers 4
    .parameter "description"
    .parameter "cause"

    .prologue
    .line 339
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v0
.end method

.method public getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    return-object v0
.end method

.method public getStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->hasData()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendCCSpec:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendHelloRequest:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTaskErr:Ljava/lang/Exception;

    if-eqz v0, :cond_17

    .line 216
    :cond_14
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 230
    :goto_16
    return-object v0

    .line 218
    :cond_17
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 219
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_16

    .line 222
    :cond_22
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    packed-switch v0, :pswitch_data_36

    .line 230
    :pswitch_27
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_16

    .line 224
    :pswitch_2a
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_16

    .line 226
    :pswitch_2d
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    .line 227
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clearMessages()V

    .line 228
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_16

    .line 222
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_27
        :pswitch_2d
    .end packed-switch
.end method

.method public getTask()Ljava/lang/Runnable;
    .registers 4

    .prologue
    .line 483
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTasks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 484
    const/4 v1, 0x0

    .line 488
    :goto_9
    return-object v1

    .line 486
    :cond_a
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTasks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 487
    .local v0, task:Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTasks:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-object v1, v0

    .line 488
    goto :goto_9
.end method

.method abstract makeFinished()V
.end method

.method abstract receiveChangeCipherSpec()V
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 448
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/Message;->getType()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint8(J)V

    .line 449
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/Message;->length()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint24(J)V

    .line 450
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/Message;->send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V

    .line 451
    return-void
.end method

.method protected sendChangeCipherSpec()V
    .registers 2

    .prologue
    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendCCSpec:Z

    .line 244
    return-void
.end method

.method protected sendHelloRequest()V
    .registers 2

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendHelloRequest:Z

    .line 248
    return-void
.end method

.method protected sendWarningAlert(B)V
    .registers 4
    .parameter "description"

    .prologue
    .line 308
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->alert(BB)V

    .line 309
    return-void
.end method

.method public setRecordProtocol(Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;)V
    .registers 2
    .parameter "recordProtocol"

    .prologue
    .line 188
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    .line 189
    return-void
.end method

.method protected shutdown()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 537
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clearMessages()V

    .line 538
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 539
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->preMasterSecret:[B

    .line 540
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTasks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 541
    return-void
.end method

.method public abstract start()V
.end method

.method protected stop()V
    .registers 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->clearMessages()V

    .line 206
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->status:I

    .line 207
    return-void
.end method

.method protected unexpectedMessage()V
    .registers 3

    .prologue
    .line 439
    const/16 v0, 0xa

    const-string v1, "UNEXPECTED MESSAGE"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    .line 440
    return-void
.end method

.method public abstract unwrap([B)V
.end method

.method public abstract unwrapSSLv2([B)V
.end method

.method protected verifyFinished([B)V
    .registers 4
    .parameter "data"

    .prologue
    .line 429
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->verify_data:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_f

    .line 430
    const/16 v0, 0x28

    const-string v1, "Incorrect FINISED"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;)V

    .line 432
    :cond_f
    return-void
.end method

.method public wrap()[B
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x16

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 277
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTaskErr:Ljava/lang/Exception;

    if-eqz v1, :cond_29

    .line 279
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTaskErr:Ljava/lang/Exception;

    .line 280
    .local v0, e:Ljava/lang/Exception;
    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->delegatedTaskErr:Ljava/lang/Exception;

    .line 281
    const/16 v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occured in delegated task:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    .line 284
    .end local v0           #e:Ljava/lang/Exception;
    :cond_29
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->hasData()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 285
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v1, v6, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(BLorg/apache/harmony/xnet/provider/jsse/DataStream;)[B

    move-result-object v1

    .line 298
    :goto_39
    return-object v1

    .line 286
    :cond_3a
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendCCSpec:Z

    if-eqz v1, :cond_4e

    .line 287
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->makeFinished()V

    .line 288
    iput-boolean v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendCCSpec:Z

    .line 289
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getChangeCipherSpecMesage(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)[B

    move-result-object v1

    goto :goto_39

    .line 290
    :cond_4e
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendHelloRequest:Z

    if-eqz v1, :cond_60

    .line 291
    iput-boolean v4, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->needSendHelloRequest:Z

    .line 292
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    new-array v2, v5, [B

    fill-array-data v2, :array_62

    invoke-virtual {v1, v6, v2, v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(B[BII)[B

    move-result-object v1

    goto :goto_39

    :cond_60
    move-object v1, v7

    .line 298
    goto :goto_39

    .line 292
    :array_62
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
