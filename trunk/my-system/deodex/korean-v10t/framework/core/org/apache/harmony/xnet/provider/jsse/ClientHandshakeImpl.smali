.class public Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;
.super Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;
.source "ClientHandshakeImpl.java"


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter "owner"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;-><init>(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method private findSessionToResume()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    .registers 6

    .prologue
    .line 610
    const/4 v1, 0x0

    .line 611
    .local v1, host:Ljava/lang/String;
    const/4 v2, -0x1

    .line 612
    .local v2, port:I
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    if-eqz v4, :cond_12

    .line 613
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    .line 614
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->engineOwner:Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLEngineImpl;->getPeerPort()I

    move-result v2

    .line 616
    :cond_12
    if-eqz v1, :cond_17

    const/4 v4, -0x1

    if-ne v2, v4, :cond_19

    .line 617
    :cond_17
    const/4 v4, 0x0

    .line 626
    :goto_18
    return-object v4

    .line 620
    :cond_19
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v0

    .line 621
    .local v0, context:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v3

    check-cast v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 623
    .local v3, session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    if-eqz v3, :cond_2d

    .line 624
    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    check-cast v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .restart local v3       #session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    :cond_2d
    move-object v4, v3

    .line 626
    goto :goto_18
.end method

.method private renegotiateNewSession()V
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getEnableSessionCreation()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    .line 111
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 112
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getLatestVersion([Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .line 114
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setVersion([B)V

    .line 115
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->startSession()V

    .line 120
    :goto_34
    return-void

    .line 117
    :cond_35
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->status:I

    .line 118
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->sendWarningAlert(B)V

    goto :goto_34
.end method

.method private startSession()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 127
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    if-eqz v1, :cond_35

    .line 128
    new-array v0, v5, [Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v2, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    aput-object v2, v0, v1

    .line 134
    .local v0, cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :goto_e
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v4, v4, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;-><init>(Ljava/security/SecureRandom;[B[B[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    .line 136
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v2, v2, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    iput-object v2, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clientRandom:[B

    .line 137
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 138
    iput v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->status:I

    .line 139
    return-void

    .line 131
    .end local v0           #cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :cond_35
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v0

    .restart local v0       #cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    goto :goto_e
.end method

.method private verifyServerCert()V
    .registers 5

    .prologue
    .line 550
    const/4 v0, 0x0

    .line 551
    .local v0, authType:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v2, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget v2, v2, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    packed-switch v2, :pswitch_data_44

    .line 584
    :goto_a
    :try_start_a
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v3, v0}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_17} :catch_39

    .line 590
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v3, v3, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    iput-object v3, v2, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    .line 591
    :goto_1f
    :pswitch_1f
    return-void

    .line 553
    :pswitch_20
    const-string v0, "RSA"

    .line 554
    goto :goto_a

    .line 556
    :pswitch_23
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    if-eqz v2, :cond_2a

    .line 558
    const-string v0, "RSA_EXPORT"

    goto :goto_a

    .line 560
    :cond_2a
    const-string v0, "RSA"

    .line 562
    goto :goto_a

    .line 565
    :pswitch_2d
    const-string v0, "DHE_DSS"

    .line 566
    goto :goto_a

    .line 569
    :pswitch_30
    const-string v0, "DHE_RSA"

    .line 570
    goto :goto_a

    .line 573
    :pswitch_33
    const-string v0, "DH_DSS"

    .line 574
    goto :goto_a

    .line 577
    :pswitch_36
    const-string v0, "DH_RSA"

    .line 578
    goto :goto_a

    .line 586
    :catch_39
    move-exception v2

    move-object v1, v2

    .line 587
    .local v1, e:Ljava/security/cert/CertificateException;
    const/16 v2, 0x2a

    const-string v3, "Not trusted server certificate"

    invoke-virtual {p0, v2, v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1f

    .line 551
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_20
        :pswitch_23
        :pswitch_2d
        :pswitch_2d
        :pswitch_30
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_1f
        :pswitch_1f
        :pswitch_33
        :pswitch_36
    .end packed-switch
.end method


# virtual methods
.method protected makeFinished()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 350
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v1, v1, v2

    if-ne v1, v2, :cond_2e

    .line 351
    const/16 v1, 0xc

    new-array v0, v1, [B

    .line 352
    .local v0, verify_data:[B
    const-string v1, "client finished"

    invoke-virtual {p0, v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerVerifyDataTLS(Ljava/lang/String;[B)V

    .line 357
    :goto_12
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-direct {v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/Finished;-><init>([B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    .line 358
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 359
    iget-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    if-eqz v1, :cond_38

    .line 360
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 361
    const/4 v1, 0x3

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->status:I

    .line 370
    :goto_2d
    return-void

    .line 354
    .end local v0           #verify_data:[B
    :cond_2e
    const/16 v1, 0x24

    new-array v0, v1, [B

    .line 355
    .restart local v0       #verify_data:[B
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->client:[B

    invoke-virtual {p0, v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerVerifyDataSSLv3([B[B)V

    goto :goto_12

    .line 363
    :cond_38
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    aget-byte v1, v1, v2

    if-ne v1, v2, :cond_48

    .line 364
    const-string v1, "server finished"

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerReferenceVerifyDataTLS(Ljava/lang/String;)V

    .line 368
    :goto_45
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->status:I

    goto :goto_2d

    .line 366
    :cond_48
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->server:[B

    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerReferenceVerifyDataSSLv3([B)V

    goto :goto_45
.end method

.method processServerHelloDone()V
    .registers 27

    .prologue
    .line 377
    const/4 v8, 0x0

    .line 379
    .local v8, clientKey:Ljava/security/PrivateKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v21, v0

    if-eqz v21, :cond_26e

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v21, v0

    sget v22, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DH_anon:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v21, v0

    sget v22, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DH_anon_EXPORT:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_41

    .line 382
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    .line 544
    :goto_40
    return-void

    .line 385
    :cond_41
    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->verifyServerCert()V

    .line 395
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b8

    .line 396
    const/4 v6, 0x0

    .line 397
    .local v6, certs:[Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/X509ExtendedKeyManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->getTypesAsString()[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;->certificate_authorities:[Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object v0, v4

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v7

    .line 401
    .local v7, clientAlias:Ljava/lang/String;
    if-eqz v7, :cond_92

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v15

    check-cast v15, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 404
    .local v15, km:Ljavax/net/ssl/X509ExtendedKeyManager;
    invoke-virtual {v15, v7}, Ljavax/net/ssl/X509ExtendedKeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 405
    invoke-virtual {v15, v7}, Ljavax/net/ssl/X509ExtendedKeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v8

    .line 407
    .end local v15           #km:Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_92
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v21, v0

    move-object v0, v6

    move-object/from16 v1, v21

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 408
    new-instance v21, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;-><init>([Ljava/security/cert/X509Certificate;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 412
    .end local v6           #certs:[Ljava/security/cert/X509Certificate;
    .end local v7           #clientAlias:Ljava/lang/String;
    :cond_b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v21, v0

    sget v22, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_RSA:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_ec

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v21, v0

    sget v22, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_RSA_EXPORT:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2ed

    .line 417
    :cond_ec
    :try_start_ec
    const-string v21, "RSA/ECB/PKCS1Padding"

    invoke-static/range {v21 .. v21}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 418
    .local v5, c:Ljavax/crypto/Cipher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2a7

    .line 419
    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v22

    move-object v0, v5

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_10e} :catch_2c3

    .line 429
    :goto_10e
    const/16 v21, 0x30

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->preMasterSecret:[B

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->preMasterSecret:[B

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->preMasterSecret:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x2

    invoke-static/range {v21 .. v25}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    :try_start_14a
    new-instance v21, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->preMasterSecret:[B

    move-object/from16 v22, v0

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-byte v23, v23, v24

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2d6

    const/16 v23, 0x1

    :goto_173
    invoke-direct/range {v21 .. v23}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>([BZ)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;
    :try_end_17c
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_17c} :catch_2da

    .line 512
    .end local v5           #c:Ljavax/crypto/Cipher;
    :goto_17c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v21, v0

    if-eqz v21, :cond_191

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 516
    :cond_191
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerMasterSecret()V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v21, v0

    if-eqz v21, :cond_269

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_269

    .line 522
    new-instance v10, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v21, v0

    move-object v0, v10

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;-><init>(I)V

    .line 524
    .local v10, ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    invoke-virtual {v10, v8}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->init(Ljava/security/PrivateKey;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v21, v0

    sget v22, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_RSA_EXPORT:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_22d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v21, v0

    sget v22, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_RSA:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_22d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v21, v0

    sget v22, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_RSA:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_22d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v21, v0

    sget v22, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_RSA_EXPORT:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4ab

    .line 530
    :cond_22d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestMD5()[B

    move-result-object v21

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setMD5([B)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHA()[B

    move-result-object v21

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setSHA([B)V

    .line 539
    :cond_24d
    :goto_24d
    new-instance v21, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    invoke-virtual {v10}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->sign()[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;-><init>([B)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->certificateVerify:Lorg/apache/harmony/xnet/provider/jsse/CertificateVerify;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->send(Lorg/apache/harmony/xnet/provider/jsse/Message;)V

    .line 543
    .end local v10           #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    :cond_269
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->sendChangeCipherSpec()V

    goto/16 :goto_40

    .line 387
    :cond_26e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v21, v0

    sget v22, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DH_anon:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v21, v0

    sget v22, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DH_anon_EXPORT:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_44

    .line 389
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_40

    .line 422
    .restart local v5       #c:Ljavax/crypto/Cipher;
    :cond_2a7
    const/16 v21, 0x1

    :try_start_2a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object v0, v5

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;)V
    :try_end_2c1
    .catch Ljava/lang/Exception; {:try_start_2a9 .. :try_end_2c1} :catch_2c3

    goto/16 :goto_10e

    .line 424
    .end local v5           #c:Ljavax/crypto/Cipher;
    :catch_2c3
    move-exception v21

    move-object/from16 v11, v21

    .line 425
    .local v11, e:Ljava/lang/Exception;
    const/16 v21, 0x50

    const-string v22, "Unexpected exception"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_40

    .line 434
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v5       #c:Ljavax/crypto/Cipher;
    :cond_2d6
    const/16 v23, 0x0

    goto/16 :goto_173

    .line 437
    :catch_2da
    move-exception v21

    move-object/from16 v11, v21

    .line 438
    .restart local v11       #e:Ljava/lang/Exception;
    const/16 v21, 0x50

    const-string v22, "Unexpected exception"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_40

    .line 444
    .end local v5           #c:Ljavax/crypto/Cipher;
    .end local v11           #e:Ljava/lang/Exception;
    :cond_2ed
    const/4 v4, 0x0

    .line 447
    .local v4, agreement:Ljavax/crypto/KeyAgreement;
    const/4 v14, 0x0

    .line 449
    .local v14, kf:Ljava/security/KeyFactory;
    :try_start_2ef
    const-string v21, "DH"

    invoke-static/range {v21 .. v21}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_2f4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2ef .. :try_end_2f4} :catch_457
    .catch Ljava/lang/Exception; {:try_start_2ef .. :try_end_2f4} :catch_444

    move-result-object v14

    .line 455
    :goto_2f5
    :try_start_2f5
    const-string v21, "DH"

    invoke-static/range {v21 .. v21}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    :try_end_2fa
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2f5 .. :try_end_2fa} :catch_462
    .catch Ljava/lang/Exception; {:try_start_2f5 .. :try_end_2fa} :catch_444

    move-result-object v4

    .line 460
    :goto_2fb
    const/16 v17, 0x0

    .line 462
    .local v17, kpg:Ljava/security/KeyPairGenerator;
    :try_start_2fd
    const-string v21, "DH"

    invoke-static/range {v21 .. v21}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    :try_end_302
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2fd .. :try_end_302} :catch_46d
    .catch Ljava/lang/Exception; {:try_start_2fd .. :try_end_302} :catch_444

    move-result-object v17

    .line 466
    :goto_303
    :try_start_303
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v21, v0

    if-eqz v21, :cond_478

    .line 467
    new-instance v21, Ljavax/crypto/spec/DHPublicKeySpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    move-object/from16 v24, v0

    invoke-direct/range {v21 .. v24}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v18

    .line 470
    .local v18, serverPublic:Ljava/security/PublicKey;
    new-instance v20, Ljavax/crypto/spec/DHParameterSpec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 476
    .local v20, spec:Ljavax/crypto/spec/DHParameterSpec;
    :goto_358
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 478
    invoke-virtual/range {v17 .. v17}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v16

    .line 479
    .local v16, kp:Ljava/security/KeyPair;
    invoke-virtual/range {v16 .. v16}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v13

    .line 480
    .local v13, key:Ljava/security/Key;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v21, v0

    if-eqz v21, :cond_498

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v21, v0

    if-eqz v21, :cond_498

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v21, v0

    sget v22, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_RSA:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v21, v0

    sget v22, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_DSS:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_498

    .line 484
    :cond_3ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    .line 485
    .local v9, client_pk:Ljava/security/PublicKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v19

    .line 486
    .local v19, server_pk:Ljava/security/PublicKey;
    move-object v0, v9

    instance-of v0, v0, Ljavax/crypto/interfaces/DHKey;

    move/from16 v21, v0

    if-eqz v21, :cond_427

    move-object/from16 v0, v19

    instance-of v0, v0, Ljavax/crypto/interfaces/DHKey;

    move/from16 v21, v0

    if-eqz v21, :cond_427

    .line 488
    move-object v0, v9

    check-cast v0, Ljavax/crypto/interfaces/DHKey;

    move-object v10, v0

    invoke-interface {v10}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v21

    move-object/from16 v0, v19

    check-cast v0, Ljavax/crypto/interfaces/DHKey;

    move-object/from16 v20, v0

    .end local v20           #spec:Ljavax/crypto/spec/DHParameterSpec;
    invoke-interface/range {v20 .. v20}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_427

    check-cast v9, Ljavax/crypto/interfaces/DHKey;

    .end local v9           #client_pk:Ljava/security/PublicKey;
    invoke-interface {v9}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v21

    check-cast v19, Ljavax/crypto/interfaces/DHKey;

    .end local v19           #server_pk:Ljava/security/PublicKey;
    invoke-interface/range {v19 .. v19}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_427

    .line 495
    new-instance v21, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    invoke-direct/range {v21 .. v21}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    .line 502
    .end local v13           #key:Ljava/security/Key;
    :cond_427
    :goto_427
    invoke-virtual/range {v16 .. v16}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v13

    .line 503
    .restart local v13       #key:Ljava/security/Key;
    invoke-virtual {v4, v13}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 504
    const/16 v21, 0x1

    move-object v0, v4

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 505
    invoke-virtual {v4}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->preMasterSecret:[B
    :try_end_442
    .catch Ljava/lang/Exception; {:try_start_303 .. :try_end_442} :catch_444

    goto/16 :goto_17c

    .line 506
    .end local v13           #key:Ljava/security/Key;
    .end local v16           #kp:Ljava/security/KeyPair;
    .end local v17           #kpg:Ljava/security/KeyPairGenerator;
    .end local v18           #serverPublic:Ljava/security/PublicKey;
    :catch_444
    move-exception v21

    move-object/from16 v11, v21

    .line 507
    .restart local v11       #e:Ljava/lang/Exception;
    const/16 v21, 0x50

    const-string v22, "Unexpected exception"

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_40

    .line 450
    .end local v11           #e:Ljava/lang/Exception;
    :catch_457
    move-exception v21

    move-object/from16 v11, v21

    .line 451
    .local v11, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_45a
    const-string v21, "DiffieHellman"

    invoke-static/range {v21 .. v21}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v14

    goto/16 :goto_2f5

    .line 456
    .end local v11           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_462
    move-exception v21

    move-object/from16 v12, v21

    .line 457
    .local v12, ee:Ljava/security/NoSuchAlgorithmException;
    const-string v21, "DiffieHellman"

    invoke-static/range {v21 .. v21}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v4

    goto/16 :goto_2fb

    .line 463
    .end local v12           #ee:Ljava/security/NoSuchAlgorithmException;
    .restart local v17       #kpg:Ljava/security/KeyPairGenerator;
    :catch_46d
    move-exception v21

    move-object/from16 v11, v21

    .line 464
    .restart local v11       #e:Ljava/security/NoSuchAlgorithmException;
    const-string v21, "DiffieHellman"

    invoke-static/range {v21 .. v21}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v17

    goto/16 :goto_303

    .line 473
    .end local v11           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_478
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;->certs:[Ljava/security/cert/X509Certificate;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v18

    .line 474
    .restart local v18       #serverPublic:Ljava/security/PublicKey;
    move-object/from16 v0, v18

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v20

    .restart local v20       #spec:Ljavax/crypto/spec/DHParameterSpec;
    goto/16 :goto_358

    .line 499
    .restart local v13       #key:Ljava/security/Key;
    .restart local v16       #kp:Ljava/security/KeyPair;
    :cond_498
    new-instance v21, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;

    check-cast v13, Ljavax/crypto/interfaces/DHPublicKey;

    .end local v13           #key:Ljava/security/Key;
    invoke-interface {v13}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;-><init>(Ljava/math/BigInteger;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;
    :try_end_4a9
    .catch Ljava/lang/Exception; {:try_start_45a .. :try_end_4a9} :catch_444

    goto/16 :goto_427

    .line 532
    .end local v4           #agreement:Ljavax/crypto/KeyAgreement;
    .end local v14           #kf:Ljava/security/KeyFactory;
    .end local v16           #kp:Ljava/security/KeyPair;
    .end local v17           #kpg:Ljava/security/KeyPairGenerator;
    .end local v18           #serverPublic:Ljava/security/PublicKey;
    .end local v20           #spec:Ljavax/crypto/spec/DHParameterSpec;
    .restart local v10       #ds:Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;
    :cond_4ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v21, v0

    sget v22, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_DSS:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4df

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    move/from16 v21, v0

    sget v22, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DHE_DSS_EXPORT:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_24d

    .line 534
    :cond_4df
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->getDigestSHA()[B

    move-result-object v21

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/DigitalSignature;->setSHA([B)V

    goto/16 :goto_24d
.end method

.method public receiveChangeCipherSpec()V
    .registers 2

    .prologue
    .line 597
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    if-eqz v0, :cond_f

    .line 598
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-nez v0, :cond_b

    .line 599
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    .line 604
    :cond_b
    :goto_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->changeCipherSpecReceived:Z

    .line 605
    return-void

    .line 601
    :cond_f
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    if-nez v0, :cond_b

    .line 602
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto :goto_b
.end method

.method public start()V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-nez v0, :cond_15

    .line 80
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->findSessionToResume()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 90
    :cond_a
    :goto_a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    if-eqz v0, :cond_2a

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    .line 101
    :goto_11
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->startSession()V

    .line 102
    :cond_14
    return-void

    .line 82
    :cond_15
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v0, :cond_1e

    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 86
    :cond_1e
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto :goto_a

    .line 92
    :cond_2a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getEnableSessionCreation()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    .line 94
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 95
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getLatestVersion([Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .line 97
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setVersion([B)V

    goto :goto_11

    .line 99
    :cond_5c
    const/16 v0, 0x28

    const-string v1, "SSL Session may not be created "

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto :goto_11
.end method

.method public unwrap([B)V
    .registers 13
    .parameter "bytes"

    .prologue
    const/4 v10, 0x1

    const/16 v8, 0x28

    const-string v7, "Bad server hello protocol version"

    const-string v7, "Bad server hello cipher suite"

    .line 146
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->delegatedTaskErr:Ljava/lang/Exception;

    if-eqz v7, :cond_15

    .line 147
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->delegatedTaskErr:Ljava/lang/Exception;

    .line 148
    .local v0, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->delegatedTaskErr:Ljava/lang/Exception;

    .line 149
    const-string v7, "Error in delegated task"

    invoke-virtual {p0, v8, v7, v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;Ljava/lang/Exception;)V

    .line 152
    .end local v0           #e:Ljava/lang/Exception;
    :cond_15
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7, p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->append([B)V

    .line 153
    :cond_1a
    :goto_1a
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v7

    if-lez v7, :cond_40

    .line 154
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->mark()V

    .line 157
    :try_start_27
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v3

    .line 158
    .local v3, handshakeType:I
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint24()I

    move-result v5

    .line 159
    .local v5, length:I
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v7

    if-ge v7, v5, :cond_41

    .line 160
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    .line 332
    .end local v3           #handshakeType:I
    .end local v5           #length:I
    :cond_40
    :goto_40
    return-void

    .line 163
    .restart local v3       #handshakeType:I
    .restart local v5       #length:I
    :cond_41
    sparse-switch v3, :sswitch_data_268

    .line 322
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_47} :catch_48

    goto :goto_40

    .line 325
    .end local v3           #handshakeType:I
    .end local v5           #length:I
    :catch_48
    move-exception v7

    move-object v0, v7

    .line 327
    .local v0, e:Ljava/io/IOException;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->reset()V

    goto :goto_40

    .line 167
    .end local v0           #e:Ljava/io/IOException;
    .restart local v3       #handshakeType:I
    .restart local v5       #length:I
    :sswitch_50
    :try_start_50
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->removeFromMarkedPosition()V

    .line 168
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v7, :cond_61

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    if-eqz v7, :cond_1a

    .line 174
    :cond_61
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid()Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 175
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 176
    const/4 v7, 0x1

    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    .line 177
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->startSession()V

    goto :goto_1a

    .line 181
    :cond_7a
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->renegotiateNewSession()V

    goto :goto_1a

    .line 185
    :sswitch_7e
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    if-eqz v7, :cond_86

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-eqz v7, :cond_8a

    .line 186
    :cond_86
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto :goto_40

    .line 189
    :cond_8a
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    .line 192
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    invoke-static {v7}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getByVersion([B)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v6

    .line 194
    .local v6, servProt:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, enabled:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_a2
    array-length v7, v1

    if-ge v4, v7, :cond_125

    .line 197
    aget-object v7, v1, v4

    invoke-static {v7}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_121

    .line 207
    :goto_b1
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-byte v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->compression_method:B

    if-eqz v7, :cond_be

    .line 208
    const/16 v7, 0x28

    const-string v8, "Bad server hello compression method"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    .line 214
    :cond_be
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getEnabledCipherSuitesMember()[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v2

    .line 217
    .local v2, enabledSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    const/4 v4, 0x0

    :goto_c5
    array-length v7, v2

    if-ge v4, v7, :cond_130

    .line 218
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    aget-object v8, v2, v4

    invoke-virtual {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12d

    .line 227
    :goto_d4
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    if-eqz v7, :cond_f0

    .line 228
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    array-length v7, v7

    if-nez v7, :cond_138

    .line 231
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    .line 242
    :cond_e2
    :goto_e2
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->server_version:[B

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    if-ne v7, v10, :cond_173

    .line 243
    const-string v7, "server finished"

    invoke-virtual {p0, v7}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerReferenceVerifyDataTLS(Ljava/lang/String;)V

    .line 248
    :cond_f0
    :goto_f0
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iput-object v6, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    .line 249
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->recordProtocol:Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    invoke-virtual {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setVersion([B)V

    .line 250
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iput-object v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 251
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    invoke-virtual {v7}, [B->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    iput-object v7, v8, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    .line 252
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->random:[B

    iput-object v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->serverRandom:[B

    goto/16 :goto_1a

    .line 196
    .end local v2           #enabledSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :cond_121
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_a2

    .line 202
    :cond_125
    const/16 v7, 0x28

    const-string v8, "Bad server hello protocol version"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto :goto_b1

    .line 217
    .restart local v2       #enabledSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    :cond_12d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c5

    .line 223
    :cond_130
    const/16 v7, 0x28

    const-string v8, "Bad server hello cipher suite"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto :goto_d4

    .line 232
    :cond_138
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->session_id:[B

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->clientHello:Lorg/apache/harmony/xnet/provider/jsse/ClientHello;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_14a

    .line 233
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    goto :goto_e2

    .line 234
    :cond_14a
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    invoke-virtual {v7, v6}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15c

    .line 235
    const/16 v7, 0x28

    const-string v8, "Bad server hello protocol version"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto :goto_e2

    .line 237
    :cond_15c
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    iget-object v8, v8, Lorg/apache/harmony/xnet/provider/jsse/ServerHello;->cipher_suite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-virtual {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e2

    .line 239
    const/16 v7, 0x28

    const-string v8, "Bad server hello cipher suite"

    invoke-virtual {p0, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->fatalAlert(BLjava/lang/String;)V

    goto/16 :goto_e2

    .line 245
    :cond_173
    sget-object v7, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->server:[B

    invoke-virtual {p0, v7}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->computerReferenceVerifyDataSSLv3([B)V

    goto/16 :goto_f0

    .line 255
    .end local v1           #enabled:[Ljava/lang/String;
    .end local v2           #enabledSuites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v4           #i:I
    .end local v6           #servProt:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;
    :sswitch_17a
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-eqz v7, :cond_18a

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    if-nez v7, :cond_18a

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-nez v7, :cond_18a

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    if-eqz v7, :cond_18f

    .line 257
    :cond_18a
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_40

    .line 260
    :cond_18f
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    goto/16 :goto_1a

    .line 263
    :sswitch_19a
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-eqz v7, :cond_1a6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    if-nez v7, :cond_1a6

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    if-eqz v7, :cond_1ab

    .line 265
    :cond_1a6
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_40

    .line 268
    :cond_1ab
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    iget-object v9, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v9, v9, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iget v9, v9, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyExchange:I

    invoke-direct {v7, v8, v5, v9}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;II)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverKeyExchange:Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;

    goto/16 :goto_1a

    .line 272
    :sswitch_1bc
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverCert:Lorg/apache/harmony/xnet/provider/jsse/CertificateMessage;

    if-eqz v7, :cond_1d2

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    if-nez v7, :cond_1d2

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v7, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isAnonymous()Z

    move-result v7

    if-nez v7, :cond_1d2

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    if-eqz v7, :cond_1d7

    .line 274
    :cond_1d2
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_40

    .line 277
    :cond_1d7
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->certificateRequest:Lorg/apache/harmony/xnet/provider/jsse/CertificateRequest;

    goto/16 :goto_1a

    .line 281
    :sswitch_1e2
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHello:Lorg/apache/harmony/xnet/provider/jsse/ServerHello;

    if-eqz v7, :cond_1ee

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    if-nez v7, :cond_1ee

    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    if-eqz v7, :cond_1f3

    .line 283
    :cond_1ee
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_40

    .line 286
    :cond_1f3
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverHelloDone:Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;

    .line 287
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->nonBlocking:Z

    if-eqz v7, :cond_215

    .line 288
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->delegatedTasks:Ljava/util/Vector;

    new-instance v8, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;

    new-instance v9, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl$1;

    invoke-direct {v9, p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;)V

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v10

    invoke-direct {v8, v9, p0, v10}, Lorg/apache/harmony/xnet/provider/jsse/DelegatedTask;-><init>(Ljava/security/PrivilegedExceptionAction;Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;Ljava/security/AccessControlContext;)V

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_40

    .line 299
    :cond_215
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->processServerHelloDone()V

    goto/16 :goto_1a

    .line 302
    :sswitch_21a
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->changeCipherSpecReceived:Z

    if-nez v7, :cond_223

    .line 303
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    goto/16 :goto_40

    .line 306
    :cond_223
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/Finished;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->io_stream:Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;

    invoke-direct {v7, v8, v5}, Lorg/apache/harmony/xnet/provider/jsse/Finished;-><init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V

    iput-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    .line 307
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->serverFinished:Lorg/apache/harmony/xnet/provider/jsse/Finished;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/Finished;->getData()[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->verifyFinished([B)V

    .line 308
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 310
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    .line 312
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->parameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-virtual {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 313
    iget-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->isResuming:Z

    if-eqz v7, :cond_25b

    .line 314
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->sendChangeCipherSpec()V

    goto/16 :goto_1a

    .line 316
    :cond_25b
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 317
    const/4 v7, 0x3

    iput v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->status:I
    :try_end_266
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_266} :catch_48

    goto/16 :goto_1a

    .line 163
    :sswitch_data_268
    .sparse-switch
        0x0 -> :sswitch_50
        0x2 -> :sswitch_7e
        0xb -> :sswitch_17a
        0xc -> :sswitch_19a
        0xd -> :sswitch_1bc
        0xe -> :sswitch_1e2
        0x14 -> :sswitch_21a
    .end sparse-switch
.end method

.method public unwrapSSLv2([B)V
    .registers 2
    .parameter "bytes"

    .prologue
    .line 342
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unexpectedMessage()V

    .line 343
    return-void
.end method
