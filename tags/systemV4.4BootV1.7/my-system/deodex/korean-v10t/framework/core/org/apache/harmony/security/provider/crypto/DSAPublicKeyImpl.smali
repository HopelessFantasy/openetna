.class public Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;
.super Lorg/apache/harmony/security/PublicKeyImpl;
.source "DSAPublicKeyImpl.java"

# interfaces
.implements Ljava/security/interfaces/DSAPublicKey;


# static fields
.field private static final serialVersionUID:J = -0x1fa305b9a7260520L


# instance fields
.field private params:Ljava/security/interfaces/DSAParams;

.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/security/spec/DSAPublicKeySpec;)V
    .registers 12
    .parameter "keySpec"

    .prologue
    const-string v9, "DSA"

    .line 81
    const-string v6, "DSA"

    invoke-direct {p0, v9}, Lorg/apache/harmony/security/PublicKeyImpl;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 86
    .local v2, p:Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    .line 87
    .local v3, q:Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    .line 89
    .local v1, g:Ljava/math/BigInteger;
    new-instance v5, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;-><init>([B[B[B)V

    .line 92
    .local v5, threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    new-instance v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    const-string v6, "DSA"

    invoke-static {v9}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2OID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;->getEncoded()[B

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B)V

    .line 96
    .local v0, ai:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->y:Ljava/math/BigInteger;

    .line 98
    new-instance v4, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->y:Ljava/math/BigInteger;

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/harmony/security/asn1/ASN1Integer;->encode(Ljava/lang/Object;)[B

    move-result-object v6

    invoke-direct {v4, v0, v6}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;-><init>(Lorg/apache/harmony/security/x509/AlgorithmIdentifier;[B)V

    .line 100
    .local v4, spki:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    invoke-virtual {v4}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->setEncoding([B)V

    .line 102
    new-instance v6, Ljava/security/spec/DSAParameterSpec;

    invoke-direct {v6, v2, v3, v1}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v6, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->params:Ljava/security/interfaces/DSAParams;

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/X509EncodedKeySpec;)V
    .registers 14
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    const-string v10, "security.19B"

    .line 115
    const-string v7, "DSA"

    invoke-direct {p0, v7}, Lorg/apache/harmony/security/PublicKeyImpl;-><init>(Ljava/lang/String;)V

    .line 118
    const/4 v6, 0x0

    .line 120
    .local v6, threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    const/4 v5, 0x0

    .line 122
    .local v5, subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v4

    .line 127
    .local v4, encoding:[B
    :try_start_d
    sget-object v7, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v7, v4}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    check-cast v5, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_15} :catch_6a

    .line 135
    .restart local v5       #subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    :try_start_15
    new-instance v8, Ljava/math/BigInteger;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getSubjectPublicKey()[B

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/apache/harmony/security/asn1/ASN1Integer;->decode([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    invoke-direct {v8, v7}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v8, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->y:Ljava/math/BigInteger;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2c} :catch_78

    .line 142
    invoke-virtual {v5}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getAlgorithmIdentifier()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v0

    .line 145
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

    .line 151
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

    iput-object v7, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->params:Ljava/security/interfaces/DSAParams;

    .line 154
    invoke-virtual {p0, v4}, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->setEncoding([B)V

    .line 159
    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, alg:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, algName:Ljava/lang/String;
    if-nez v2, :cond_94

    move-object v7, v1

    :goto_66
    invoke-virtual {p0, v7}, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->setAlgorithm(Ljava/lang/String;)V

    .line 162
    return-void

    .line 129
    .end local v0           #ai:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .end local v1           #alg:Ljava/lang/String;
    .end local v2           #algName:Ljava/lang/String;
    .end local v5           #subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    :catch_6a
    move-exception v7

    move-object v3, v7

    .line 130
    .local v3, e:Ljava/io/IOException;
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    const-string v8, "security.19A"

    invoke-static {v8, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 137
    .end local v3           #e:Ljava/io/IOException;
    .restart local v5       #subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    :catch_78
    move-exception v7

    move-object v3, v7

    .line 138
    .restart local v3       #e:Ljava/io/IOException;
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    const-string v8, "security.19B"

    invoke-static {v10, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 147
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #threeInts:Lorg/apache/harmony/security/provider/crypto/ThreeIntegerSequence;
    .restart local v0       #ai:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    :catch_86
    move-exception v7

    move-object v3, v7

    .line 148
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

    .line 161
    goto :goto_66
.end method


# virtual methods
.method public getParams()Ljava/security/interfaces/DSAParams;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->params:Ljava/security/interfaces/DSAParams;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;->y:Ljava/math/BigInteger;

    return-object v0
.end method
