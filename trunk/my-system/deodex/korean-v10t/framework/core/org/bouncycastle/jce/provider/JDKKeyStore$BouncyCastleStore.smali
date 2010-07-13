.class public Lorg/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;
.super Lorg/bouncycastle/jce/provider/JDKKeyStore;
.source "JDKKeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKKeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BouncyCastleStore"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 949
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/JDKKeyStore;-><init>()V

    return-void
.end method


# virtual methods
.method public engineLoad(Ljava/io/InputStream;[C)V
    .registers 22
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->table:Ljava/util/Hashtable;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 959
    if-nez p1, :cond_b

    .line 1029
    :cond_a
    return-void

    .line 965
    :cond_b
    new-instance v11, Ljava/io/DataInputStream;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 966
    .local v11, dIn:Ljava/io/DataInputStream;
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    .line 968
    .local v18, version:I
    const/4 v3, 0x1

    move/from16 v0, v18

    move v1, v3

    if-eq v0, v1, :cond_27

    .line 970
    if-eqz v18, :cond_27

    .line 972
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Wrong version of key store."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 976
    :cond_27
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    new-array v7, v3, [B

    .line 978
    .local v7, salt:[B
    array-length v3, v7

    const/16 v4, 0x14

    if-eq v3, v4, :cond_3a

    .line 980
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Key store corrupted."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 983
    :cond_3a
    invoke-virtual {v11, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 985
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 987
    .local v8, iterationCount:I
    if-ltz v8, :cond_47

    const/16 v3, 0x1000

    if-le v8, v3, :cond_4f

    .line 989
    :cond_47
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Key store corrupted."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 992
    :cond_4f
    if-nez v18, :cond_96

    .line 994
    const-string v4, "OldPBEWithSHAAndTwofish-CBC"

    const/4 v5, 0x2

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v3 .. v8}, Lorg/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v10

    .line 1001
    .local v10, cipher:Ljavax/crypto/Cipher;
    :goto_5c
    new-instance v9, Ljavax/crypto/CipherInputStream;

    invoke-direct {v9, v11, v10}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 1007
    .local v9, cIn:Ljavax/crypto/CipherInputStream;
    new-instance v12, Lorg/bouncycastle/crypto/io/DigestInputStream;

    const-string v3, "SHA-1"

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;

    move-result-object v3

    invoke-direct {v12, v9, v3}, Lorg/bouncycastle/crypto/io/DigestInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/Digest;)V

    .line 1010
    .local v12, dgIn:Lorg/bouncycastle/crypto/io/DigestInputStream;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->loadStore(Ljava/io/InputStream;)V

    .line 1012
    invoke-virtual {v12}, Lorg/bouncycastle/crypto/io/DigestInputStream;->getDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v13

    .line 1013
    .local v13, dig:Lorg/bouncycastle/crypto/Digest;
    invoke-interface {v13}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v14

    .line 1014
    .local v14, digSize:I
    new-array v15, v14, [B

    .line 1015
    .local v15, hash:[B
    move v0, v14

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 1017
    .local v17, oldHash:[B
    const/4 v3, 0x0

    invoke-interface {v13, v15, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 1019
    const/16 v16, 0x0

    .local v16, i:I
    :goto_87
    move/from16 v0, v16

    move v1, v14

    if-eq v0, v1, :cond_a2

    .line 1021
    invoke-virtual {v9}, Ljavax/crypto/CipherInputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v17, v16

    .line 1019
    add-int/lit8 v16, v16, 0x1

    goto :goto_87

    .line 998
    .end local v9           #cIn:Ljavax/crypto/CipherInputStream;
    .end local v10           #cipher:Ljavax/crypto/Cipher;
    .end local v12           #dgIn:Lorg/bouncycastle/crypto/io/DigestInputStream;
    .end local v13           #dig:Lorg/bouncycastle/crypto/Digest;
    .end local v14           #digSize:I
    .end local v15           #hash:[B
    .end local v16           #i:I
    .end local v17           #oldHash:[B
    :cond_96
    const-string v4, "PBEWithSHAAndTwofish-CBC"

    const/4 v5, 0x2

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v3 .. v8}, Lorg/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v10

    .restart local v10       #cipher:Ljavax/crypto/Cipher;
    goto :goto_5c

    .line 1024
    .restart local v9       #cIn:Ljavax/crypto/CipherInputStream;
    .restart local v12       #dgIn:Lorg/bouncycastle/crypto/io/DigestInputStream;
    .restart local v13       #dig:Lorg/bouncycastle/crypto/Digest;
    .restart local v14       #digSize:I
    .restart local v15       #hash:[B
    .restart local v16       #i:I
    .restart local v17       #oldHash:[B
    :cond_a2
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->isSameAs([B[B)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->table:Ljava/util/Hashtable;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 1027
    new-instance v3, Ljava/io/IOException;

    const-string v4, "KeyStore integrity check failed."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .registers 15
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1036
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1037
    .local v8, dOut:Ljava/io/DataOutputStream;
    const/16 v0, 0x14

    new-array v4, v0, [B

    .line 1038
    .local v4, salt:[B
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0x3ff

    add-int/lit16 v5, v0, 0x400

    .line 1040
    .local v5, iterationCount:I
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1042
    invoke-virtual {v8, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1043
    array-length v0, v4

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1044
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 1045
    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1047
    const-string v1, "PBEWithSHAAndTwofish-CBC"

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 1049
    .local v7, cipher:Ljavax/crypto/Cipher;
    new-instance v6, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v6, v8, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 1054
    .local v6, cOut:Ljavax/crypto/CipherOutputStream;
    new-instance v9, Lorg/bouncycastle/crypto/io/DigestOutputStream;

    const-string v0, "SHA-1"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;

    move-result-object v0

    invoke-direct {v9, v6, v0}, Lorg/bouncycastle/crypto/io/DigestOutputStream;-><init>(Ljava/io/OutputStream;Lorg/bouncycastle/crypto/Digest;)V

    .line 1056
    .local v9, dgOut:Lorg/bouncycastle/crypto/io/DigestOutputStream;
    invoke-virtual {p0, v9}, Lorg/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->saveStore(Ljava/io/OutputStream;)V

    .line 1058
    invoke-virtual {v9}, Lorg/bouncycastle/crypto/io/DigestOutputStream;->getDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v10

    .line 1059
    .local v10, dig:Lorg/bouncycastle/crypto/Digest;
    invoke-interface {v10}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v11, v0, [B

    .line 1061
    .local v11, hash:[B
    const/4 v0, 0x0

    invoke-interface {v10, v11, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 1063
    invoke-virtual {v6, v11}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 1065
    invoke-virtual {v6}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 1066
    return-void
.end method
