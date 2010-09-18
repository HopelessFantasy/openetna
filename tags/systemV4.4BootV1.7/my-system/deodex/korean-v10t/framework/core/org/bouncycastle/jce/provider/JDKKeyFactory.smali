.class public abstract Lorg/bouncycastle/jce/provider/JDKKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "JDKKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/JDKKeyFactory$ECDHC;,
        Lorg/bouncycastle/jce/provider/JDKKeyFactory$ECDH;,
        Lorg/bouncycastle/jce/provider/JDKKeyFactory$ECGOST3410;,
        Lorg/bouncycastle/jce/provider/JDKKeyFactory$ECDSA;,
        Lorg/bouncycastle/jce/provider/JDKKeyFactory$EC;,
        Lorg/bouncycastle/jce/provider/JDKKeyFactory$X509;,
        Lorg/bouncycastle/jce/provider/JDKKeyFactory$ElGamal;,
        Lorg/bouncycastle/jce/provider/JDKKeyFactory$GOST3410;,
        Lorg/bouncycastle/jce/provider/JDKKeyFactory$DSA;,
        Lorg/bouncycastle/jce/provider/JDKKeyFactory$DH;,
        Lorg/bouncycastle/jce/provider/JDKKeyFactory$RSA;
    }
.end annotation


# instance fields
.field protected elGamalFactory:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyFactory;->elGamalFactory:Z

    .line 58
    return-void
.end method

.method static createPrivateKeyFromDERStream([B)Ljava/security/PrivateKey;
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/JDKKeyFactory;->createPrivateKeyFromPrivateKeyInfo(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v0

    return-object v0
.end method

.method static createPrivateKeyFromPrivateKeyInfo(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .registers 5
    .parameter "info"

    .prologue
    .line 261
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .line 263
    .local v0, algOid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-static {v0}, Lorg/bouncycastle/jce/provider/RSAUtil;->isRsaOid(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 265
    new-instance v1, Lorg/bouncycastle/jce/provider/JCERSAPrivateCrtKey;

    invoke-direct {v1, p0}, Lorg/bouncycastle/jce/provider/JCERSAPrivateCrtKey;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    .line 279
    :goto_13
    return-object v1

    .line 267
    :cond_14
    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 269
    new-instance v1, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;

    invoke-direct {v1, p0}, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    goto :goto_13

    .line 277
    :cond_22
    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 279
    new-instance v1, Lorg/bouncycastle/jce/provider/JDKDSAPrivateKey;

    invoke-direct {v1, p0}, Lorg/bouncycastle/jce/provider/JDKDSAPrivateKey;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    goto :goto_13

    .line 297
    :cond_30
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "algorithm identifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in key not recognised"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static createPublicKeyFromDERStream([B)Ljava/security/PublicKey;
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromPublicKeyInfo(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method static createPublicKeyFromPublicKeyInfo(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .registers 5
    .parameter "info"

    .prologue
    .line 197
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .line 199
    .local v0, algOid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-static {v0}, Lorg/bouncycastle/jce/provider/RSAUtil;->isRsaOid(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 201
    new-instance v1, Lorg/bouncycastle/jce/provider/JCERSAPublicKey;

    invoke-direct {v1, p0}, Lorg/bouncycastle/jce/provider/JCERSAPublicKey;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 223
    :goto_13
    return-object v1

    .line 203
    :cond_14
    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 205
    new-instance v1, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;

    invoke-direct {v1, p0}, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    goto :goto_13

    .line 207
    :cond_22
    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 209
    new-instance v1, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;

    invoke-direct {v1, p0}, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    goto :goto_13

    .line 217
    :cond_30
    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 219
    new-instance v1, Lorg/bouncycastle/jce/provider/JDKDSAPublicKey;

    invoke-direct {v1, p0}, Lorg/bouncycastle/jce/provider/JDKDSAPublicKey;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    goto :goto_13

    .line 221
    :cond_3e
    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 223
    new-instance v1, Lorg/bouncycastle/jce/provider/JDKDSAPublicKey;

    invoke-direct {v1, p0}, Lorg/bouncycastle/jce/provider/JDKDSAPublicKey;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    goto :goto_13

    .line 240
    :cond_4c
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "algorithm identifier "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in key not recognised"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 14
    .parameter "key"
    .parameter "spec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 65
    const-class v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PKCS#8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 67
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 106
    :goto_1d
    return-object v1

    .line 69
    :cond_1e
    const-class v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X.509"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 71
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    goto :goto_1d

    .line 73
    :cond_3c
    const-class v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5a

    instance-of v1, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v1, :cond_5a

    .line 75
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    move-object v10, v0

    .line 77
    .local v10, k:Ljava/security/interfaces/RSAPublicKey;
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {v10}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v10}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_1d

    .line 79
    .end local v10           #k:Ljava/security/interfaces/RSAPublicKey;
    :cond_5a
    const-class v1, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_78

    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v1, :cond_78

    .line 81
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    move-object v10, v0

    .line 83
    .local v10, k:Ljava/security/interfaces/RSAPrivateKey;
    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_1d

    .line 85
    .end local v10           #k:Ljava/security/interfaces/RSAPrivateKey;
    :cond_78
    const-class v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_af

    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v1, :cond_af

    .line 87
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    move-object v10, v0

    .line 89
    .local v10, k:Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-interface {v10}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_1d

    .line 96
    .end local v10           #k:Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_af
    const-class v1, Ljavax/crypto/spec/DHPrivateKeySpec;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_da

    instance-of v1, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v1, :cond_da

    .line 98
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPrivateKey;

    move-object v10, v0

    .line 100
    .local v10, k:Ljavax/crypto/interfaces/DHPrivateKey;
    new-instance v1, Ljavax/crypto/spec/DHPrivateKeySpec;

    invoke-interface {v10}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v10}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v10}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljavax/crypto/spec/DHPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_1d

    .line 102
    .end local v10           #k:Ljavax/crypto/interfaces/DHPrivateKey;
    :cond_da
    const-class v1, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_105

    instance-of v1, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v1, :cond_105

    .line 104
    move-object v0, p1

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    move-object v10, v0

    .line 106
    .local v10, k:Ljavax/crypto/interfaces/DHPublicKey;
    new-instance v1, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-interface {v10}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v10}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v10}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_1d

    .line 109
    .end local v10           #k:Ljavax/crypto/interfaces/DHPublicKey;
    :cond_105
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not implemented yet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 116
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_c

    .line 118
    new-instance v0, Lorg/bouncycastle/jce/provider/JCERSAPublicKey;

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .end local p1
    invoke-direct {v0, p1}, Lorg/bouncycastle/jce/provider/JCERSAPublicKey;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    .line 164
    :goto_b
    return-object v0

    .line 120
    .restart local p1
    :cond_c
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_18

    .line 122
    new-instance v0, Lorg/bouncycastle/jce/provider/JCERSAPrivateCrtKey;

    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .end local p1
    invoke-direct {v0, p1}, Lorg/bouncycastle/jce/provider/JCERSAPrivateCrtKey;-><init>(Ljava/security/interfaces/RSAPrivateCrtKey;)V

    goto :goto_b

    .line 124
    .restart local p1
    :cond_18
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_24

    .line 126
    new-instance v0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .end local p1
    invoke-direct {v0, p1}, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;-><init>(Ljava/security/interfaces/RSAPrivateKey;)V

    goto :goto_b

    .line 128
    .restart local p1
    :cond_24
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_30

    .line 138
    new-instance v0, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;

    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    .end local p1
    invoke-direct {v0, p1}, Lorg/bouncycastle/jce/provider/JCEDHPublicKey;-><init>(Ljavax/crypto/interfaces/DHPublicKey;)V

    goto :goto_b

    .line 143
    .restart local p1
    :cond_30
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPrivateKey;

    if-eqz v0, :cond_3c

    .line 153
    new-instance v0, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;

    check-cast p1, Ljavax/crypto/interfaces/DHPrivateKey;

    .end local p1
    invoke-direct {v0, p1}, Lorg/bouncycastle/jce/provider/JCEDHPrivateKey;-><init>(Ljavax/crypto/interfaces/DHPrivateKey;)V

    goto :goto_b

    .line 158
    .restart local p1
    :cond_3c
    instance-of v0, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_48

    .line 160
    new-instance v0, Lorg/bouncycastle/jce/provider/JDKDSAPublicKey;

    check-cast p1, Ljava/security/interfaces/DSAPublicKey;

    .end local p1
    invoke-direct {v0, p1}, Lorg/bouncycastle/jce/provider/JDKDSAPublicKey;-><init>(Ljava/security/interfaces/DSAPublicKey;)V

    goto :goto_b

    .line 162
    .restart local p1
    :cond_48
    instance-of v0, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v0, :cond_54

    .line 164
    new-instance v0, Lorg/bouncycastle/jce/provider/JDKDSAPrivateKey;

    check-cast p1, Ljava/security/interfaces/DSAPrivateKey;

    .end local p1
    invoke-direct {v0, p1}, Lorg/bouncycastle/jce/provider/JDKDSAPrivateKey;-><init>(Ljava/security/interfaces/DSAPrivateKey;)V

    goto :goto_b

    .line 177
    .restart local p1
    :cond_54
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key type unknown"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
