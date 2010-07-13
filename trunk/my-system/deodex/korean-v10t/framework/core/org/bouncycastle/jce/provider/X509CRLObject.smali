.class public Lorg/bouncycastle/jce/provider/X509CRLObject;
.super Ljava/security/cert/X509CRL;
.source "X509CRLObject.java"


# instance fields
.field private c:Lorg/bouncycastle/asn1/x509/CertificateList;

.field private sigAlgName:Ljava/lang/String;

.field private sigAlgParams:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/CertificateList;)V
    .registers 6
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    .line 61
    :try_start_5
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->sigAlgName:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 65
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->getDEREncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    .line 76
    :goto_29
    return-void

    .line 69
    :cond_2a
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2d} :catch_2e

    goto :goto_29

    .line 72
    :catch_2e
    move-exception v1

    move-object v0, v1

    .line 74
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CRLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CRL contents invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .registers 9
    .parameter "critical"

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getVersion()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3a

    .line 97
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 98
    .local v4, set:Ljava/util/Set;
    iget-object v5, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 99
    .local v2, extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 101
    .local v0, e:Ljava/util/Enumeration;
    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 103
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 104
    .local v3, oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 106
    .local v1, ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-ne p1, v5, :cond_1a

    .line 108
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .end local v1           #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    .end local v3           #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_38
    move-object v5, v4

    .line 115
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v2           #extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;
    .end local v4           #set:Ljava/util/Set;
    :goto_39
    return-object v5

    :cond_3a
    const/4 v5, 0x0

    goto :goto_39
.end method

.method private isIndirectCRL()Z
    .registers 7

    .prologue
    .line 267
    sget-object v3, Lorg/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 268
    .local v1, idp:[B
    const/4 v2, 0x0

    .line 271
    .local v2, isIndirect:Z
    if-eqz v1, :cond_19

    .line 273
    :try_start_d
    invoke-static {v1}, Lorg/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_1a

    move-result v2

    .line 284
    :cond_19
    return v2

    .line 278
    :catch_1a
    move-exception v3

    move-object v0, v3

    .line 280
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception reading IssuingDistributionPoint"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 161
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 165
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :try_start_a
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_14

    move-result-object v3

    return-object v3

    .line 169
    :catch_14
    move-exception v3

    move-object v2, v3

    .line 171
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CRLException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 10
    .parameter "oid"

    .prologue
    .line 130
    iget-object v5, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/TBSCertList;->getExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v4

    .line 132
    .local v4, exts:Lorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v4, :cond_4c

    .line 134
    new-instance v5, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v5, p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v3

    .line 136
    .local v3, ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    if-eqz v3, :cond_4c

    .line 138
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 139
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 143
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :try_start_21
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 145
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2b} :catch_2d

    move-result-object v5

    .line 154
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    .end local v3           #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    :goto_2c
    return-object v5

    .line 147
    .restart local v0       #bOut:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    .restart local v3       #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    :catch_2d
    move-exception v5

    move-object v2, v5

    .line 149
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error encoding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 154
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    :cond_4c
    const/4 v5, 0x0

    goto :goto_2c
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .registers 3

    .prologue
    .line 208
    new-instance v0, Lorg/bouncycastle/jce/X509Principal;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/X509Principal;-><init>(Lorg/bouncycastle/asn1/x509/X509Name;)V

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 6

    .prologue
    .line 215
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 216
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 218
    .local v0, aOut:Lorg/bouncycastle/asn1/ASN1OutputStream;
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/CertificateList;->getIssuer()Lorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 220
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v3

    .line 222
    .end local v0           #aOut:Lorg/bouncycastle/asn1/ASN1OutputStream;
    .end local v1           #bOut:Ljava/io/ByteArrayOutputStream;
    :catch_1d
    move-exception v3

    move-object v2, v3

    .line 224
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "can\'t encode issuer DN"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getNextUpdate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getNextUpdate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 237
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getNextUpdate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 240
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .registers 8
    .parameter "serialNumber"

    .prologue
    .line 245
    iget-object v5, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificates()[Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v0

    .line 246
    .local v0, certs:[Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->isIndirectCRL()Z

    move-result v3

    .line 247
    .local v3, isIndirect:Z
    if-eqz v0, :cond_2e

    .line 249
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 250
    .local v4, previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    array-length v5, v0

    if-ge v2, v5, :cond_2e

    .line 252
    new-instance v1, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;

    aget-object v5, v0, v2

    invoke-direct {v1, v5, v3, v4}, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;-><init>(Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLjavax/security/auth/x500/X500Principal;)V

    .line 254
    .local v1, crlentry:Lorg/bouncycastle/jce/provider/X509CRLEntryObject;
    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 255
    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    move-object v5, v1

    .line 262
    .end local v1           #crlentry:Lorg/bouncycastle/jce/provider/X509CRLEntryObject;
    .end local v2           #i:I
    .end local v4           #previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;
    :goto_2a
    return-object v5

    .line 250
    .restart local v1       #crlentry:Lorg/bouncycastle/jce/provider/X509CRLEntryObject;
    .restart local v2       #i:I
    .restart local v4       #previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 262
    .end local v1           #crlentry:Lorg/bouncycastle/jce/provider/X509CRLEntryObject;
    .end local v2           #i:I
    .end local v4           #previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;
    :cond_2e
    const/4 v5, 0x0

    goto :goto_2a
.end method

.method public getRevokedCertificates()Ljava/util/Set;
    .registers 8

    .prologue
    .line 289
    iget-object v6, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificates()[Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v0

    .line 290
    .local v0, certs:[Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->isIndirectCRL()Z

    move-result v3

    .line 291
    .local v3, isIndirect:Z
    if-eqz v0, :cond_2c

    .line 293
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 294
    .local v5, set:Ljava/util/Set;
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 295
    .local v4, previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    array-length v6, v0

    if-ge v2, v6, :cond_2a

    .line 297
    new-instance v1, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;

    aget-object v6, v0, v2

    invoke-direct {v1, v6, v3, v4}, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;-><init>(Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;ZLjavax/security/auth/x500/X500Principal;)V

    .line 299
    .local v1, crlentry:Lorg/bouncycastle/jce/provider/X509CRLEntryObject;
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/X509CRLEntryObject;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .end local v1           #crlentry:Lorg/bouncycastle/jce/provider/X509CRLEntryObject;
    :cond_2a
    move-object v6, v5

    .line 306
    .end local v2           #i:I
    .end local v4           #previousCertificateIssuer:Ljavax/security/auth/x500/X500Principal;
    .end local v5           #set:Ljava/util/Set;
    :goto_2b
    return-object v6

    :cond_2c
    const/4 v6, 0x0

    goto :goto_2b
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->sigAlgName:Ljava/lang/String;

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 344
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    if-eqz v1, :cond_12

    .line 346
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 348
    .local v0, tmp:[B
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->sigAlgParams:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 353
    .end local v0           #tmp:[B
    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getSignature()[B
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getSignature()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getTBSCertList()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 313
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 317
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :try_start_a
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 319
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_16} :catch_18

    move-result-object v3

    return-object v3

    .line 321
    :catch_18
    move-exception v3

    move-object v2, v3

    .line 323
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CRLException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getThisUpdate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getThisUpdate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 3

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 85
    .local v0, extns:Ljava/util/Set;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 87
    const/4 v1, 0x1

    .line 90
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .registers 7
    .parameter "cert"

    .prologue
    .line 375
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "X.509"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 377
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "X.509 CRL used with non X.509 Cert"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 380
    :cond_14
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/CertificateList;->getRevokedCertificates()[Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v0

    .line 382
    .local v0, certs:[Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    if-eqz v0, :cond_3b

    .line 384
    check-cast p1, Ljava/security/cert/X509Certificate;

    .end local p1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    .line 386
    .local v2, serial:Ljava/math/BigInteger;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    array-length v3, v0

    if-ge v1, v3, :cond_3b

    .line 388
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;->getUserCertificate()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 390
    const/4 v3, 0x1

    .line 395
    .end local v1           #i:I
    .end local v2           #serial:Ljava/math/BigInteger;
    :goto_37
    return v3

    .line 386
    .restart local v1       #i:I
    .restart local v2       #serial:Ljava/math/BigInteger;
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 395
    .end local v1           #i:I
    .end local v2           #serial:Ljava/math/BigInteger;
    :cond_3b
    const/4 v3, 0x0

    goto :goto_37
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 363
    const-string v0, "X.509 CRL"

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .registers 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 179
    const-string v0, "BC"

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 6
    .parameter "key"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/CertificateList;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/X509CRLObject;->c:Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/CertificateList;->getTBSCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/TBSCertList;->getSignature()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 188
    new-instance v1, Ljava/security/cert/CRLException;

    const-string v2, "Signature algorithm on CertifcateList does not match TBSCertList."

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    :cond_1e
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 193
    .local v0, sig:Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 194
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getTBSCertList()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 195
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CRLObject;->getSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_42

    .line 197
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "CRL does not verify with supplied public key."

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_42
    return-void
.end method
