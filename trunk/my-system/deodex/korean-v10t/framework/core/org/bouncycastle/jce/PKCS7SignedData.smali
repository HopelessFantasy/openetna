.class public Lorg/bouncycastle/jce/PKCS7SignedData;
.super Ljava/lang/Object;
.source "PKCS7SignedData.java"

# interfaces
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private final ID_DSA:Ljava/lang/String;

.field private final ID_MD2:Ljava/lang/String;

.field private final ID_MD5:Ljava/lang/String;

.field private final ID_PKCS7_DATA:Ljava/lang/String;

.field private final ID_PKCS7_SIGNED_DATA:Ljava/lang/String;

.field private final ID_RSA:Ljava/lang/String;

.field private final ID_SHA1:Ljava/lang/String;

.field private certs:Ljava/util/Collection;

.field private crls:Ljava/util/Collection;

.field private digest:[B

.field private digestAlgorithm:Ljava/lang/String;

.field private digestEncryptionAlgorithm:Ljava/lang/String;

.field private digestalgos:Ljava/util/Set;

.field private transient privKey:Ljava/security/PrivateKey;

.field private sig:Ljava/security/Signature;

.field private signCert:Ljava/security/cert/X509Certificate;

.field private signerversion:I

.field private version:I


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;)V
    .registers 5
    .parameter "privKey"
    .parameter "certChain"
    .parameter "hashAlgorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 231
    const-string v0, "BC"

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/jce/PKCS7SignedData;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "privKey"
    .parameter "certChain"
    .parameter "hashAlgorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 250
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jce/PKCS7SignedData;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;[Ljava/security/cert/CRL;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;[Ljava/security/cert/CRL;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "privKey"
    .parameter "certChain"
    .parameter "crlList"
    .parameter "hashAlgorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const-string v6, "1.2.840.113549.2.5"

    const-string v5, "1.2.840.113549.2.2"

    const-string v4, "1.2.840.113549.1.1.1"

    const-string v3, "1.2.840.10040.4.1"

    const-string v2, "1.3.14.3.2.26"

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v1, "1.2.840.113549.1.7.1"

    iput-object v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->ID_PKCS7_DATA:Ljava/lang/String;

    .line 73
    const-string v1, "1.2.840.113549.1.7.2"

    iput-object v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->ID_PKCS7_SIGNED_DATA:Ljava/lang/String;

    .line 74
    const-string v1, "1.2.840.113549.2.5"

    iput-object v6, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->ID_MD5:Ljava/lang/String;

    .line 75
    const-string v1, "1.2.840.113549.2.2"

    iput-object v5, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->ID_MD2:Ljava/lang/String;

    .line 76
    const-string v1, "1.3.14.3.2.26"

    iput-object v2, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->ID_SHA1:Ljava/lang/String;

    .line 77
    const-string v1, "1.2.840.113549.1.1.1"

    iput-object v4, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->ID_RSA:Ljava/lang/String;

    .line 78
    const-string v1, "1.2.840.10040.4.1"

    iput-object v3, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->ID_DSA:Ljava/lang/String;

    .line 271
    iput-object p1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->privKey:Ljava/security/PrivateKey;

    .line 273
    const-string v1, "MD5"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 275
    const-string v1, "1.2.840.113549.2.5"

    iput-object v6, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestAlgorithm:Ljava/lang/String;

    .line 294
    :goto_37
    const/4 v1, 0x1

    iput v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->signerversion:I

    iput v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->version:I

    .line 295
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->certs:Ljava/util/Collection;

    .line 296
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->crls:Ljava/util/Collection;

    .line 297
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestalgos:Ljava/util/Set;

    .line 298
    iget-object v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestalgos:Ljava/util/Set;

    iget-object v2, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestAlgorithm:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 303
    const/4 v1, 0x0

    aget-object v1, p2, v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    iput-object v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->signCert:Ljava/security/cert/X509Certificate;

    .line 304
    const/4 v0, 0x0

    .local v0, i:I
    :goto_60
    array-length v1, p2

    if-ge v0, v1, :cond_ad

    .line 306
    iget-object v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->certs:Ljava/util/Collection;

    aget-object v2, p2, v0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 277
    .end local v0           #i:I
    :cond_6d
    const-string v1, "MD2"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 279
    const-string v1, "1.2.840.113549.2.2"

    iput-object v5, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestAlgorithm:Ljava/lang/String;

    goto :goto_37

    .line 281
    :cond_7a
    const-string v1, "SHA"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 283
    const-string v1, "1.3.14.3.2.26"

    iput-object v2, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestAlgorithm:Ljava/lang/String;

    goto :goto_37

    .line 285
    :cond_87
    const-string v1, "SHA1"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 287
    const-string v1, "1.3.14.3.2.26"

    iput-object v2, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestAlgorithm:Ljava/lang/String;

    goto :goto_37

    .line 291
    :cond_94
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Hash Algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 309
    .restart local v0       #i:I
    :cond_ad
    if-eqz p3, :cond_bd

    .line 311
    const/4 v0, 0x0

    :goto_b0
    array-length v1, p3

    if-ge v0, v1, :cond_bd

    .line 313
    iget-object v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->crls:Ljava/util/Collection;

    aget-object v2, p3, v0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_b0

    .line 320
    :cond_bd
    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestEncryptionAlgorithm:Ljava/lang/String;

    .line 321
    iget-object v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestEncryptionAlgorithm:Ljava/lang/String;

    const-string v2, "RSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 323
    const-string v1, "1.2.840.113549.1.1.1"

    iput-object v4, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestEncryptionAlgorithm:Ljava/lang/String;

    .line 334
    :goto_d1
    invoke-virtual {p0}, Lorg/bouncycastle/jce/PKCS7SignedData;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->sig:Ljava/security/Signature;

    .line 336
    iget-object v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->sig:Ljava/security/Signature;

    invoke-virtual {v1, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 337
    return-void

    .line 325
    :cond_e1
    iget-object v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestEncryptionAlgorithm:Ljava/lang/String;

    const-string v2, "DSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 327
    const-string v1, "1.2.840.10040.4.1"

    iput-object v3, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestEncryptionAlgorithm:Ljava/lang/String;

    goto :goto_d1

    .line 331
    :cond_f0
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Key Algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestEncryptionAlgorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/cert/CRLException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 89
    const-string v0, "BC"

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jce/PKCS7SignedData;-><init>([BLjava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .registers 23
    .parameter "in"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/cert/CRLException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v17, "1.2.840.113549.1.7.1"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/PKCS7SignedData;->ID_PKCS7_DATA:Ljava/lang/String;

    .line 73
    const-string v17, "1.2.840.113549.1.7.2"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/PKCS7SignedData;->ID_PKCS7_SIGNED_DATA:Ljava/lang/String;

    .line 74
    const-string v17, "1.2.840.113549.2.5"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/PKCS7SignedData;->ID_MD5:Ljava/lang/String;

    .line 75
    const-string v17, "1.2.840.113549.2.2"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/PKCS7SignedData;->ID_MD2:Ljava/lang/String;

    .line 76
    const-string v17, "1.3.14.3.2.26"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/PKCS7SignedData;->ID_SHA1:Ljava/lang/String;

    .line 77
    const-string v17, "1.2.840.113549.1.1.1"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/PKCS7SignedData;->ID_RSA:Ljava/lang/String;

    .line 78
    const-string v17, "1.2.840.10040.4.1"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/PKCS7SignedData;->ID_DSA:Ljava/lang/String;

    .line 101
    new-instance v5, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v17, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 110
    .local v5, din:Lorg/bouncycastle/asn1/ASN1InputStream;
    :try_start_4c
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_5f

    move-result-object v12

    .line 117
    .local v12, pkcs:Lorg/bouncycastle/asn1/DERObject;
    move-object v0, v12

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move/from16 v17, v0

    if-nez v17, :cond_68

    .line 119
    new-instance v17, Ljava/lang/SecurityException;

    const-string v18, "Not a valid PKCS#7 object - not a sequence"

    invoke-direct/range {v17 .. v18}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 112
    .end local v12           #pkcs:Lorg/bouncycastle/asn1/DERObject;
    :catch_5f
    move-exception v6

    .line 114
    .local v6, e:Ljava/io/IOException;
    new-instance v17, Ljava/lang/SecurityException;

    const-string v18, "can\'t decode PKCS7SignedData object"

    invoke-direct/range {v17 .. v18}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 122
    .end local v6           #e:Ljava/io/IOException;
    .restart local v12       #pkcs:Lorg/bouncycastle/asn1/DERObject;
    :cond_68
    invoke-static {v12}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    move-result-object v3

    .line 124
    .local v3, content:Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v17

    sget-object v18, Lorg/bouncycastle/jce/PKCS7SignedData;->signedData:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v17 .. v18}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_99

    .line 126
    new-instance v17, Ljava/lang/SecurityException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Not a valid PKCS#7 signed-data object - wrong header "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 130
    :cond_99
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/bouncycastle/asn1/pkcs/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/SignedData;

    move-result-object v4

    .line 132
    .local v4, data:Lorg/bouncycastle/asn1/pkcs/SignedData;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/PKCS7SignedData;->certs:Ljava/util/Collection;

    .line 134
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SignedData;->getCertificates()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v17

    if-eqz v17, :cond_db

    .line 136
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SignedData;->getCertificates()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v7

    .line 138
    .local v7, ec:Ljava/util/Enumeration;
    :goto_be
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_db

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/PKCS7SignedData;->certs:Ljava/util/Collection;

    move-object/from16 v17, v0

    new-instance v18, Lorg/bouncycastle/jce/provider/X509CertificateObject;

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lorg/bouncycastle/asn1/x509/X509CertificateStructure;)V

    invoke-interface/range {v17 .. v18}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_be

    .line 144
    .end local v7           #ec:Ljava/util/Enumeration;
    :cond_db
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/PKCS7SignedData;->crls:Ljava/util/Collection;

    .line 146
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SignedData;->getCRLs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v17

    if-eqz v17, :cond_115

    .line 148
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SignedData;->getCRLs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v7

    .line 149
    .restart local v7       #ec:Ljava/util/Enumeration;
    :goto_f8
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_115

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/PKCS7SignedData;->crls:Ljava/util/Collection;

    move-object/from16 v17, v0

    new-instance v18, Lorg/bouncycastle/jce/provider/X509CRLObject;

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/bouncycastle/jce/provider/X509CRLObject;-><init>(Lorg/bouncycastle/asn1/x509/CertificateList;)V

    invoke-interface/range {v17 .. v18}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f8

    .line 155
    .end local v7           #ec:Ljava/util/Enumeration;
    :cond_115
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SignedData;->getVersion()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->intValue()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/bouncycastle/jce/PKCS7SignedData;->version:I

    .line 160
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/PKCS7SignedData;->digestalgos:Ljava/util/Set;

    .line 161
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SignedData;->getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v6

    .line 163
    .local v6, e:Ljava/util/Enumeration;
    :goto_13a
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_15f

    .line 165
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 166
    .local v13, s:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v17, 0x0

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 167
    .local v11, o:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestalgos:Ljava/util/Set;

    move-object/from16 v17, v0

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13a

    .line 173
    .end local v11           #o:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v13           #s:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_15f
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SignedData;->getSignerInfos()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v16

    .line 174
    .local v16, signerinfos:Lorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_177

    .line 176
    new-instance v17, Ljava/lang/SecurityException;

    const-string v18, "This PKCS#7 object has multiple SignerInfos - only one is supported at this time"

    invoke-direct/range {v17 .. v18}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 179
    :cond_177
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/bouncycastle/asn1/pkcs/SignerInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/SignerInfo;

    move-result-object v15

    .line 181
    .local v15, signerInfo:Lorg/bouncycastle/asn1/pkcs/SignerInfo;
    invoke-virtual {v15}, Lorg/bouncycastle/asn1/pkcs/SignerInfo;->getVersion()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->intValue()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/bouncycastle/jce/PKCS7SignedData;->signerversion:I

    .line 183
    invoke-virtual {v15}, Lorg/bouncycastle/asn1/pkcs/SignerInfo;->getIssuerAndSerialNumber()Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    move-result-object v9

    .line 188
    .local v9, isAnds:Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->getCertificateSerialNumber()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v14

    .line 189
    .local v14, serialNumber:Ljava/math/BigInteger;
    new-instance v10, Lorg/bouncycastle/jce/X509Principal;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->getName()Lorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v17

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/X509Principal;-><init>(Lorg/bouncycastle/asn1/x509/X509Name;)V

    .line 191
    .local v10, issuer:Lorg/bouncycastle/jce/X509Principal;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/PKCS7SignedData;->certs:Ljava/util/Collection;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i:Ljava/util/Iterator;
    :cond_1b5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1e0

    .line 193
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 194
    .local v2, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b5

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v17

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jce/X509Principal;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b5

    .line 197
    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/PKCS7SignedData;->signCert:Ljava/security/cert/X509Certificate;

    .line 202
    .end local v2           #cert:Ljava/security/cert/X509Certificate;
    :cond_1e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/PKCS7SignedData;->signCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v17, v0

    if-nez v17, :cond_20a

    .line 204
    new-instance v17, Ljava/lang/SecurityException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Can\'t find signing certificate with serial "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x10

    move-object v0, v14

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 207
    :cond_20a
    invoke-virtual {v15}, Lorg/bouncycastle/asn1/pkcs/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/PKCS7SignedData;->digestAlgorithm:Ljava/lang/String;

    .line 209
    invoke-virtual {v15}, Lorg/bouncycastle/asn1/pkcs/SignerInfo;->getEncryptedDigest()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/PKCS7SignedData;->digest:[B

    .line 210
    invoke-virtual {v15}, Lorg/bouncycastle/asn1/pkcs/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/PKCS7SignedData;->digestEncryptionAlgorithm:Ljava/lang/String;

    .line 212
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/jce/PKCS7SignedData;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/PKCS7SignedData;->sig:Ljava/security/Signature;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/PKCS7SignedData;->sig:Ljava/security/Signature;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/PKCS7SignedData;->signCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 215
    return-void
.end method

.method private getIssuer([B)Lorg/bouncycastle/asn1/DERObject;
    .registers 8
    .parameter "enc"

    .prologue
    .line 469
    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 470
    .local v1, in:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 471
    .local v2, seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    instance-of v3, v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    if-eqz v3, :cond_21

    const/4 v3, 0x3

    :goto_1a
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/DERObject;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_20} :catch_23

    return-object p0

    .restart local p0
    :cond_21
    const/4 v3, 0x2

    goto :goto_1a

    .line 473
    .end local v1           #in:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v2           #seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local p0
    :catch_23
    move-exception v3

    move-object v0, v3

    .line 475
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException reading from ByteArray: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getCRLs()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->crls:Ljava/util/Collection;

    return-object v0
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .registers 3

    .prologue
    .line 400
    iget-object v0, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->certs:Ljava/util/Collection;

    iget-object v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->certs:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/security/cert/X509Certificate;

    check-cast p0, [Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public getDigestAlgorithm()Ljava/lang/String;
    .registers 5

    .prologue
    .line 344
    iget-object v0, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestAlgorithm:Ljava/lang/String;

    .line 345
    .local v0, da:Ljava/lang/String;
    iget-object v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestEncryptionAlgorithm:Ljava/lang/String;

    .line 347
    .local v1, dea:Ljava/lang/String;
    iget-object v2, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestAlgorithm:Ljava/lang/String;

    const-string v3, "1.2.840.113549.2.5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 349
    const-string v0, "MD5"

    .line 360
    :cond_10
    :goto_10
    iget-object v2, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestEncryptionAlgorithm:Ljava/lang/String;

    const-string v3, "1.2.840.113549.1.1.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 362
    const-string v1, "RSA"

    .line 369
    :cond_1c
    :goto_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "with"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 351
    :cond_34
    iget-object v2, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestAlgorithm:Ljava/lang/String;

    const-string v3, "1.2.840.113549.2.2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 353
    const-string v0, "MD2"

    goto :goto_10

    .line 355
    :cond_41
    iget-object v2, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestAlgorithm:Ljava/lang/String;

    const-string v3, "1.3.14.3.2.26"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 357
    const-string v0, "SHA1"

    goto :goto_10

    .line 364
    :cond_4e
    iget-object v2, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestEncryptionAlgorithm:Ljava/lang/String;

    const-string v3, "1.2.840.10040.4.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 366
    const-string v1, "DSA"

    goto :goto_1c
.end method

.method public getEncoded()[B
    .registers 24

    .prologue
    .line 487
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/PKCS7SignedData;->sig:Ljava/security/Signature;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/security/Signature;->sign()[B

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/jce/PKCS7SignedData;->digest:[B

    .line 493
    new-instance v18, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v18 .. v18}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 494
    .local v18, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestalgos:Ljava/util/Set;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_53

    .line 496
    new-instance v4, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v20, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x0

    move-object v0, v4

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 500
    .local v4, a:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_46

    goto :goto_1f

    .line 595
    .end local v4           #a:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v13           #i:Ljava/util/Iterator;
    .end local v18           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local p0
    :catch_46
    move-exception v20

    move-object/from16 v12, v20

    .line 597
    .local v12, e:Ljava/lang/Exception;
    new-instance v20, Ljava/lang/RuntimeException;

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 503
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v13       #i:Ljava/util/Iterator;
    .restart local v18       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .restart local p0
    :cond_53
    :try_start_53
    new-instance v5, Lorg/bouncycastle/asn1/DERSet;

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    .line 507
    .local v5, algos:Lorg/bouncycastle/asn1/DERSet;
    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    new-instance v20, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v21, "1.2.840.113549.1.7.1"

    invoke-direct/range {v20 .. v21}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 512
    .local v8, contentinfo:Lorg/bouncycastle/asn1/DERSequence;
    new-instance v18, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v18           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v18 .. v18}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 513
    .restart local v18       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/PKCS7SignedData;->certs:Ljava/util/Collection;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_79
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a3

    .line 515
    new-instance v17, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v20, Ljava/io/ByteArrayInputStream;

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 516
    .local v17, tempstream:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_79

    .line 519
    .end local v17           #tempstream:Lorg/bouncycastle/asn1/ASN1InputStream;
    :cond_a3
    new-instance v9, Lorg/bouncycastle/asn1/DERSet;

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    .line 523
    .local v9, dercertificates:Lorg/bouncycastle/asn1/DERSet;
    new-instance v15, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 527
    .local v15, signerinfo:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v20, Lorg/bouncycastle/asn1/DERInteger;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/jce/PKCS7SignedData;->signerversion:I

    move/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 529
    new-instance v14, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    new-instance v20, Lorg/bouncycastle/asn1/x509/X509Name;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/PKCS7SignedData;->signCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/PKCS7SignedData;->getIssuer([B)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/X509Name;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    new-instance v21, Lorg/bouncycastle/asn1/DERInteger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/PKCS7SignedData;->signCert:Ljava/security/cert/X509Certificate;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    move-object v0, v14

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/x509/X509Name;Lorg/bouncycastle/asn1/DERInteger;)V

    .line 532
    .local v14, isAnds:Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;
    invoke-virtual {v15, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 537
    new-instance v20, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v21, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestAlgorithm:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sget-object v22, Lorg/bouncycastle/asn1/DERNull;->THE_ONE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct/range {v20 .. v22}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 544
    new-instance v20, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v21, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/PKCS7SignedData;->digestEncryptionAlgorithm:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sget-object v22, Lorg/bouncycastle/asn1/DERNull;->THE_ONE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct/range {v20 .. v22}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 552
    new-instance v20, Lorg/bouncycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/PKCS7SignedData;->digest:[B

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 558
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 559
    .local v7, body:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v20, Lorg/bouncycastle/asn1/DERInteger;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/jce/PKCS7SignedData;->version:I

    move/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 560
    invoke-virtual {v7, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 561
    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 562
    new-instance v20, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/PKCS7SignedData;->crls:Ljava/util/Collection;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v20

    if-lez v20, :cond_1cf

    .line 566
    new-instance v18, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v18           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v18 .. v18}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 567
    .restart local v18       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/PKCS7SignedData;->crls:Ljava/util/Collection;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local p0
    :goto_187
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1b1

    .line 569
    new-instance v16, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v20, Ljava/io/ByteArrayInputStream;

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509CRL;

    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 570
    .local v16, t:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_187

    .line 572
    .end local v16           #t:Lorg/bouncycastle/asn1/ASN1InputStream;
    :cond_1b1
    new-instance v10, Lorg/bouncycastle/asn1/DERSet;

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    .line 573
    .local v10, dercrls:Lorg/bouncycastle/asn1/DERSet;
    new-instance v20, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 578
    .end local v10           #dercrls:Lorg/bouncycastle/asn1/DERSet;
    :cond_1cf
    new-instance v20, Lorg/bouncycastle/asn1/DERSet;

    new-instance v21, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v21

    move-object v1, v15

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct/range {v20 .. v21}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 583
    new-instance v19, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v19 .. v19}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 584
    .local v19, whole:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v20, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v21, "1.2.840.113549.1.7.2"

    invoke-direct/range {v20 .. v21}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 585
    new-instance v20, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/16 v21, 0x0

    new-instance v22, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct/range {v20 .. v22}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual/range {v19 .. v20}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 587
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 589
    .local v6, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v11, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v11, v6}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 590
    .local v11, dout:Lorg/bouncycastle/asn1/DEROutputStream;
    new-instance v20, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 591
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/DEROutputStream;->close()V

    .line 593
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_222
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_222} :catch_46

    move-result-object v20

    return-object v20
.end method

.method public getSigningCertificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->signCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getSigningInfoVersion()I
    .registers 2

    .prologue
    .line 432
    iget v0, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->signerversion:I

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 424
    iget v0, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->version:I

    return v0
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 380
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->privKey:Ljava/security/PrivateKey;

    if-nez v1, :cond_10

    .line 382
    iget-object v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->sig:Ljava/security/Signature;

    iget-object v2, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->signCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 393
    :goto_f
    return-void

    .line 386
    :cond_10
    iget-object v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->sig:Ljava/security/Signature;

    iget-object v2, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->privKey:Ljava/security/PrivateKey;

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_f

    .line 389
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 391
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public update(B)V
    .registers 3
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 441
    iget-object v0, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->sig:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update(B)V

    .line 442
    return-void
.end method

.method public update([BII)V
    .registers 5
    .parameter "buf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->sig:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V

    .line 451
    return-void
.end method

.method public verify()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->sig:Ljava/security/Signature;

    iget-object v1, p0, Lorg/bouncycastle/jce/PKCS7SignedData;->digest:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    return v0
.end method
