.class public Lorg/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;
.super Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
.source "AuthorityKeyIdentifierStructure.java"


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;)V
    .registers 3
    .parameter "pubKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {p1}, Lorg/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;->fromKey(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .registers 3
    .parameter "certificate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {p1}, Lorg/bouncycastle/x509/extension/AuthorityKeyIdentifierStructure;->fromCertificate(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 111
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "encodedValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p1}, Lorg/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 36
    return-void
.end method

.method private static fromCertificate(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 10
    .parameter "certificate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 44
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3e

    .line 46
    new-instance v2, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0}, Lorg/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/X509Principal;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x509/X509Name;)V

    .line 47
    .local v2, genName:Lorg/bouncycastle/asn1/x509/GeneralName;
    new-instance v3, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v5, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v3, v5}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 50
    .local v3, info:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v5, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    new-instance v6, Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v6, v2}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v5, v3, v6, v7}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Object()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object v5, p0

    .line 71
    .end local v3           #info:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :goto_3d
    return-object v5

    .line 55
    .end local v2           #genName:Lorg/bouncycastle/asn1/x509/GeneralName;
    .restart local p0
    :cond_3e
    new-instance v2, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0}, Lorg/bouncycastle/jce/PrincipalUtil;->getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/X509Principal;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x509/X509Name;)V

    .line 57
    .restart local v2       #genName:Lorg/bouncycastle/asn1/x509/GeneralName;
    sget-object v5, Lorg/bouncycastle/asn1/x509/X509Extensions;->SubjectKeyIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 59
    .local v1, ext:[B
    if-eqz v1, :cond_73

    .line 61
    invoke-static {v1}, Lorg/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 63
    .local v4, str:Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v5, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    new-instance v7, Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v7, v2}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>([BLorg/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Object()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object v5, p0

    goto :goto_3d

    .line 68
    .end local v4           #str:Lorg/bouncycastle/asn1/ASN1OctetString;
    .restart local p0
    :cond_73
    new-instance v3, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v5, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v3, v5}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 71
    .restart local v3       #info:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v5, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    new-instance v6, Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v6, v2}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {v5, v3, v6, v7}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Object()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9f} :catch_a1

    move-object v5, p0

    goto :goto_3d

    .line 76
    .end local v1           #ext:[B
    .end local v2           #genName:Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v3           #info:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_a1
    move-exception v5

    move-object v0, v5

    .line 78
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/security/cert/CertificateParsingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception extracting certificate details: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static fromKey(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 6
    .parameter "pubKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 91
    .local v1, info:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v2, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->toASN1Object()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    return-object p0

    .line 93
    .end local v1           #info:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_20
    move-exception v2

    move-object v0, v2

    .line 95
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t process key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
