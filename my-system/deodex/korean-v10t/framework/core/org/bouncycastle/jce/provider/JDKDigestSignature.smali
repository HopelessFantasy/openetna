.class public Lorg/bouncycastle/jce/provider/JDKDigestSignature;
.super Ljava/security/Signature;
.source "JDKDigestSignature.java"

# interfaces
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/JDKDigestSignature$MD5WithRSAEncryption;,
        Lorg/bouncycastle/jce/provider/JDKDigestSignature$MD4WithRSAEncryption;,
        Lorg/bouncycastle/jce/provider/JDKDigestSignature$SHA512WithRSAEncryption;,
        Lorg/bouncycastle/jce/provider/JDKDigestSignature$SHA384WithRSAEncryption;,
        Lorg/bouncycastle/jce/provider/JDKDigestSignature$SHA256WithRSAEncryption;,
        Lorg/bouncycastle/jce/provider/JDKDigestSignature$SHA224WithRSAEncryption;,
        Lorg/bouncycastle/jce/provider/JDKDigestSignature$SHA1WithRSAEncryption;
    }
.end annotation


# instance fields
.field private algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private digest:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 6
    .parameter "name"
    .parameter "objId"
    .parameter "digest"
    .parameter "cipher"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    .line 57
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lorg/bouncycastle/crypto/Digest;

    .line 58
    iput-object p4, p0, Lorg/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 59
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKDigestSignature;->algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 60
    return-void
.end method

.method private derEncode([B)[B
    .registers 4
    .parameter "hash"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lorg/bouncycastle/asn1/x509/DigestInfo;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKDigestSignature;->algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 238
    .local v0, dInfo:Lorg/bouncycastle/asn1/x509/DigestInfo;
    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method private getType(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "o"

    .prologue
    .line 96
    if-nez p1, :cond_4

    .line 98
    const/4 v0, 0x0

    .line 101
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "param"

    .prologue
    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .registers 6
    .parameter "privateKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 81
    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v1, :cond_27

    .line 83
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplied key ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKDigestSignature;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not a RSAPrivateKey instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_27
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .end local p1
    invoke-static {p1}, Lorg/bouncycastle/jce/provider/RSAUtil;->generatePrivateKeyParameter(Ljava/security/interfaces/RSAPrivateKey;)Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .line 88
    .local v0, param:Lorg/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 90
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 91
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .registers 6
    .parameter "publicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 66
    instance-of v1, p1, Ljava/security/interfaces/RSAPublicKey;

    if-nez v1, :cond_27

    .line 68
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplied key ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKDigestSignature;->getType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not a RSAPublicKey instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_27
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .end local p1
    invoke-static {p1}, Lorg/bouncycastle/jce/provider/RSAUtil;->generatePublicKeyParameter(Ljava/security/interfaces/RSAPublicKey;)Lorg/bouncycastle/crypto/params/RSAKeyParameters;

    move-result-object v0

    .line 73
    .local v0, param:Lorg/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 74
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 75
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "param"
    .parameter "value"

    .prologue
    .line 220
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSign()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v2, v3, [B

    .line 125
    .local v2, hash:[B
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, v2, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 129
    :try_start_e
    invoke-direct {p0, v2}, Lorg/bouncycastle/jce/provider/JDKDigestSignature;->derEncode([B)[B

    move-result-object v0

    .line 131
    .local v0, bytes:[B
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-interface {v3, v0, v4, v5}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_19
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_19} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_25

    move-result-object v3

    return-object v3

    .line 133
    .end local v0           #bytes:[B
    :catch_1b
    move-exception v3

    move-object v1, v3

    .line 135
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/security/SignatureException;

    const-string v4, "key too small for signature type"

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 137
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_25
    move-exception v3

    move-object v1, v3

    .line 139
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineUpdate(B)V
    .registers 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 109
    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 118
    return-void
.end method

.method protected engineVerify([B)Z
    .registers 15
    .parameter "sigBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 147
    iget-object v7, p0, Lorg/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v3, v7, [B

    .line 149
    .local v3, hash:[B
    iget-object v7, p0, Lorg/bouncycastle/jce/provider/JDKDigestSignature;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7, v3, v10}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 156
    :try_start_10
    iget-object v7, p0, Lorg/bouncycastle/jce/provider/JDKDigestSignature;->cipher:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    const/4 v8, 0x0

    array-length v9, p1

    invoke-interface {v7, p1, v8, v9}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v5

    .line 158
    .local v5, sig:[B
    invoke-direct {p0, v3}, Lorg/bouncycastle/jce/provider/JDKDigestSignature;->derEncode([B)[B
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_2c

    move-result-object v1

    .line 165
    .local v1, expected:[B
    array-length v7, v5

    array-length v8, v1

    if-ne v7, v8, :cond_33

    .line 167
    const/4 v4, 0x0

    .local v4, i:I
    :goto_21
    array-length v7, v5

    if-ge v4, v7, :cond_72

    .line 169
    aget-byte v7, v5, v4

    aget-byte v8, v1, v4

    if-eq v7, v8, :cond_30

    move v7, v10

    .line 204
    .end local v1           #expected:[B
    .end local v4           #i:I
    .end local v5           #sig:[B
    :goto_2b
    return v7

    .line 160
    :catch_2c
    move-exception v7

    move-object v0, v7

    .local v0, e:Ljava/lang/Exception;
    move v7, v10

    .line 162
    goto :goto_2b

    .line 167
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #expected:[B
    .restart local v4       #i:I
    .restart local v5       #sig:[B
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 175
    .end local v4           #i:I
    :cond_33
    array-length v7, v1

    array-length v8, v5

    sub-int/2addr v8, v11

    if-ne v7, v8, :cond_70

    .line 177
    array-length v7, v5

    array-length v8, v3

    sub-int/2addr v7, v8

    sub-int v6, v7, v11

    .line 178
    .local v6, sigOffset:I
    array-length v7, v1

    array-length v8, v3

    sub-int/2addr v7, v8

    sub-int v2, v7, v11

    .line 180
    .local v2, expectedOffset:I
    aget-byte v7, v5, v12

    sub-int/2addr v7, v11

    int-to-byte v7, v7

    aput-byte v7, v5, v12

    .line 181
    const/4 v7, 0x3

    aget-byte v8, v5, v7

    sub-int/2addr v8, v11

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 183
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_50
    array-length v7, v3

    if-ge v4, v7, :cond_62

    .line 185
    add-int v7, v6, v4

    aget-byte v7, v5, v7

    add-int v8, v2, v4

    aget-byte v8, v1, v8

    if-eq v7, v8, :cond_5f

    move v7, v10

    .line 187
    goto :goto_2b

    .line 183
    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    .line 191
    :cond_62
    const/4 v4, 0x0

    :goto_63
    if-ge v4, v2, :cond_72

    .line 193
    aget-byte v7, v5, v4

    aget-byte v8, v1, v4

    if-eq v7, v8, :cond_6d

    move v7, v10

    .line 195
    goto :goto_2b

    .line 191
    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .end local v2           #expectedOffset:I
    .end local v4           #i:I
    .end local v6           #sigOffset:I
    :cond_70
    move v7, v10

    .line 201
    goto :goto_2b

    .restart local v4       #i:I
    :cond_72
    move v7, v12

    .line 204
    goto :goto_2b
.end method
