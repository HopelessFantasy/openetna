.class public Lorg/bouncycastle/jce/provider/X509CertificateObject;
.super Ljava/security/cert/X509Certificate;
.source "X509CertificateObject.java"

# interfaces
.implements Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# instance fields
.field private c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

.field private encodedOut:Ljava/io/ByteArrayOutputStream;

.field private pkcs12:Lorg/bouncycastle/asn1/OrderedTable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/X509CertificateStructure;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 68
    new-instance v0, Lorg/bouncycastle/asn1/OrderedTable;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/OrderedTable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->pkcs12:Lorg/bouncycastle/asn1/OrderedTable;

    .line 74
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    .line 75
    return-void
.end method

.method private checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V
    .registers 6
    .parameter "key"
    .parameter "signature"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 756
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSignature()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 758
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "signature algorithm in TBS cert not same as outer cert"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 761
    :cond_1e
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    .line 763
    .local v0, params:Lorg/bouncycastle/asn1/DEREncodable;
    invoke-static {p2, v0}, Lorg/bouncycastle/jce/provider/X509SignatureUtil;->setSignatureParameters(Ljava/security/Signature;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 765
    invoke-virtual {p2, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 767
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getTBSCertificate()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/security/Signature;->update([B)V

    .line 769
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSignature()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_47

    .line 771
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Public key presented not for certificate signature"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 773
    :cond_47
    return-void
.end method

.method private getExtensionBytes(Ljava/lang/String;)[B
    .registers 5
    .parameter "oid"

    .prologue
    .line 436
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v1

    .line 438
    .local v1, exts:Lorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v1, :cond_20

    .line 440
    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v0

    .line 441
    .local v0, ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    if-eqz v0, :cond_20

    .line 443
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    .line 447
    .end local v0           #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    :goto_1f
    return-object v2

    :cond_20
    const/4 v2, 0x0

    goto :goto_1f
.end method


# virtual methods
.method public checkValidity()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->checkValidity(Ljava/util/Date;)V

    .line 81
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .registers 5
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 89
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate expired on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getEndDate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_2d
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 94
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate not valid till "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getStartDate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/Time;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_5a
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "o"

    .prologue
    const/4 v6, 0x0

    .line 568
    if-ne p1, p0, :cond_5

    .line 570
    const/4 v5, 0x1

    .line 589
    :goto_4
    return v5

    .line 573
    :cond_5
    instance-of v5, p1, Ljava/security/cert/Certificate;

    if-nez v5, :cond_b

    move v5, v6

    .line 575
    goto :goto_4

    .line 578
    :cond_b
    move-object v0, p1

    check-cast v0, Ljava/security/cert/Certificate;

    move-object v4, v0

    .line 582
    .local v4, other:Ljava/security/cert/Certificate;
    :try_start_f
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getEncoded()[B

    move-result-object v1

    .line 583
    .local v1, b1:[B
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    .line 585
    .local v2, b2:[B
    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_1a
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_f .. :try_end_1a} :catch_1c

    move-result v5

    goto :goto_4

    .line 587
    .end local v1           #b1:[B
    .end local v2           #b2:[B
    :catch_1c
    move-exception v5

    move-object v3, v5

    .local v3, e:Ljava/security/cert/CertificateEncodingException;
    move v5, v6

    .line 589
    goto :goto_4
.end method

.method public getBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/DEREncodable;
    .registers 3
    .parameter "oid"

    .prologue
    .line 611
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->pkcs12:Lorg/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/OrderedTable;->get(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/DEREncodable;

    return-object p0
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 618
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->pkcs12:Lorg/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/OrderedTable;->getKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getBasicConstraints()I
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 357
    const-string v4, "2.5.29.19"

    invoke-direct {p0, v4}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 359
    .local v0, bytes:[B
    if-eqz v0, :cond_69

    .line 363
    :try_start_a
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 364
    .local v1, dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 366
    .local v3, seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3b

    .line 368
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 370
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 402
    .end local v1           #dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v3           #seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    :goto_38
    return v4

    .restart local v1       #dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .restart local v3       #seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_39
    move v4, v6

    .line 374
    goto :goto_38

    .line 377
    .restart local p0
    :cond_3b
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-ne v4, v7, :cond_69

    .line 379
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    instance-of v4, v4, Lorg/bouncycastle/asn1/DERBoolean;

    if-eqz v4, :cond_5d

    .line 381
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERBoolean;->isTrue()Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_54} :catch_5f

    move-result v4

    if-eqz v4, :cond_5b

    .line 383
    const v4, 0x7fffffff

    goto :goto_38

    :cond_5b
    move v4, v6

    .line 387
    goto :goto_38

    .restart local p0
    :cond_5d
    move v4, v6

    .line 392
    goto :goto_38

    .line 396
    .end local v1           #dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v3           #seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local p0
    :catch_5f
    move-exception v4

    move-object v2, v4

    .line 398
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "error processing basic constraints extension"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v2           #e:Ljava/lang/Exception;
    .restart local p0
    :cond_69
    move v4, v6

    .line 402
    goto :goto_38
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 8

    .prologue
    .line 407
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3c

    .line 409
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 410
    .local v4, set:Ljava/util/Set;
    iget-object v5, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 412
    .local v2, extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_3c

    .line 414
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 416
    .local v0, e:Ljava/util/Enumeration;
    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 418
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 419
    .local v3, oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 421
    .local v1, ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 423
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .end local v1           #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    .end local v3           #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_3a
    move-object v5, v4

    .line 431
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v2           #extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;
    .end local v4           #set:Ljava/util/Set;
    :goto_3b
    return-object v5

    :cond_3c
    const/4 v5, 0x0

    goto :goto_3b
.end method

.method public getEncoded()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 549
    monitor-enter p0

    .line 550
    :try_start_1
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->encodedOut:Ljava/io/ByteArrayOutputStream;

    if-nez v3, :cond_16

    .line 551
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 552
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_2a

    .line 554
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :try_start_f
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 555
    iput-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->encodedOut:Ljava/io/ByteArrayOutputStream;
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_2a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_1e

    .line 560
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :cond_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_2a

    .line 561
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->encodedOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 556
    .restart local v0       #bOut:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :catch_1e
    move-exception v3

    move-object v2, v3

    .line 557
    .local v2, e:Ljava/io/IOException;
    :try_start_20
    new-instance v3, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 560
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    .end local v2           #e:Ljava/io/IOException;
    :catchall_2a
    move-exception v3

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_2a

    throw v3
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 328
    const-string v7, "2.5.29.37"

    invoke-direct {p0, v7}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 329
    .local v0, bytes:[B
    const/4 v4, 0x0

    .line 331
    .local v4, length:I
    if-eqz v0, :cond_3f

    .line 335
    :try_start_9
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 336
    .local v1, dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 337
    .local v6, seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v5, list:Ljava/util/List;
    const/4 v3, 0x0

    .end local p0
    .local v3, i:I
    :goto_1a
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    if-eq v3, v7, :cond_30

    .line 341
    invoke-virtual {v6, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 344
    :cond_30
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_33} :catch_35

    move-result-object v7

    .line 352
    .end local v1           #dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v3           #i:I
    .end local v5           #list:Ljava/util/List;
    .end local v6           #seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    :goto_34
    return-object v7

    .line 346
    :catch_35
    move-exception v7

    move-object v2, v7

    .line 348
    .local v2, e:Ljava/lang/Exception;
    new-instance v7, Ljava/security/cert/CertificateParsingException;

    const-string v8, "error processing extended key usage extension"

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 352
    .end local v2           #e:Ljava/lang/Exception;
    .restart local p0
    :cond_3f
    const/4 v7, 0x0

    goto :goto_34
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 10
    .parameter "oid"

    .prologue
    .line 452
    iget-object v5, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v4

    .line 454
    .local v4, exts:Lorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v4, :cond_4c

    .line 456
    new-instance v5, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v5, p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v3

    .line 458
    .local v3, ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    if-eqz v3, :cond_4c

    .line 460
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 461
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 465
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :try_start_21
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 467
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2b} :catch_2d

    move-result-object v5

    .line 476
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    .end local v3           #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    :goto_2c
    return-object v5

    .line 469
    .restart local v0       #bOut:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    .restart local v3       #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    :catch_2d
    move-exception v5

    move-object v2, v5

    .line 471
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

    .line 476
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
    .line 110
    new-instance v0, Lorg/bouncycastle/jce/X509Principal;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getIssuer()Lorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/X509Principal;-><init>(Lorg/bouncycastle/asn1/x509/X509Name;)V

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .registers 8

    .prologue
    .line 254
    iget-object v4, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getIssuerUniqueId()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v3

    .line 256
    .local v3, id:Lorg/bouncycastle/asn1/DERBitString;
    if-eqz v3, :cond_34

    .line 258
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    .line 259
    .local v1, bytes:[B
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v5

    sub-int/2addr v4, v5

    new-array v0, v4, [Z

    .line 261
    .local v0, boolId:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1b
    array-length v4, v0

    if-eq v2, v4, :cond_32

    .line 263
    div-int/lit8 v4, v2, 0x8

    aget-byte v4, v1, v4

    const/16 v5, 0x80

    rem-int/lit8 v6, v2, 0x8

    ushr-int/2addr v5, v6

    and-int/2addr v4, v5

    if-eqz v4, :cond_30

    const/4 v4, 0x1

    :goto_2b
    aput-boolean v4, v0, v2

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 263
    :cond_30
    const/4 v4, 0x0

    goto :goto_2b

    :cond_32
    move-object v4, v0

    .line 269
    .end local v0           #boolId:[Z
    .end local v1           #bytes:[B
    .end local v2           #i:I
    :goto_33
    return-object v4

    :cond_34
    const/4 v4, 0x0

    goto :goto_33
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 6

    .prologue
    .line 117
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 118
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 120
    .local v0, aOut:Lorg/bouncycastle/asn1/ASN1OutputStream;
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getIssuer()Lorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 122
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v3

    .line 124
    .end local v0           #aOut:Lorg/bouncycastle/asn1/ASN1OutputStream;
    .end local v1           #bOut:Ljava/io/ByteArrayOutputStream;
    :catch_1d
    move-exception v3

    move-object v2, v3

    .line 126
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "can\'t encode issuer DN"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getKeyUsage()[Z
    .registers 11

    .prologue
    const/16 v9, 0x9

    .line 294
    const-string v7, "2.5.29.15"

    invoke-direct {p0, v7}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getExtensionBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 295
    .local v1, bytes:[B
    const/4 v6, 0x0

    .line 297
    .local v6, length:I
    if-eqz v1, :cond_4d

    .line 301
    :try_start_b
    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 302
    .local v2, dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERBitString;

    .line 304
    .local v0, bits:Lorg/bouncycastle/asn1/DERBitString;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    .line 305
    array-length v7, v1

    mul-int/lit8 v7, v7, 0x8

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERBitString;->getPadBits()I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_20} :catch_3d

    move-result v8

    sub-int v6, v7, v8

    .line 312
    if-ge v6, v9, :cond_47

    move v7, v9

    :goto_26
    new-array v5, v7, [Z

    .line 314
    .local v5, keyUsage:[Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_29
    if-eq v4, v6, :cond_4b

    .line 316
    div-int/lit8 v7, v4, 0x8

    aget-byte v7, v1, v7

    const/16 v8, 0x80

    rem-int/lit8 v9, v4, 0x8

    ushr-int/2addr v8, v9

    and-int/2addr v7, v8

    if-eqz v7, :cond_49

    const/4 v7, 0x1

    :goto_38
    aput-boolean v7, v5, v4

    .line 314
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 307
    .end local v0           #bits:Lorg/bouncycastle/asn1/DERBitString;
    .end local v2           #dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v4           #i:I
    .end local v5           #keyUsage:[Z
    :catch_3d
    move-exception v7

    move-object v3, v7

    .line 309
    .local v3, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "error processing key usage extension"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #bits:Lorg/bouncycastle/asn1/DERBitString;
    .restart local v2       #dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    :cond_47
    move v7, v6

    .line 312
    goto :goto_26

    .line 316
    .restart local v4       #i:I
    .restart local v5       #keyUsage:[Z
    :cond_49
    const/4 v7, 0x0

    goto :goto_38

    :cond_4b
    move-object v7, v5

    .line 322
    .end local v0           #bits:Lorg/bouncycastle/asn1/DERBitString;
    .end local v2           #dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v4           #i:I
    .end local v5           #keyUsage:[Z
    :goto_4c
    return-object v7

    :cond_4d
    const/4 v7, 0x0

    goto :goto_4c
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 8

    .prologue
    .line 481
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3c

    .line 483
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 484
    .local v4, set:Ljava/util/Set;
    iget-object v5, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 486
    .local v2, extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_3c

    .line 488
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 490
    .local v0, e:Ljava/util/Enumeration;
    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 492
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 493
    .local v3, oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 495
    .local v1, ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 497
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .end local v1           #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    .end local v3           #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_3a
    move-object v5, v4

    .line 505
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v2           #extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;
    .end local v4           #set:Ljava/util/Set;
    :goto_3b
    return-object v5

    :cond_3c
    const/4 v5, 0x0

    goto :goto_3b
.end method

.method public getNotAfter()Ljava/util/Date;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getEndDate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getStartDate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 542
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromPublicKeyInfo(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSerialNumber()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .registers 9

    .prologue
    const-string v7, "Alg.Alias.Signature."

    .line 191
    const-string v4, "BC"

    invoke-static {v4}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    .line 192
    .local v2, prov:Ljava/security/Provider;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alg.Alias.Signature."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, algName:Ljava/lang/String;
    if-eqz v0, :cond_27

    move-object v4, v0

    .line 213
    :goto_26
    return-object v4

    .line 199
    :cond_27
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v3

    .line 204
    .local v3, provs:[Ljava/security/Provider;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2c
    array-length v4, v3

    if-eq v1, v4, :cond_53

    .line 206
    aget-object v4, v3, v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alg.Alias.Signature."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_50

    move-object v4, v0

    .line 209
    goto :goto_26

    .line 204
    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 213
    :cond_53
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgOID()Ljava/lang/String;

    move-result-object v4

    goto :goto_26
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .registers 7

    .prologue
    .line 229
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 231
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 235
    :try_start_11
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 237
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_23} :catch_28

    .line 244
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 248
    .end local v1           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :goto_27
    return-object v3

    .line 239
    :catch_28
    move-exception v3

    move-object v2, v3

    .line 241
    .local v2, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception getting sig parameters "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    .end local v2           #e:Ljava/lang/Exception;
    :cond_43
    const/4 v3, 0x0

    goto :goto_27
.end method

.method public getSignature()[B
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSignature()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .registers 3

    .prologue
    .line 132
    new-instance v0, Lorg/bouncycastle/jce/X509Principal;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSubject()Lorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/X509Principal;-><init>(Lorg/bouncycastle/asn1/x509/X509Name;)V

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .registers 8

    .prologue
    .line 274
    iget-object v4, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubjectUniqueId()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v3

    .line 276
    .local v3, id:Lorg/bouncycastle/asn1/DERBitString;
    if-eqz v3, :cond_34

    .line 278
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    .line 279
    .local v1, bytes:[B
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v5

    sub-int/2addr v4, v5

    new-array v0, v4, [Z

    .line 281
    .local v0, boolId:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1b
    array-length v4, v0

    if-eq v2, v4, :cond_32

    .line 283
    div-int/lit8 v4, v2, 0x8

    aget-byte v4, v1, v4

    const/16 v5, 0x80

    rem-int/lit8 v6, v2, 0x8

    ushr-int/2addr v5, v6

    and-int/2addr v4, v5

    if-eqz v4, :cond_30

    const/4 v4, 0x1

    :goto_2b
    aput-boolean v4, v0, v2

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 283
    :cond_30
    const/4 v4, 0x0

    goto :goto_2b

    :cond_32
    move-object v4, v0

    .line 289
    .end local v0           #boolId:[Z
    .end local v1           #bytes:[B
    .end local v2           #i:I
    :goto_33
    return-object v4

    :cond_34
    const/4 v4, 0x0

    goto :goto_33
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .registers 6

    .prologue
    .line 139
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 140
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 142
    .local v0, aOut:Lorg/bouncycastle/asn1/ASN1OutputStream;
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSubject()Lorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 144
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object v3

    .line 146
    .end local v0           #aOut:Lorg/bouncycastle/asn1/ASN1OutputStream;
    .end local v1           #bOut:Ljava/io/ByteArrayOutputStream;
    :catch_1d
    move-exception v3

    move-object v2, v3

    .line 148
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "can\'t encode issuer DN"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getTBSCertificate()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 166
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 170
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :try_start_a
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_16} :catch_18

    move-result-object v3

    return-object v3

    .line 174
    :catch_18
    move-exception v3

    move-object v2, v3

    .line 176
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getVersion()I

    move-result v0

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 7

    .prologue
    .line 510
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_47

    .line 512
    iget-object v4, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 514
    .local v2, extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_47

    .line 516
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 518
    .local v0, e:Ljava/util/Enumeration;
    :cond_17
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 520
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 521
    .local v3, oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2.5.29.15"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2.5.29.19"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 527
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 529
    .local v1, ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 531
    const/4 v4, 0x1

    .line 537
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v1           #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    .end local v2           #extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;
    .end local v3           #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :goto_46
    return v4

    :cond_47
    const/4 v4, 0x0

    goto :goto_46
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 595
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->hashCode()I

    move-result v0

    return v0
.end method

.method public setBagAttribute(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V
    .registers 4
    .parameter "oid"
    .parameter "attribute"

    .prologue
    .line 603
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->pkcs12:Lorg/bouncycastle/asn1/OrderedTable;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/asn1/OrderedTable;->add(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/Object;)V

    .line 605
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 16

    .prologue
    .line 624
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 625
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v11, "line.separator"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 627
    .local v7, nl:Ljava/lang/String;
    const-string v11, "  [0]         Version: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getVersion()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    const-string v11, "         SerialNumber: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 629
    const-string v11, "             IssuerDN: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getIssuerDN()Ljava/security/Principal;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    const-string v11, "           Start Date: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getNotBefore()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 631
    const-string v11, "           Final Date: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getNotAfter()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 632
    const-string v11, "            SubjectDN: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSubjectDN()Ljava/security/Principal;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 633
    const-string v11, "           Public Key: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    const-string v11, "  Signature Algorithm: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSigAlgName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 636
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->getSignature()[B

    move-result-object v10

    .line 638
    .local v10, sig:[B
    const-string v11, "            Signature: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    const/16 v14, 0x14

    invoke-static {v10, v13, v14}, Lorg/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 639
    const/16 v6, 0x14

    .local v6, i:I
    :goto_b2
    array-length v11, v10

    if-ge v6, v11, :cond_ef

    .line 641
    array-length v11, v10

    const/16 v12, 0x14

    sub-int/2addr v11, v12

    if-ge v6, v11, :cond_d6

    .line 643
    const-string v11, "                       "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    const/16 v13, 0x14

    invoke-static {v10, v6, v13}, Lorg/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 639
    :goto_d3
    add-int/lit8 v6, v6, 0x14

    goto :goto_b2

    .line 647
    :cond_d6
    const-string v11, "                       "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    array-length v13, v10

    sub-int/2addr v13, v6

    invoke-static {v10, v6, v13}, Lorg/bouncycastle/util/encoders/Hex;->encode([BII)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d3

    .line 651
    :cond_ef
    iget-object v11, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v5

    .line 653
    .local v5, extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v5, :cond_207

    .line 655
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v2

    .line 657
    .local v2, e:Ljava/util/Enumeration;
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_10a

    .line 659
    const-string v11, "       Extensions: \n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 662
    .end local p0
    :cond_10a
    :goto_10a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_207

    .line 664
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 665
    .local v9, oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v5, v9}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v4

    .line 667
    .local v4, ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v11

    if-eqz v11, :cond_202

    .line 669
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    .line 670
    .local v8, octs:[B
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, v8}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 671
    .local v1, dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    const-string v11, "                       critical("

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, ") "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 674
    :try_start_140
    sget-object v11, Lorg/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9, v11}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_174

    .line 676
    new-instance v11, Lorg/bouncycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v11, p0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_15a} :catch_15b

    goto :goto_10a

    .line 701
    :catch_15b
    move-exception v11

    move-object v3, v11

    .line 703
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 705
    const-string v11, " value = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "*****"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10a

    .line 678
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_174
    :try_start_174
    sget-object v11, Lorg/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9, v11}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_190

    .line 680
    new-instance v11, Lorg/bouncycastle/asn1/x509/KeyUsage;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v11, p0}, Lorg/bouncycastle/asn1/x509/KeyUsage;-><init>(Lorg/bouncycastle/asn1/DERBitString;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_10a

    .line 682
    :cond_190
    sget-object v11, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeCertType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9, v11}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1ac

    .line 684
    new-instance v11, Lorg/bouncycastle/asn1/misc/NetscapeCertType;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v11, p0}, Lorg/bouncycastle/asn1/misc/NetscapeCertType;-><init>(Lorg/bouncycastle/asn1/DERBitString;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_10a

    .line 686
    :cond_1ac
    sget-object v11, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->netscapeRevocationURL:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9, v11}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c8

    .line 688
    new-instance v11, Lorg/bouncycastle/asn1/misc/NetscapeRevocationURL;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v11, p0}, Lorg/bouncycastle/asn1/misc/NetscapeRevocationURL;-><init>(Lorg/bouncycastle/asn1/DERIA5String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_10a

    .line 690
    :cond_1c8
    sget-object v11, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->verisignCzagExtension:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9, v11}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e4

    .line 692
    new-instance v11, Lorg/bouncycastle/asn1/misc/VerisignCzagExtension;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v11, p0}, Lorg/bouncycastle/asn1/misc/VerisignCzagExtension;-><init>(Lorg/bouncycastle/asn1/DERIA5String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_10a

    .line 696
    :cond_1e4
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 697
    const-string v11, " value = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v12

    invoke-static {v12}, Lorg/bouncycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_200
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_200} :catch_15b

    goto/16 :goto_10a

    .line 710
    .end local v1           #dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v8           #octs:[B
    :cond_202
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_10a

    .line 715
    .end local v2           #e:Ljava/util/Enumeration;
    .end local v4           #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    .end local v9           #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_207
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public final verify(Ljava/security/PublicKey;)V
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 723
    const/4 v2, 0x0

    .line 724
    .local v2, signature:Ljava/security/Signature;
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v1

    .line 728
    .local v1, sigName:Ljava/lang/String;
    :try_start_b
    const-string v3, "BC"

    invoke-static {v1, v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_15

    move-result-object v2

    .line 735
    :goto_11
    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V

    .line 736
    return-void

    .line 730
    :catch_15
    move-exception v3

    move-object v0, v3

    .line 732
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    goto :goto_11
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 6
    .parameter "key"
    .parameter "sigProvider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 744
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/X509CertificateObject;->c:Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/jce/provider/X509SignatureUtil;->getSignatureName(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, sigName:Ljava/lang/String;
    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 747
    .local v1, signature:Ljava/security/Signature;
    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/jce/provider/X509CertificateObject;->checkSignature(Ljava/security/PublicKey;Ljava/security/Signature;)V

    .line 748
    return-void
.end method
