.class public Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;
.super Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;
.source "ServerHandshakeImpl.java"


# instance fields
.field private privKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter "owner"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;-><init>(Ljava/lang/Object;)V

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->status:I

    .line 80
    return-void
.end method

.method private findSessionToResume([B)Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    .registers 3
    .parameter "session_id"

    .prologue
    .line 684
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    return-object p0
.end method

.method private selectSuite([Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .registers 6
    .parameter "client_suites"

    .prologue
    .line 689
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2d

    .line 690
    aget-object v2, p1, v0

    iget-boolean v2, v2, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->supported:Z

    if-nez v2, :cond_d

    .line 689
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 694
    :cond_d
    const/4 v1, 0x0

    .local v1, j:I
    :goto_e
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_a

    .line 695
    aget-object v2, p1, v0

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 696
    aget-object v2, p1, v0

    .line 701
    .end local v1           #j:I
    :goto_29
    return-object v2

    .line 694
    .restart local v1       #j:I
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 701
    .end local v1           #j:I
    :cond_2d
    const/4 v2, 0x0

    goto :goto_29
.end method


# virtual methods
.method protected makeFinished()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 659
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v2, v2, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v2, v2, v3

    if-ne v2, v3, :cond_2f

    move v0, v3

    .line 660
    .local v0, isTLS:Z
    :goto_a
    if-eqz v0, :cond_32

    .line 661
    const/16 v2, 0xc

    new-array v1, v2, [B

    .line 662
    .local v1, verify_data:[B
    const-string v2, "server finished"

    invoke-virtual {p0, v2, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerVerifyDataTLS(Ljava/lang/String;[B)V

    .line 667
    :goto_15
    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-direct {v2, v1}, Lorg/apache/harmony/xnet/provider/jsse/Finished;-><init>([B)V

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    .line 668
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-virtual {p0, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 669
    iget-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    if-eqz v2, :cond_42

    .line 670
    if-eqz v0, :cond_3c

    .line 671
    const-string v2, "client finished"

    invoke-virtual {p0, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerReferenceVerifyDataTLS(Ljava/lang/String;)V

    .line 675
    :goto_2c
    iput v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->status:I

    .line 680
    :goto_2e
    return-void

    .line 659
    .end local v0           #isTLS:Z
    .end local v1           #verify_data:[B
    :cond_2f
    const/4 v2, 0x0

    move v0, v2

    goto :goto_a

    .line 664
    .restart local v0       #isTLS:Z
    :cond_32
    const/16 v2, 0x24

    new-array v1, v2, [B

    .line 665
    .restart local v1       #verify_data:[B
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->server:[B

    invoke-virtual {p0, v2, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerVerifyDataSSLv3([B[B)V

    goto :goto_15

    .line 673
    :cond_3c
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->client:[B

    invoke-virtual {p0, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerReferenceVerifyDataSSLv3([B)V

    goto :goto_2c

    .line 677
    :cond_42
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 678
    const/4 v2, 0x3

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->status:I

    goto :goto_2e
.end method

.method processClientHello()V
    .registers 41

    .prologue
    .line 367
    const/16 v24, 0x0

    .local v24, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    array-length v5, v5

    move/from16 v0, v24

    move v1, v5

    if-ge v0, v1, :cond_140

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    aget-byte v5, v5, v24

    if-nez v5, :cond_13c

    .line 376
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->isSupported([B)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 377
    const/16 v5, 0x46

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PROTOCOL VERSION. Unsupported client version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    const/4 v8, 0x0

    aget-byte v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    .line 383
    :cond_5b
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    array-length v5, v5

    if-eqz v5, :cond_99

    .line 388
    const/16 v33, 0x0

    .line 391
    .local v33, reuseCurrent:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v5, v0

    if-eqz v5, :cond_14f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_14f

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_14d

    .line 394
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    .line 422
    .end local v33           #reuseCurrent:Z
    :cond_99
    :goto_99
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    move v5, v0

    if-eqz v5, :cond_1bb

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v5, v0

    iget-object v9, v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 426
    .local v9, cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    const/16 v24, 0x0

    :goto_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v5, v5

    move/from16 v0, v24

    move v1, v5

    if-ge v0, v1, :cond_1ae

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    aget-object v5, v5, v24

    invoke-virtual {v9, v5}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1aa

    .line 447
    :goto_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setVersion([B)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-static {v6}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getByVersion([B)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    iput-object v6, v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clientRandom:[B

    .line 452
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->getId()[B

    move-result-object v8

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;-><init>(Ljava/security/SecureRandom;[B[BLorg/apache/harmony/xnet/provider/jsse/CipherSuite;B)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    iput-object v6, v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->serverRandom:[B

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 457
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    move v5, v0

    if-eqz v5, :cond_201

    .line 458
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->sendChangeCipherSpec()V

    .line 652
    .end local v9           #cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :goto_13b
    return-void

    .line 367
    :cond_13c
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    .line 372
    :cond_140
    const/16 v5, 0x28

    const-string v6, "HANDSHAKE FAILURE. Incorrect client hello message"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_1a

    .line 397
    .restart local v33       #reuseCurrent:Z
    :cond_14d
    const/16 v33, 0x1

    .line 401
    :cond_14f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->findSessionToResume([B)Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v35

    .line 402
    .local v35, sessionToResume:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    if-eqz v35, :cond_165

    invoke-virtual/range {v35 .. v35}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid()Z

    move-result v5

    if-nez v5, :cond_197

    .line 403
    :cond_165
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getEnableSessionCreation()Z

    move-result v5

    if-nez v5, :cond_18f

    .line 404
    if-eqz v33, :cond_184

    .line 406
    const/16 v5, 0x64

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->sendWarningAlert(B)V

    .line 407
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->status:I

    .line 408
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clearMessages()V

    goto :goto_13b

    .line 411
    :cond_184
    const/16 v5, 0x28

    const-string v6, "SSL Session may not be created"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    .line 415
    :cond_18f
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto/16 :goto_99

    .line 417
    :cond_197
    invoke-virtual/range {v35 .. v35}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 418
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    goto/16 :goto_99

    .line 426
    .end local v33           #reuseCurrent:Z
    .end local v35           #sessionToResume:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    .restart local v9       #cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :cond_1aa
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_a9

    .line 431
    :cond_1ae
    const/16 v5, 0x28

    const-string v6, "HANDSHAKE FAILURE. Incorrect client hello message"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_c5

    .line 435
    .end local v9           #cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :cond_1bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->selectSuite([Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v9

    .line 436
    .restart local v9       #cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    if-nez v9, :cond_1d6

    .line 437
    const/16 v5, 0x28

    const-string v6, "HANDSHAKE FAILURE. NO COMMON SUITE"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    .line 439
    :cond_1d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getEnableSessionCreation()Z

    move-result v5

    if-nez v5, :cond_1ec

    .line 440
    const/16 v5, 0x28

    const-string v6, "SSL Session may not be created"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    .line 443
    :cond_1ec
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-direct {v5, v9, v6}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;Ljava/security/SecureRandom;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto/16 :goto_c5

    .line 463
    :cond_201
    invoke-virtual {v9}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v5

    if-nez v5, :cond_2b8

    .line 464
    const/4 v14, 0x0

    .line 465
    .local v14, certs:[Ljava/security/cert/X509Certificate;
    const/4 v13, 0x0

    .line 466
    .local v13, certType:Ljava/lang/String;
    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    sget v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_RSA:I

    if-eq v5, v6, :cond_221

    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    sget v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_RSA_EXPORT:I

    if-eq v5, v6, :cond_221

    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    sget v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_RSA:I

    if-eq v5, v6, :cond_221

    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    sget v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_RSA_EXPORT:I

    if-ne v5, v6, :cond_261

    .line 470
    :cond_221
    const-string v13, "RSA"

    .line 480
    :cond_223
    :goto_223
    const/4 v12, 0x0

    .line 481
    .local v12, alias:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v26

    .line 482
    .local v26, km:Ljavax/net/ssl/X509KeyManager;
    move-object/from16 v0, v26

    instance-of v0, v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    move v5, v0

    if-eqz v5, :cond_282

    .line 483
    move-object/from16 v0, v26

    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    move-object/from16 v20, v0

    .line 490
    .local v20, ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    move-object v6, v0

    move-object/from16 v0, v20

    move-object v1, v13

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v12

    .line 495
    if-eqz v12, :cond_252

    .line 496
    move-object/from16 v0, v20

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v14

    .line 509
    .end local v20           #ekm:Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_252
    :goto_252
    if-nez v14, :cond_28a

    .line 510
    const/16 v5, 0x28

    const-string v6, "NO SERVER CERTIFICATE FOUND"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_13b

    .line 471
    .end local v12           #alias:Ljava/lang/String;
    .end local v26           #km:Ljavax/net/ssl/X509KeyManager;
    :cond_261
    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    sget v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_DSS:I

    if-eq v5, v6, :cond_26d

    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    sget v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_DSS_EXPORT:I

    if-ne v5, v6, :cond_270

    .line 473
    :cond_26d
    const-string v13, "DSA"

    goto :goto_223

    .line 474
    :cond_270
    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    sget v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DH_DSS:I

    if-ne v5, v6, :cond_279

    .line 475
    const-string v13, "DH_DSA"

    goto :goto_223

    .line 476
    :cond_279
    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    sget v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DH_RSA:I

    if-ne v5, v6, :cond_223

    .line 477
    const-string v13, "DH_RSA"

    goto :goto_223

    .line 503
    .restart local v12       #alias:Ljava/lang/String;
    .restart local v26       #km:Ljavax/net/ssl/X509KeyManager;
    :cond_282
    move-object/from16 v0, v26

    move-object v1, v12

    invoke-interface {v0, v1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v14

    goto :goto_252

    .line 513
    :cond_28a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object v5, v0

    iput-object v14, v5, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 514
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    invoke-direct {v5, v14}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;-><init>([Ljava/security/cert/X509Certificate;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v5

    invoke-interface {v5, v12}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 520
    .end local v12           #alias:Ljava/lang/String;
    .end local v13           #certType:Ljava/lang/String;
    .end local v14           #certs:[Ljava/security/cert/X509Certificate;
    .end local v26           #km:Ljavax/net/ssl/X509KeyManager;
    :cond_2b8
    const/16 v34, 0x0

    .line 521
    .local v34, rsakey:Ljava/security/interfaces/RSAPublicKey;
    const/16 v16, 0x0

    .line 522
    .local v16, dhkeySpec:Ljavax/crypto/spec/DHPublicKeySpec;
    const/16 v23, 0x0

    .line 523
    .local v23, hash:[B
    const/16 v29, 0x0

    .line 524
    .local v29, p:Ljava/math/BigInteger;
    const/16 v21, 0x0

    .line 526
    .local v21, g:Ljava/math/BigInteger;
    const/16 v28, 0x0

    .line 529
    .local v28, kpg:Ljava/security/KeyPairGenerator;
    :try_start_2c4
    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    sget v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_RSA_EXPORT:I

    if-ne v5, v6, :cond_439

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v31

    .line 531
    .local v31, pk:Ljava/security/PublicKey;
    invoke-static/range {v31 .. v31}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->getRSAKeyLength(Ljava/security/PublicKey;)I

    move-result v5

    const/16 v6, 0x200

    if-le v5, v6, :cond_2ee

    .line 533
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v28

    .line 534
    const/16 v5, 0x200

    move-object/from16 v0, v28

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V
    :try_end_2ee
    .catch Ljava/lang/Exception; {:try_start_2c4 .. :try_end_2ee} :catch_49d

    .line 556
    .end local v31           #pk:Ljava/security/PublicKey;
    :cond_2ee
    :goto_2ee
    if-eqz v28, :cond_3d7

    .line 558
    new-instance v17, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;

    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move-object/from16 v0, v17

    move v1, v5

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;-><init>(I)V

    .line 559
    .local v17, ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    const/16 v27, 0x0

    .line 561
    .local v27, kp:Ljava/security/KeyPair;
    :try_start_2fc
    invoke-virtual/range {v28 .. v28}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v27

    .line 562
    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    sget v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_RSA_EXPORT:I

    if-ne v5, v6, :cond_4af

    .line 563
    invoke-virtual/range {v27 .. v27}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v35

    move-object/from16 v0, v35

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    move-object/from16 v34, v0

    .line 575
    :goto_310
    invoke-virtual {v9}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v5

    if-nez v5, :cond_562

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    move-object v5, v0

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->init(Ljava/security/PrivateKey;)V

    .line 582
    invoke-virtual/range {v27 .. v27}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->getRandom()[B

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->getRandom()[B

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 587
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v39, v0

    .line 589
    .local v39, tmpLength:[B
    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    sget v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_RSA_EXPORT:I

    if-ne v5, v6, :cond_4d9

    .line 590
    invoke-interface/range {v34 .. v34}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v38

    .line 591
    .local v38, tmp:[B
    const/4 v5, 0x0

    move-object/from16 v0, v38

    array-length v0, v0

    move v6, v0

    const v7, 0xff00

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v39, v5

    .line 592
    const/4 v5, 0x1

    move-object/from16 v0, v38

    array-length v0, v0

    move v6, v0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v39, v5

    .line 593
    move-object/from16 v0, v17

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 594
    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 595
    invoke-interface/range {v34 .. v34}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v38

    .line 596
    const/4 v5, 0x0

    move-object/from16 v0, v38

    array-length v0, v0

    move v6, v0

    const v7, 0xff00

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v39, v5

    .line 597
    const/4 v5, 0x1

    move-object/from16 v0, v38

    array-length v0, v0

    move v6, v0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v39, v5

    .line 598
    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 613
    :goto_3a9
    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sign()[B
    :try_end_3ac
    .catch Ljava/lang/Exception; {:try_start_2fc .. :try_end_3ac} :catch_550

    move-result-object v23

    .line 621
    .end local v38           #tmp:[B
    .end local v39           #tmpLength:[B
    :goto_3ad
    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    sget v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_RSA_EXPORT:I

    if-ne v5, v6, :cond_56d

    .line 622
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    invoke-interface/range {v34 .. v34}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface/range {v34 .. v34}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    .line 628
    :goto_3cc
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 632
    .end local v17           #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    .end local v27           #kp:Ljava/security/KeyPair;
    :cond_3d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getWantClientAuth()Z

    move-result v5

    if-nez v5, :cond_3ed

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getNeedClientAuth()Z

    move-result v5

    if-eqz v5, :cond_41c

    .line 636
    :cond_3ed
    :try_start_3ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v37

    .line 637
    .local v37, tm:Ljavax/net/ssl/X509TrustManager;
    invoke-interface/range {v37 .. v37}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    :try_end_3f9
    .catch Ljava/lang/ClassCastException; {:try_start_3ed .. :try_end_3f9} :catch_585

    move-result-object v11

    .line 642
    .local v11, accepted:[Ljava/security/cert/X509Certificate;
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v32, v0

    fill-array-data v32, :array_59a

    .line 643
    .local v32, requestedClientCertTypes:[B
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object v0, v5

    move-object/from16 v1, v32

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;-><init>([B[Ljava/security/cert/X509Certificate;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 649
    .end local v11           #accepted:[Ljava/security/cert/X509Certificate;
    .end local v32           #requestedClientCertTypes:[B
    .end local v37           #tm:Ljavax/net/ssl/X509TrustManager;
    :cond_41c
    :goto_41c
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    invoke-direct {v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 651
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->status:I

    goto/16 :goto_13b

    .line 536
    :cond_439
    :try_start_439
    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    sget v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_DSS:I

    if-eq v5, v6, :cond_45d

    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    sget v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_DSS_EXPORT:I

    if-eq v5, v6, :cond_45d

    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    sget v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_RSA:I

    if-eq v5, v6, :cond_45d

    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    sget v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_RSA_EXPORT:I

    if-eq v5, v6, :cond_45d

    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    sget v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DH_anon:I

    if-eq v5, v6, :cond_45d

    iget v5, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    sget v6, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DH_anon_EXPORT:I
    :try_end_45b
    .catch Ljava/lang/Exception; {:try_start_439 .. :try_end_45b} :catch_49d

    if-ne v5, v6, :cond_2ee

    .line 543
    :cond_45d
    :try_start_45d
    const-string v5, "DH"

    invoke-static {v5}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    :try_end_462
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_45d .. :try_end_462} :catch_493
    .catch Ljava/lang/Exception; {:try_start_45d .. :try_end_462} :catch_49d

    move-result-object v28

    .line 547
    :goto_463
    :try_start_463
    new-instance v30, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/DHParameters;->getPrime()[B

    move-result-object v6

    move-object/from16 v0, v30

    move v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V
    :try_end_471
    .catch Ljava/lang/Exception; {:try_start_463 .. :try_end_471} :catch_49d

    .line 548
    .end local v29           #p:Ljava/math/BigInteger;
    .local v30, p:Ljava/math/BigInteger;
    :try_start_471
    new-instance v22, Ljava/math/BigInteger;

    const-string v5, "2"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_47b
    .catch Ljava/lang/Exception; {:try_start_471 .. :try_end_47b} :catch_58a

    .line 549
    .end local v21           #g:Ljava/math/BigInteger;
    .local v22, g:Ljava/math/BigInteger;
    :try_start_47b
    new-instance v36, Ljavax/crypto/spec/DHParameterSpec;

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 550
    .local v36, spec:Ljavax/crypto/spec/DHParameterSpec;
    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_48d
    .catch Ljava/lang/Exception; {:try_start_47b .. :try_end_48d} :catch_591

    move-object/from16 v21, v22

    .end local v22           #g:Ljava/math/BigInteger;
    .restart local v21       #g:Ljava/math/BigInteger;
    move-object/from16 v29, v30

    .end local v30           #p:Ljava/math/BigInteger;
    .restart local v29       #p:Ljava/math/BigInteger;
    goto/16 :goto_2ee

    .line 544
    .end local v36           #spec:Ljavax/crypto/spec/DHParameterSpec;
    :catch_493
    move-exception v5

    move-object/from16 v19, v5

    .line 545
    .local v19, ee:Ljava/security/NoSuchAlgorithmException;
    :try_start_496
    const-string v5, "DiffieHellman"

    invoke-static {v5}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    :try_end_49b
    .catch Ljava/lang/Exception; {:try_start_496 .. :try_end_49b} :catch_49d

    move-result-object v28

    goto :goto_463

    .line 552
    .end local v19           #ee:Ljava/security/NoSuchAlgorithmException;
    :catch_49d
    move-exception v5

    move-object/from16 v18, v5

    .line 553
    .local v18, e:Ljava/lang/Exception;
    :goto_4a0
    const/16 v5, 0x50

    const-string v6, "INTERNAL ERROR"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_2ee

    .line 565
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v17       #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    .restart local v27       #kp:Ljava/security/KeyPair;
    :cond_4af
    :try_start_4af
    invoke-virtual/range {v27 .. v27}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v15

    check-cast v15, Ljavax/crypto/interfaces/DHPublicKey;
    :try_end_4b5
    .catch Ljava/lang/Exception; {:try_start_4af .. :try_end_4b5} :catch_550

    .line 566
    .local v15, dhkey:Ljavax/crypto/interfaces/DHPublicKey;
    const/16 v25, 0x0

    .line 568
    .local v25, kf:Ljava/security/KeyFactory;
    :try_start_4b7
    const-string v5, "DH"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_4bc
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4b7 .. :try_end_4bc} :catch_4cf
    .catch Ljava/lang/Exception; {:try_start_4b7 .. :try_end_4bc} :catch_550

    move-result-object v25

    .line 572
    :goto_4bd
    :try_start_4bd
    const-class v5, Ljavax/crypto/spec/DHPublicKeySpec;

    move-object/from16 v0, v25

    move-object v1, v15

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljavax/crypto/spec/DHPublicKeySpec;

    move-object/from16 v16, v0

    goto/16 :goto_310

    .line 569
    :catch_4cf
    move-exception v5

    move-object/from16 v18, v5

    .line 570
    .local v18, e:Ljava/security/NoSuchAlgorithmException;
    const-string v5, "DiffieHellman"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v25

    goto :goto_4bd

    .line 600
    .end local v15           #dhkey:Ljavax/crypto/interfaces/DHPublicKey;
    .end local v18           #e:Ljava/security/NoSuchAlgorithmException;
    .end local v25           #kf:Ljava/security/KeyFactory;
    .restart local v39       #tmpLength:[B
    :cond_4d9
    invoke-virtual/range {v16 .. v16}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v38

    .line 601
    .restart local v38       #tmp:[B
    const/4 v5, 0x0

    move-object/from16 v0, v38

    array-length v0, v0

    move v6, v0

    const v7, 0xff00

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v39, v5

    .line 602
    const/4 v5, 0x1

    move-object/from16 v0, v38

    array-length v0, v0

    move v6, v0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v39, v5

    .line 603
    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 604
    invoke-virtual/range {v16 .. v16}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v38

    .line 605
    const/4 v5, 0x0

    move-object/from16 v0, v38

    array-length v0, v0

    move v6, v0

    const v7, 0xff00

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v39, v5

    .line 606
    const/4 v5, 0x1

    move-object/from16 v0, v38

    array-length v0, v0

    move v6, v0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v39, v5

    .line 607
    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V

    .line 608
    invoke-virtual/range {v16 .. v16}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v38

    .line 609
    const/4 v5, 0x0

    move-object/from16 v0, v38

    array-length v0, v0

    move v6, v0

    const v7, 0xff00

    and-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v39, v5

    .line 610
    const/4 v5, 0x1

    move-object/from16 v0, v38

    array-length v0, v0

    move v6, v0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v39, v5

    .line 611
    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->update([B)V
    :try_end_54e
    .catch Ljava/lang/Exception; {:try_start_4bd .. :try_end_54e} :catch_550

    goto/16 :goto_3a9

    .line 617
    .end local v38           #tmp:[B
    .end local v39           #tmpLength:[B
    :catch_550
    move-exception v5

    move-object/from16 v18, v5

    .line 618
    .local v18, e:Ljava/lang/Exception;
    const/16 v5, 0x50

    const-string v6, "INTERNAL ERROR"

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3ad

    .line 615
    .end local v18           #e:Ljava/lang/Exception;
    :cond_562
    :try_start_562
    invoke-virtual/range {v27 .. v27}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;
    :try_end_56b
    .catch Ljava/lang/Exception; {:try_start_562 .. :try_end_56b} :catch_550

    goto/16 :goto_3ad

    .line 625
    :cond_56d
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    invoke-virtual/range {v16 .. v16}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    move-object v3, v6

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    goto/16 :goto_3cc

    .line 638
    .end local v17           #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    .end local v27           #kp:Ljava/security/KeyPair;
    :catch_585
    move-exception v5

    move-object/from16 v18, v5

    .line 640
    .local v18, e:Ljava/lang/ClassCastException;
    goto/16 :goto_41c

    .line 552
    .end local v18           #e:Ljava/lang/ClassCastException;
    .end local v29           #p:Ljava/math/BigInteger;
    .restart local v30       #p:Ljava/math/BigInteger;
    :catch_58a
    move-exception v5

    move-object/from16 v18, v5

    move-object/from16 v29, v30

    .end local v30           #p:Ljava/math/BigInteger;
    .restart local v29       #p:Ljava/math/BigInteger;
    goto/16 :goto_4a0

    .end local v21           #g:Ljava/math/BigInteger;
    .end local v29           #p:Ljava/math/BigInteger;
    .restart local v22       #g:Ljava/math/BigInteger;
    .restart local v30       #p:Ljava/math/BigInteger;
    :catch_591
    move-exception v5

    move-object/from16 v18, v5

    move-object/from16 v21, v22

    .end local v22           #g:Ljava/math/BigInteger;
    .restart local v21       #g:Ljava/math/BigInteger;
    move-object/from16 v29, v30

    .end local v30           #p:Ljava/math/BigInteger;
    .restart local v29       #p:Ljava/math/BigInteger;
    goto/16 :goto_4a0

    .line 642
    :array_59a
    .array-data 0x1
        0x1t
        0x2t
    .end array-data
.end method

.method public receiveChangeCipherSpec()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 708
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    if-eqz v0, :cond_10

    .line 709
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    if-nez v0, :cond_d

    .line 710
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    .line 728
    :goto_c
    return-void

    .line 712
    :cond_d
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->changeCipherSpecReceived:Z

    goto :goto_c

    .line 715
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getNeedClientAuth()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v0, :cond_30

    :cond_1c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    if-nez v0, :cond_41

    .line 718
    :cond_30
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    .line 722
    :goto_33
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v0, v0, v1

    if-ne v0, v1, :cond_44

    .line 723
    const-string v0, "client finished"

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerReferenceVerifyDataTLS(Ljava/lang/String;)V

    goto :goto_c

    .line 720
    :cond_41
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->changeCipherSpecReceived:Z

    goto :goto_33

    .line 725
    :cond_44
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->client:[B

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerReferenceVerifyDataSSLv3([B)V

    goto :goto_c
.end method

.method public start()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 86
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-nez v0, :cond_8

    .line 87
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->status:I

    .line 98
    :cond_7
    :goto_7
    return-void

    .line 90
    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 96
    :cond_11
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->sendHelloRequest()V

    .line 97
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->status:I

    goto :goto_7
.end method

.method public unwrap([B)V
    .registers 23
    .parameter "bytes"

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->append([B)V

    .line 107
    .end local p1
    :cond_d
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v17

    if-lez v17, :cond_4e

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->mark()V

    .line 112
    :try_start_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v12

    .line 113
    .local v12, handshakeType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint24()I

    move-result v14

    .line 114
    .local v14, length:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v17

    move/from16 v0, v17

    move v1, v14

    if-ge v0, v1, :cond_4f

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    .line 321
    .end local v12           #handshakeType:I
    .end local v14           #length:I
    :cond_4e
    :goto_4e
    return-void

    .line 119
    .restart local v12       #handshakeType:I
    .restart local v14       #length:I
    :cond_4f
    sparse-switch v12, :sswitch_data_614

    .line 312
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_55} :catch_56

    goto :goto_4e

    .line 315
    .end local v12           #handshakeType:I
    .end local v14           #length:I
    :catch_56
    move-exception v17

    move-object/from16 v10, v17

    .line 317
    .local v10, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    goto :goto_4e

    .line 121
    .end local v10           #e:Ljava/io/IOException;
    .restart local v12       #handshakeType:I
    .restart local v14       #length:I
    :sswitch_63
    :try_start_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7d

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->status:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7d

    .line 123
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    goto :goto_4e

    .line 128
    :cond_7d
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->needSendHelloRequest:Z

    .line 129
    new-instance v17, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move v2, v14

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    .line 130
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->nonBlocking:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c7

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->delegatedTasks:Ljava/util/Vector;

    move-object/from16 v17, v0

    new-instance v18, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;

    new-instance v19, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;)V

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;-><init>(Ljava/security/PrivilegedExceptionAction;Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;Ljava/security/AccessControlContext;)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 142
    :cond_c7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->processClientHello()V

    goto/16 :goto_d

    .line 146
    :sswitch_cc
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    move/from16 v17, v0

    if-nez v17, :cond_ec

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v17, v0

    if-eqz v17, :cond_ec

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    move-object/from16 v17, v0

    if-eqz v17, :cond_ec

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f1

    .line 148
    :cond_ec
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_4e

    .line 151
    :cond_f1
    new-instance v17, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move v2, v14

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_135

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getNeedClientAuth()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 154
    const/16 v17, 0x28

    const-string v18, "HANDSHAKE FAILURE: no client certificate recived"

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_d

    .line 158
    :cond_135
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_14c} :catch_56

    move-result-object v6

    .line 161
    .local v6, authType:Ljava/lang/String;
    :try_start_14d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_16b
    .catch Ljava/security/cert/CertificateException; {:try_start_14d .. :try_end_16b} :catch_185
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_16b} :catch_56

    .line 167
    :goto_16b
    :try_start_16b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    goto/16 :goto_d

    .line 163
    :catch_185
    move-exception v17

    move-object/from16 v10, v17

    .line 164
    .local v10, e:Ljava/security/cert/CertificateException;
    const/16 v17, 0x2a

    const-string v18, "Untrusted Client Certificate "

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_16b

    .line 172
    .end local v6           #authType:Ljava/lang/String;
    .end local v10           #e:Ljava/security/cert/CertificateException;
    :sswitch_197
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    move/from16 v17, v0

    if-nez v17, :cond_1cb

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1cb

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1cb

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1cb

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    move-object/from16 v17, v0

    if-nez v17, :cond_1cb

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->changeCipherSpecReceived:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1d0

    .line 180
    :cond_1cb
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_4e

    .line 183
    :cond_1d0
    new-instance v17, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move v2, v14

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    .line 185
    new-instance v9, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v17, v0

    move-object v0, v9

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;-><init>(I)V

    .line 186
    .local v9, ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->init(Ljava/security/cert/Certificate;)V

    .line 187
    const/4 v15, 0x0

    .line 188
    .local v15, md5_hash:[B
    const/16 v16, 0x0

    .line 190
    .local v16, sha_hash:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v17, v0

    sget v18, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_RSA_EXPORT:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_281

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v17, v0

    sget v18, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_RSA:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_281

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v17, v0

    sget v18, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_RSA:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_281

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v17, v0

    sget v18, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_RSA_EXPORT:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2c2

    .line 194
    :cond_281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestMD5withoutLast()[B

    move-result-object v15

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHAwithoutLast()[B

    move-result-object v16

    .line 202
    :cond_295
    :goto_295
    invoke-virtual {v9, v15}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setMD5([B)V

    .line 203
    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setSHA([B)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;->signedHash:[B

    move-object/from16 v17, v0

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->verifySignature([B)Z

    move-result v17

    if-nez v17, :cond_d

    .line 205
    const/16 v17, 0x33

    const-string v18, "DECRYPT ERROR: CERTIFICATE_VERIFY incorrect signature"

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_d

    .line 196
    :cond_2c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v17, v0

    sget v18, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_DSS:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2f6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v17, v0

    sget v18, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_DSS_EXPORT:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_301

    .line 198
    :cond_2f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHAwithoutLast()[B

    move-result-object v16

    goto :goto_295

    .line 199
    :cond_301
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v17, v0

    sget v18, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DH_anon:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_295

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v17, v0

    sget v18, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DH_anon_EXPORT:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_295

    goto/16 :goto_295

    .line 210
    .end local v9           #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    .end local v15           #md5_hash:[B
    .end local v16           #sha_hash:[B
    :sswitch_337
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    move/from16 v17, v0

    if-nez v17, :cond_363

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    move-object/from16 v17, v0

    if-eqz v17, :cond_363

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v17, v0

    if-nez v17, :cond_363

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v17, v0

    if-nez v17, :cond_368

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getNeedClientAuth()Z

    move-result v17

    if-eqz v17, :cond_368

    .line 215
    :cond_363
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_4e

    .line 218
    :cond_368
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v17, v0

    sget v18, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_RSA:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_39c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v17, v0

    sget v18, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_RSA_EXPORT:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_491

    .line 220
    :cond_39c
    new-instance v17, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-byte v19, v19, v20

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_47b

    const/16 v19, 0x1

    :goto_3be
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move v2, v14

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;IZZ)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;
    :try_end_3d2
    .catch Ljava/io/IOException; {:try_start_16b .. :try_end_3d2} :catch_56

    .line 223
    const/4 v7, 0x0

    .line 225
    .local v7, c:Ljavax/crypto/Cipher;
    :try_start_3d3
    const-string v17, "RSA/ECB/PKCS1Padding"

    invoke-static/range {v17 .. v17}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 226
    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    move-object/from16 v18, v0

    move-object v0, v7

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    move-object/from16 v17, v0

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->preMasterSecret:[B

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->preMasterSecret:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x30

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_455

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->preMasterSecret:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-byte v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-byte v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_455

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->preMasterSecret:[B

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-byte v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-byte v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_476

    .line 235
    :cond_455
    const/16 v17, 0x30

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->preMasterSecret:[B

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->preMasterSecret:[B

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/security/SecureRandom;->nextBytes([B)V
    :try_end_476
    .catch Ljava/lang/Exception; {:try_start_3d3 .. :try_end_476} :catch_47f
    .catch Ljava/io/IOException; {:try_start_3d3 .. :try_end_476} :catch_56

    .line 289
    .end local v7           #c:Ljavax/crypto/Cipher;
    :cond_476
    :goto_476
    :try_start_476
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->computerMasterSecret()V

    goto/16 :goto_d

    .line 220
    :cond_47b
    const/16 v19, 0x0

    goto/16 :goto_3be

    .line 239
    .restart local v7       #c:Ljavax/crypto/Cipher;
    :catch_47f
    move-exception v17

    move-object/from16 v10, v17

    .line 240
    .local v10, e:Ljava/lang/Exception;
    const/16 v17, 0x50

    const-string v18, "INTERNAL ERROR"

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_476

    .line 244
    .end local v7           #c:Ljavax/crypto/Cipher;
    .end local v10           #e:Ljava/lang/Exception;
    :cond_491
    new-instance v17, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-byte v19, v19, v20

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4f9

    const/16 v19, 0x1

    :goto_4b3
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move v2, v14

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;IZZ)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_4fc

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface/range {p1 .. p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->preMasterSecret:[B
    :try_end_4f7
    .catch Ljava/io/IOException; {:try_start_476 .. :try_end_4f7} :catch_56

    goto/16 :goto_476

    .line 244
    :cond_4f9
    const/16 v19, 0x0

    goto :goto_4b3

    .line 258
    :cond_4fc
    const/4 v13, 0x0

    .line 260
    .local v13, kf:Ljava/security/KeyFactory;
    :try_start_4fd
    const-string v17, "DH"

    invoke-static/range {v17 .. v17}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_502
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4fd .. :try_end_502} :catch_574
    .catch Ljava/lang/Exception; {:try_start_4fd .. :try_end_502} :catch_561
    .catch Ljava/io/IOException; {:try_start_4fd .. :try_end_502} :catch_56

    move-result-object v13

    .line 266
    :goto_503
    :try_start_503
    const-string v17, "DH"

    invoke-static/range {v17 .. v17}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    :try_end_508
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_503 .. :try_end_508} :catch_57e
    .catch Ljava/lang/Exception; {:try_start_503 .. :try_end_508} :catch_561
    .catch Ljava/io/IOException; {:try_start_503 .. :try_end_508} :catch_56

    move-result-object v5

    .line 271
    .local v5, agreement:Ljavax/crypto/KeyAgreement;
    :goto_509
    :try_start_509
    new-instance v17, Ljavax/crypto/spec/DHPublicKeySpec;

    new-instance v18, Ljava/math/BigInteger;

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    move-object/from16 v20, v0

    invoke-direct/range {v17 .. v20}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v0, v13

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v8

    .line 278
    .local v8, clientPublic:Ljava/security/PublicKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->privKey:Ljava/security/PrivateKey;

    move-object/from16 v17, v0

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 279
    const/16 v17, 0x1

    move-object v0, v5

    move-object v1, v8

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 280
    invoke-virtual {v5}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->preMasterSecret:[B
    :try_end_55f
    .catch Ljava/lang/Exception; {:try_start_509 .. :try_end_55f} :catch_561
    .catch Ljava/io/IOException; {:try_start_509 .. :try_end_55f} :catch_56

    goto/16 :goto_476

    .line 281
    .end local v5           #agreement:Ljavax/crypto/KeyAgreement;
    .end local v8           #clientPublic:Ljava/security/PublicKey;
    :catch_561
    move-exception v17

    move-object/from16 v10, v17

    .line 282
    .restart local v10       #e:Ljava/lang/Exception;
    const/16 v17, 0x50

    :try_start_566
    const-string v18, "INTERNAL ERROR"

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_572
    .catch Ljava/io/IOException; {:try_start_566 .. :try_end_572} :catch_56

    goto/16 :goto_4e

    .line 261
    .end local v10           #e:Ljava/lang/Exception;
    :catch_574
    move-exception v17

    move-object/from16 v11, v17

    .line 262
    .local v11, ee:Ljava/security/NoSuchAlgorithmException;
    :try_start_577
    const-string v17, "DiffieHellman"

    invoke-static/range {v17 .. v17}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v13

    goto :goto_503

    .line 267
    .end local v11           #ee:Ljava/security/NoSuchAlgorithmException;
    :catch_57e
    move-exception v17

    move-object/from16 v11, v17

    .line 268
    .restart local v11       #ee:Ljava/security/NoSuchAlgorithmException;
    const-string v17, "DiffieHellman"

    invoke-static/range {v17 .. v17}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    :try_end_586
    .catch Ljava/lang/Exception; {:try_start_577 .. :try_end_586} :catch_561
    .catch Ljava/io/IOException; {:try_start_577 .. :try_end_586} :catch_56

    move-result-object v5

    .restart local v5       #agreement:Ljavax/crypto/KeyAgreement;
    goto :goto_509

    .line 293
    .end local v5           #agreement:Ljavax/crypto/KeyAgreement;
    .end local v11           #ee:Ljava/security/NoSuchAlgorithmException;
    .end local v13           #kf:Ljava/security/KeyFactory;
    :sswitch_588
    :try_start_588
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    move/from16 v17, v0

    if-nez v17, :cond_59d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->changeCipherSpecReceived:Z

    move/from16 v17, v0

    if-nez v17, :cond_59d

    .line 294
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_4e

    .line 298
    :cond_59d
    new-instance v17, Lorg/apache/harmony/xnet/provider/jsse/Finished;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move v2, v14

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Finished;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/Finished;->getData()[B

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->verifyFinished([B)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 304
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->isResuming:Z

    move/from16 v17, v0

    if-nez v17, :cond_5fa

    .line 305
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->sendChangeCipherSpec()V

    goto/16 :goto_d

    .line 307
    :cond_5fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 308
    const/16 v17, 0x3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->status:I
    :try_end_612
    .catch Ljava/io/IOException; {:try_start_588 .. :try_end_612} :catch_56

    goto/16 :goto_d

    .line 119
    :sswitch_data_614
    .sparse-switch
        0x1 -> :sswitch_63
        0xb -> :sswitch_cc
        0xf -> :sswitch_197
        0x10 -> :sswitch_337
        0x14 -> :sswitch_588
    .end sparse-switch
.end method

.method public unwrapSSLv2([B)V
    .registers 7
    .parameter "bytes"

    .prologue
    .line 329
    :try_start_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->append([B)V

    .line 330
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->mark()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_33

    .line 332
    :try_start_a
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_33

    .line 337
    :try_start_13
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->nonBlocking:Z

    if-eqz v1, :cond_3d

    .line 338
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->delegatedTasks:Ljava/util/Vector;

    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;

    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$2;

    invoke-direct {v3, p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl$2;-><init>(Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;)V

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v4

    invoke-direct {v2, v3, p0, v4}, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;-><init>(Ljava/security/PrivilegedExceptionAction;Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;Ljava/security/AccessControlContext;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 353
    :goto_2a
    return-void

    .line 333
    :catch_2b
    move-exception v1

    move-object v0, v1

    .line 334
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_32} :catch_33

    goto :goto_2a

    .line 350
    .end local v0           #e:Ljava/io/IOException;
    :catch_33
    move-exception v1

    move-object v0, v1

    .line 351
    .local v0, e:Ljava/lang/Exception;
    const/16 v1, 0x50

    const-string v2, "INTERNAL ERROR"

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2a

    .line 349
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3d
    :try_start_3d
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerHandshakeImpl;->processClientHello()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_33

    goto :goto_2a
.end method
