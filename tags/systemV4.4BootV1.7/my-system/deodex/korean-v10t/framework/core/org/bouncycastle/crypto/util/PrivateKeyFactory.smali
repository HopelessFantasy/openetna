.class public Lorg/bouncycastle/crypto/util/PrivateKeyFactory;
.super Ljava/lang/Object;
.source "PrivateKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .registers 14
    .parameter "keyInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v9

    .line 59
    .local v9, algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 61
    new-instance v11, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v11, p0}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 63
    .local v11, keyStructure:Lorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;
    new-instance v0, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPrime1()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getPrime2()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getExponent1()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getExponent2()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;->getCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 94
    .end local v11           #keyStructure:Lorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;
    :goto_40
    return-object v0

    .line 73
    .restart local p0
    :cond_41
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 75
    new-instance v12, Lorg/bouncycastle/asn1/pkcs/DHParameter;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v12, v0}, Lorg/bouncycastle/asn1/pkcs/DHParameter;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 76
    .local v12, params:Lorg/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/asn1/DERInteger;

    .line 78
    .local v10, derX:Lorg/bouncycastle/asn1/DERInteger;
    new-instance v0, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/DHPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DHParameters;)V

    goto :goto_40

    .line 89
    .end local v10           #derX:Lorg/bouncycastle/asn1/DERInteger;
    .end local v12           #params:Lorg/bouncycastle/asn1/pkcs/DHParameter;
    :cond_79
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 91
    new-instance v12, Lorg/bouncycastle/asn1/x509/DSAParameter;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v12, v0}, Lorg/bouncycastle/asn1/x509/DSAParameter;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 92
    .local v12, params:Lorg/bouncycastle/asn1/x509/DSAParameter;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/asn1/DERInteger;

    .line 94
    .restart local v10       #derX:Lorg/bouncycastle/asn1/DERInteger;
    new-instance v0, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAParameters;)V

    goto :goto_40

    .line 133
    .end local v10           #derX:Lorg/bouncycastle/asn1/DERInteger;
    .end local v12           #params:Lorg/bouncycastle/asn1/x509/DSAParameter;
    :cond_b5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "algorithm identifier in key not recognised"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
