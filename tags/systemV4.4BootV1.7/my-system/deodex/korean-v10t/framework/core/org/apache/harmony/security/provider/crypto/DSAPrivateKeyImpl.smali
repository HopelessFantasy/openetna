.class public Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;
.super Lorg/apache/harmony/security/PrivateKeyImpl;
.source "DSAPrivateKeyImpl.java"

# interfaces
.implements Ljava/security/interfaces/DSAPrivateKey;


# static fields
.field private static final serialVersionUID:J = -0x41736807029d1541L


# instance fields
.field private params:Ljava/security/interfaces/DSAParams;

.field private x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/security/spec/DSAPrivateKeySpec;)V
    .registers 12
    .parameter "keySpec"

    .prologue
    const-string v9, "DSA"

    .line 67
    const-string v6, "DSA"

    invoke-direct {p0, v9}, Lorg/apache/harmony/security/PrivateKeyImpl;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    .line 72
    .local v1, g:Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 73
    .local v2, p:Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    .line 75
    .local v4, q:Ljava/math/BigInteger;
    new-instance v5, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;-><init>([B[B[B)V

    .line 78
    .local v5, threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    new-instance v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    const-string v6, "DSA"

    invoke-static {v9}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2OID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->getEncoded()[B

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B)V

    .line 81
    .local v0, ai:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->x:Ljava/math/BigInteger;

    .line 83
    new-instance v3, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;

    const/4 v6, 0x0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->x:Ljava/math/BigInteger;

    invoke-virtual {v8}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/harmony/security/asn1/ASN1Integer;->encode(Ljava/lang/Object;)[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v3, v6, v0, v7, v8}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;-><init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;[BLjava/util/List;)V

    .line 86
    .local v3, pki:Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;
    invoke-virtual {v3}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->getEncoded()[B

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->setEncoding([B)V

    .line 88
    new-instance v6, Ljava/security/spec/DSAParameterSpec;

    invoke-direct {v6, v2, v4, v1}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v6, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->params:Ljava/security/interfaces/DSAParams;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/PKCS8EncodedKeySpec;)V
    .registers 14
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    const-string v10, "security.19B"

    .line 101
    const-string v7, "DSA"

    invoke-direct {p0, v7}, Lorg/apache/harmony/security/PrivateKeyImpl;-><init>(Ljava/lang/String;)V

    .line 104
    const/4 v6, 0x0

    .line 108
    .local v6, threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v4

    .line 110
    .local v4, encoding:[B
    const/4 v5, 0x0

    .line 113
    .local v5, privateKeyInfo:Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;
    :try_start_d
    sget-object v7, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v7, v4}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #privateKeyInfo:Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;
    check-cast v5, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_15} :catch_6a

    .line 121
    .restart local v5       #privateKeyInfo:Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;
    :try_start_15
    new-instance v8, Ljava/math/BigInteger;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->getPrivateKey()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/apache/harmony/security/asn1/ASN1Integer;->decode([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    invoke-direct {v8, v7}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v8, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->x:Ljava/math/BigInteger;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2c} :catch_78

    .line 128
    invoke-virtual {v5}, Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;->getAlgorithmIdentifier()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 130
    .local v0, ai:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    :try_start_30
    sget-object v7, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    check-cast v6, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3c} :catch_86

    .line 136
    .restart local v6       #threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    new-instance v7, Ljava/security/spec/DSAParameterSpec;

    new-instance v8, Ljava/math/BigInteger;

    iget-object v9, v6, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->p:[B

    invoke-direct {v8, v9}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v9, Ljava/math/BigInteger;

    iget-object v10, v6, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->q:[B

    invoke-direct {v9, v10}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v10, Ljava/math/BigInteger;

    iget-object v11, v6, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->g:[B

    invoke-direct {v10, v11}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v7, v8, v9, v10}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v7, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->params:Ljava/security/interfaces/DSAParams;

    .line 139
    invoke-virtual {p0, v4}, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->setEncoding([B)V

    .line 144
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, alg:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, algName:Ljava/lang/String;
    if-nez v2, :cond_94

    move-object v7, v1

    :goto_66
    invoke-virtual {p0, v7}, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->setAlgorithm(Ljava/lang/String;)V

    .line 147
    return-void

    .line 115
    .end local v0           #ai:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .end local v1           #alg:Ljava/lang/String;
    .end local v2           #algName:Ljava/lang/String;
    .end local v5           #privateKeyInfo:Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;
    :catch_6a
    move-exception v7

    move-object v3, v7

    .line 116
    .local v3, e:Ljava/io/IOException;
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    const-string v8, "security.19A"

    invoke-static {v8, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 123
    .end local v3           #e:Ljava/io/IOException;
    .restart local v5       #privateKeyInfo:Lorg/apache/harmony/security/pkcs8/PrivateKeyInfo;
    :catch_78
    move-exception v7

    move-object v3, v7

    .line 124
    .restart local v3       #e:Ljava/io/IOException;
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    const-string v8, "security.19B"

    invoke-static {v10, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 132
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    .restart local v0       #ai:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    :catch_86
    move-exception v7

    move-object v3, v7

    .line 133
    .restart local v3       #e:Ljava/io/IOException;
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    const-string v8, "security.19B"

    invoke-static {v10, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #alg:Ljava/lang/String;
    .restart local v2       #algName:Ljava/lang/String;
    .restart local v6       #threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    :cond_94
    move-object v7, v2

    .line 146
    goto :goto_66
.end method


# virtual methods
.method public getParams()Ljava/security/interfaces/DSAParams;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->params:Ljava/security/interfaces/DSAParams;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;->x:Ljava/math/BigInteger;

    return-object v0
.end method
