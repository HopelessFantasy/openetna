.class public Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;
.super Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;
.source "ConnectionStateSSLv3.java"


# instance fields
.field private final mac_material_part:[B

.field private final mac_read_secret:[B

.field private final mac_write_secret:[B

.field private final messageDigest:Ljava/security/MessageDigest;

.field private final pad_1:[B

.field private final pad_2:[B


# direct methods
.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)V
    .registers 30
    .parameter "session"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;-><init>()V

    .line 54
    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    .line 67
    :try_start_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-object v6, v0

    .line 69
    .local v6, cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->isExportable()Z

    move-result v14

    .line 70
    .local v14, is_exportabe:Z
    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getMACLength()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    .line 71
    if-eqz v14, :cond_45e

    move-object v0, v6

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->keyMaterial:I

    move/from16 v24, v0

    move/from16 v17, v24

    .line 74
    .local v17, key_size:I
    :goto_2d
    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getBlockSize()I

    move-result v15

    .line 76
    .local v15, iv_size:I
    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getBulkEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, algName:Ljava/lang/String;
    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getHashName()Ljava/lang/String;

    move-result-object v12

    .line 78
    .local v12, hashName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    if-eqz v24, :cond_12a

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "ConnectionStateSSLv3.create:"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  cipher suite name: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  encryption alg name: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  hash alg name: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  hash size: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  block size: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  IV size (== block size):"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  key size: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 90
    :cond_12a
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->clientRandom:[B

    move-object v8, v0

    .line 91
    .local v8, clientRandom:[B
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->serverRandom:[B

    move-object/from16 v21, v0

    .line 94
    .local v21, serverRandom:[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    mul-int/lit8 v25, v17, 0x2

    add-int v24, v24, v25

    mul-int/lit8 v25, v15, 0x2

    add-int v24, v24, v25

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 95
    .local v16, key_block:[B
    move-object v0, v8

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 96
    .local v19, seed:[B
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move-object/from16 v2, v19

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    const/16 v24, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    move-object v0, v8

    array-length v0, v0

    move/from16 v26, v0

    move-object v0, v8

    move/from16 v1, v24

    move-object/from16 v2, v19

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/PRF;->computePRF_SSLv3([B[B[B)V

    .line 102
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object v10, v0

    .line 103
    .local v10, client_mac_secret:[B
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 104
    .local v23, server_mac_secret:[B
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v9, v0

    .line 105
    .local v9, client_key:[B
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 107
    .local v22, server_key:[B
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isServer:Z

    move/from16 v24, v0

    if-nez v24, :cond_467

    const/16 v24, 0x1

    move/from16 v13, v24

    .line 109
    .local v13, is_client:Z
    :goto_1c6
    if-lez v15, :cond_46d

    const/16 v24, 0x1

    :goto_1ca
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->is_block_cipher:Z

    .line 111
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v26, v0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move-object v2, v10

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v26, v0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move-object/from16 v2, v23

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move-object v2, v9

    move/from16 v3, v25

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    add-int v24, v24, v17

    const/16 v25, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move-object/from16 v2, v22

    move/from16 v3, v25

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    const/4 v7, 0x0

    .line 119
    .local v7, clientIV:Ljavax/crypto/spec/IvParameterSpec;
    const/16 v20, 0x0

    .line 121
    .local v20, serverIV:Ljavax/crypto/spec/IvParameterSpec;
    if-eqz v14, :cond_471

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    if-eqz v24, :cond_248

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "ConnectionStateSSLv3: is_exportable"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 126
    :cond_248
    const-string v24, "MD5"

    invoke-static/range {v24 .. v24}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v18

    .line 127
    .local v18, md5:Ljava/security/MessageDigest;
    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 128
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 129
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 130
    invoke-virtual/range {v18 .. v18}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    .line 132
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 133
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 134
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 135
    invoke-virtual/range {v18 .. v18}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v22

    .line 137
    move-object v0, v6

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->expandedKeyMaterial:I

    move/from16 v17, v0

    .line 139
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->is_block_cipher:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2c7

    .line 140
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 141
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 142
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    .end local v7           #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual/range {v18 .. v18}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v24

    const/16 v25, 0x0

    move-object v0, v7

    move-object/from16 v1, v24

    move/from16 v2, v25

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .line 143
    .restart local v7       #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 144
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 145
    new-instance v20, Ljavax/crypto/spec/IvParameterSpec;

    .end local v20           #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual/range {v18 .. v18}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .line 154
    .end local v18           #md5:Ljava/security/MessageDigest;
    .restart local v20       #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    :cond_2c7
    :goto_2c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3d3

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "is exportable: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "master_secret"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->master_secret:[B

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "client_random"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v8

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "server_random"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "client_mac_secret"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v10

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "server_mac_secret"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "client_key"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object v1, v9

    move/from16 v2, v25

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([BII)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "server_key"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move/from16 v2, v25

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([BII)V

    .line 172
    if-eqz v7, :cond_4ac

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "client_iv"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    invoke-virtual {v7}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "server_iv"

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    invoke-virtual/range {v20 .. v20}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 181
    :cond_3d3
    :goto_3d3
    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->encCipher:Ljavax/crypto/Cipher;

    .line 182
    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->decCipher:Ljavax/crypto/Cipher;

    .line 183
    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    .line 184
    if-eqz v13, :cond_4ce

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->encCipher:Ljavax/crypto/Cipher;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    new-instance v26, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object v1, v9

    move/from16 v2, v27

    move/from16 v3, v17

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->decCipher:Ljavax/crypto/Cipher;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    new-instance v26, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move/from16 v2, v27

    move/from16 v3, v17

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 191
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_write_secret:[B

    .line 192
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_read_secret:[B

    .line 203
    :goto_442
    const-string v24, "MD5"

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_51f

    .line 204
    sget-object v24, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->MD5pad1:[B

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_1:[B

    .line 205
    sget-object v24, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->MD5pad2:[B

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_2:[B

    .line 216
    :goto_45d
    return-void

    .line 71
    .end local v5           #algName:Ljava/lang/String;
    .end local v7           #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    .end local v8           #clientRandom:[B
    .end local v9           #client_key:[B
    .end local v10           #client_mac_secret:[B
    .end local v12           #hashName:Ljava/lang/String;
    .end local v13           #is_client:Z
    .end local v15           #iv_size:I
    .end local v16           #key_block:[B
    .end local v17           #key_size:I
    .end local v19           #seed:[B
    .end local v20           #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    .end local v21           #serverRandom:[B
    .end local v22           #server_key:[B
    .end local v23           #server_mac_secret:[B
    :cond_45e
    move-object v0, v6

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->expandedKeyMaterial:I

    move/from16 v24, v0

    move/from16 v17, v24

    goto/16 :goto_2d

    .line 107
    .restart local v5       #algName:Ljava/lang/String;
    .restart local v8       #clientRandom:[B
    .restart local v9       #client_key:[B
    .restart local v10       #client_mac_secret:[B
    .restart local v12       #hashName:Ljava/lang/String;
    .restart local v15       #iv_size:I
    .restart local v16       #key_block:[B
    .restart local v17       #key_size:I
    .restart local v19       #seed:[B
    .restart local v21       #serverRandom:[B
    .restart local v22       #server_key:[B
    .restart local v23       #server_mac_secret:[B
    :cond_467
    const/16 v24, 0x0

    move/from16 v13, v24

    goto/16 :goto_1c6

    .line 109
    .restart local v13       #is_client:Z
    :cond_46d
    const/16 v24, 0x0

    goto/16 :goto_1ca

    .line 147
    .restart local v7       #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v20       #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    :cond_471
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->is_block_cipher:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2c7

    .line 148
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    .end local v7           #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    mul-int/lit8 v25, v17, 0x2

    add-int v24, v24, v25

    move-object v0, v7

    move-object/from16 v1, v16

    move/from16 v2, v24

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .line 150
    .restart local v7       #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    new-instance v20, Ljavax/crypto/spec/IvParameterSpec;

    .end local v20           #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x2

    mul-int/lit8 v25, v17, 0x2

    add-int v24, v24, v25

    add-int v24, v24, v15

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move/from16 v2, v24

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .restart local v20       #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    goto/16 :goto_2c7

    .line 178
    :cond_4ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-object/from16 v24, v0

    const-string v25, "no IV."

    invoke-virtual/range {v24 .. v25}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V
    :try_end_4b7
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4b7} :catch_4b9

    goto/16 :goto_3d3

    .line 210
    .end local v5           #algName:Ljava/lang/String;
    .end local v6           #cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .end local v7           #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    .end local v8           #clientRandom:[B
    .end local v9           #client_key:[B
    .end local v10           #client_mac_secret:[B
    .end local v12           #hashName:Ljava/lang/String;
    .end local v13           #is_client:Z
    .end local v14           #is_exportabe:Z
    .end local v15           #iv_size:I
    .end local v16           #key_block:[B
    .end local v17           #key_size:I
    .end local v19           #seed:[B
    .end local v20           #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    .end local v21           #serverRandom:[B
    .end local v22           #server_key:[B
    .end local v23           #server_mac_secret:[B
    :catch_4b9
    move-exception v24

    move-object/from16 v11, v24

    .line 211
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    new-instance v24, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v25, 0x50

    new-instance v26, Ljavax/net/ssl/SSLProtocolException;

    const-string v27, "Error during computation of security parameters"

    invoke-direct/range {v26 .. v27}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v24 .. v26}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v24

    .line 194
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v5       #algName:Ljava/lang/String;
    .restart local v6       #cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;
    .restart local v7       #clientIV:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v8       #clientRandom:[B
    .restart local v9       #client_key:[B
    .restart local v10       #client_mac_secret:[B
    .restart local v12       #hashName:Ljava/lang/String;
    .restart local v13       #is_client:Z
    .restart local v14       #is_exportabe:Z
    .restart local v15       #iv_size:I
    .restart local v16       #key_block:[B
    .restart local v17       #key_size:I
    .restart local v19       #seed:[B
    .restart local v20       #serverIV:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v21       #serverRandom:[B
    .restart local v22       #server_key:[B
    .restart local v23       #server_mac_secret:[B
    :cond_4ce
    :try_start_4ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->encCipher:Ljavax/crypto/Cipher;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    new-instance v26, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move/from16 v2, v27

    move/from16 v3, v17

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->decCipher:Ljavax/crypto/Cipher;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    new-instance v26, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move-object v1, v9

    move/from16 v2, v27

    move/from16 v3, v17

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 200
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_write_secret:[B

    .line 201
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_read_secret:[B

    goto/16 :goto_442

    .line 207
    :cond_51f
    sget-object v24, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->SHApad1:[B

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_1:[B

    .line 208
    sget-object v24, Lorg/apache/harmony/xnet/provider/jsse/SSLv3Constants;->SHApad2:[B

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_2:[B
    :try_end_52f
    .catch Ljava/lang/Exception; {:try_start_4ce .. :try_end_52f} :catch_4b9

    goto/16 :goto_45d
.end method


# virtual methods
.method protected decrypt(B[BII)[B
    .registers 16
    .parameter "type"
    .parameter "fragment"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 288
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->decCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v5, p2, p3, p4}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v1

    .line 291
    .local v1, data:[B
    iget-boolean v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->is_block_cipher:Z

    if-eqz v5, :cond_c6

    .line 293
    array-length v5, v1

    sub-int/2addr v5, v9

    aget-byte v4, v1, v5

    .line 294
    .local v4, padding_length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    if-ge v2, v4, :cond_2d

    .line 295
    array-length v5, v1

    sub-int/2addr v5, v10

    sub-int/2addr v5, v2

    aget-byte v5, v1, v5

    if-eq v5, v4, :cond_2a

    .line 296
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v6, 0x15

    new-instance v7, Ljavax/net/ssl/SSLProtocolException;

    const-string v8, "Received message has bad padding"

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v5

    .line 294
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 302
    :cond_2d
    array-length v5, v1

    iget v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    sub-int/2addr v5, v9

    new-array v0, v5, [B

    .line 309
    .end local v2           #i:I
    .end local v4           #padding_length:I
    .local v0, content:[B
    :goto_35
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    aput-byte p1, v5, v8

    .line 310
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    const v6, 0xff00

    array-length v7, v0

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v5, v9

    .line 311
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    array-length v6, v0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v10

    .line 313
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_read_secret:[B

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 314
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_1:[B

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 315
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->read_seq_num:[B

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 316
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 317
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    array-length v6, v0

    invoke-virtual {v5, v1, v8, v6}, Ljava/security/MessageDigest;->update([BII)V

    .line 318
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 319
    .local v3, mac_value:[B
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_read_secret:[B

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 320
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_2:[B

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 321
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v5, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 322
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 324
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v5, :cond_aa

    .line 325
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v6, "Decrypted:"

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 326
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v5, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 331
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v6, "Expected mac value:"

    invoke-virtual {v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 332
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v5, v3}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 335
    :cond_aa
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_ab
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    if-ge v2, v5, :cond_d1

    .line 336
    aget-byte v5, v3, v2

    array-length v6, v0

    add-int/2addr v6, v2

    aget-byte v6, v1, v6

    if-eq v5, v6, :cond_ce

    .line 337
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v6, 0x14

    new-instance v7, Ljavax/net/ssl/SSLProtocolException;

    const-string v8, "Bad record MAC"

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v5

    .line 304
    .end local v0           #content:[B
    .end local v2           #i:I
    .end local v3           #mac_value:[B
    :cond_c6
    array-length v5, v1

    iget v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    sub-int/2addr v5, v6

    new-array v0, v5, [B

    .restart local v0       #content:[B
    goto/16 :goto_35

    .line 335
    .restart local v2       #i:I
    .restart local v3       #mac_value:[B
    :cond_ce
    add-int/lit8 v2, v2, 0x1

    goto :goto_ab

    .line 341
    :cond_d1
    array-length v5, v0

    invoke-static {v1, v8, v0, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->read_seq_num:[B

    invoke-static {v5}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->incSequenceNumber([B)V

    .line 343
    return-object v0
.end method

.method protected encrypt(B[BII)[B
    .registers 15
    .parameter "type"
    .parameter "fragment"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 225
    :try_start_2
    iget v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    add-int v0, p4, v6

    .line 226
    .local v0, content_mac_length:I
    iget-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->is_block_cipher:Z

    if-eqz v6, :cond_d9

    const/16 v6, 0x8

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v7, v0, 0x7

    sub-int/2addr v6, v7

    and-int/lit8 v3, v6, 0x7

    .line 230
    .local v3, padding_length:I
    :goto_13
    add-int v6, v0, v3

    new-array v4, v6, [B

    .line 231
    .local v4, res:[B
    const/4 v6, 0x0

    invoke-static {p2, p3, v4, v6, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    const/4 v7, 0x0

    aput-byte p1, v6, v7

    .line 234
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    const/4 v7, 0x1

    const v8, 0xff00

    and-int/2addr v8, p4

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 235
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    const/4 v7, 0x2

    and-int/lit16 v8, p4, 0xff

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 237
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_write_secret:[B

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 238
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_1:[B

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 239
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->write_seq_num:[B

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 240
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_material_part:[B

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 241
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6, p2, p3, p4}, Ljava/security/MessageDigest;->update([BII)V

    .line 242
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 243
    .local v1, digest:[B
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_write_secret:[B

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 244
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->pad_2:[B

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 245
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 246
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 247
    const/4 v6, 0x0

    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->hash_size:I

    invoke-static {v1, v6, v4, p4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iget-boolean v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->is_block_cipher:Z

    if-eqz v6, :cond_85

    .line 258
    sub-int v6, v0, v9

    array-length v7, v4

    int-to-byte v8, v3

    invoke-static {v4, v6, v7, v8}, Ljava/util/Arrays;->fill([BIIB)V

    .line 261
    :cond_85
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v6, :cond_c3

    .line 262
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SSLRecordProtocol.encrypt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->is_block_cipher:Z

    if-eqz v8, :cond_dc

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GenericBlockCipher with padding["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_b3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 267
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v6, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 269
    :cond_c3
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->encCipher:Ljavax/crypto/Cipher;

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v6

    new-array v5, v6, [B

    .line 270
    .local v5, rez:[B
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->encCipher:Ljavax/crypto/Cipher;

    const/4 v7, 0x0

    array-length v8, v4

    invoke-virtual {v6, v4, v7, v8, v5}, Ljavax/crypto/Cipher;->update([BII[B)I

    .line 271
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->write_seq_num:[B

    invoke-static {v6}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->incSequenceNumber([B)V

    .line 272
    return-object v5

    .end local v1           #digest:[B
    .end local v3           #padding_length:I
    .end local v4           #res:[B
    .end local v5           #rez:[B
    :cond_d9
    move v3, v7

    .line 226
    goto/16 :goto_13

    .line 262
    .restart local v1       #digest:[B
    .restart local v3       #padding_length:I
    .restart local v4       #res:[B
    :cond_dc
    const-string v8, "GenericStreamCipher:"
    :try_end_de
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_de} :catch_df

    goto :goto_b3

    .line 273
    .end local v0           #content_mac_length:I
    .end local v1           #digest:[B
    .end local v3           #padding_length:I
    .end local v4           #res:[B
    :catch_df
    move-exception v6

    move-object v2, v6

    .line 274
    .local v2, e:Ljava/security/GeneralSecurityException;
    invoke-virtual {v2}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 275
    new-instance v6, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v7, 0x50

    new-instance v8, Ljavax/net/ssl/SSLProtocolException;

    const-string v9, "Error during the encryption"

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v6
.end method

.method protected shutdown()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 351
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_write_secret:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 352
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;->mac_read_secret:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 353
    invoke-super {p0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->shutdown()V

    .line 354
    return-void
.end method
