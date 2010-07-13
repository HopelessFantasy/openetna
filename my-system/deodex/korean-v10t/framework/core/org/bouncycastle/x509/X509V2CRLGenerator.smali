.class public Lorg/bouncycastle/x509/X509V2CRLGenerator;
.super Ljava/lang/Object;
.source "X509V2CRLGenerator.java"


# instance fields
.field private dateF:Ljava/text/SimpleDateFormat;

.field private extOrdering:Ljava/util/Vector;

.field private extensions:Ljava/util/Hashtable;

.field private sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field private signatureAlgorithm:Ljava/lang/String;

.field private tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

.field private tz:Ljava/util/SimpleTimeZone;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->dateF:Ljava/text/SimpleDateFormat;

    .line 54
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "Z"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tz:Ljava/util/SimpleTimeZone;

    .line 59
    iput-object v3, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->extensions:Ljava/util/Hashtable;

    .line 60
    iput-object v3, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->extOrdering:Ljava/util/Vector;

    .line 64
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->dateF:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tz:Ljava/util/SimpleTimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 66
    new-instance v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    .line 67
    return-void
.end method


# virtual methods
.method public addCRL(Ljava/security/cert/X509CRL;)V
    .registers 10
    .parameter "other"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getRevokedCertificates()Ljava/util/Set;

    move-result-object v4

    .line 153
    .local v4, revocations:Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 154
    .local v3, it:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 156
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRLEntry;

    .line 158
    .local v2, entry:Ljava/security/cert/X509CRLEntry;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {v2}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 162
    .local v0, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    :try_start_1d
    iget-object v5, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2a} :catch_2b

    goto :goto_8

    .line 164
    :catch_2b
    move-exception v5

    move-object v1, v5

    .line 166
    .local v1, e:Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CRLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception processing encoding of CRL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 169
    .end local v0           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #entry:Ljava/security/cert/X509CRLEntry;
    :cond_4a
    return-void
.end method

.method public addCRLEntry(Ljava/math/BigInteger;Ljava/util/Date;I)V
    .registers 7
    .parameter "userCertificate"
    .parameter "revocationDate"
    .parameter "reason"

    .prologue
    .line 122
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    new-instance v2, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1, v2, p3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/x509/Time;I)V

    .line 123
    return-void
.end method

.method public addCRLEntry(Ljava/math/BigInteger;Ljava/util/Date;ILjava/util/Date;)V
    .registers 9
    .parameter "userCertificate"
    .parameter "revocationDate"
    .parameter "reason"
    .parameter "invalidityDate"

    .prologue
    .line 132
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    new-instance v2, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    new-instance v3, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v3, p4}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1, v2, p3, v3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/x509/Time;ILorg/bouncycastle/asn1/DERGeneralizedTime;)V

    .line 133
    return-void
.end method

.method public addCRLEntry(Ljava/math/BigInteger;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 7
    .parameter "userCertificate"
    .parameter "revocationDate"
    .parameter "extensions"

    .prologue
    .line 140
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    new-instance v2, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1, v2, p3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    .line 141
    return-void
.end method

.method public addExtension(Ljava/lang/String;ZLorg/bouncycastle/asn1/DEREncodable;)V
    .registers 5
    .parameter "OID"
    .parameter "critical"
    .parameter "value"

    .prologue
    .line 204
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;ZLorg/bouncycastle/asn1/DEREncodable;)V

    .line 205
    return-void
.end method

.method public addExtension(Ljava/lang/String;Z[B)V
    .registers 5
    .parameter "OID"
    .parameter "critical"
    .parameter "value"

    .prologue
    .line 244
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;Z[B)V

    .line 245
    return-void
.end method

.method public addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;ZLorg/bouncycastle/asn1/DEREncodable;)V
    .registers 10
    .parameter "OID"
    .parameter "critical"
    .parameter "value"

    .prologue
    .line 215
    iget-object v3, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->extensions:Ljava/util/Hashtable;

    if-nez v3, :cond_12

    .line 217
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->extensions:Ljava/util/Hashtable;

    .line 218
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->extOrdering:Ljava/util/Vector;

    .line 221
    :cond_12
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 222
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 226
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :try_start_1c
    invoke-virtual {v1, p3}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_27

    .line 233
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, p1, p2, v3}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;Z[B)V

    .line 234
    return-void

    .line 228
    :catch_27
    move-exception v2

    .line 230
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error encoding value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;Z[B)V
    .registers 7
    .parameter "OID"
    .parameter "critical"
    .parameter "value"

    .prologue
    .line 255
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->extensions:Ljava/util/Hashtable;

    if-nez v0, :cond_12

    .line 257
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->extensions:Ljava/util/Hashtable;

    .line 258
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->extOrdering:Ljava/util/Vector;

    .line 261
    :cond_12
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->extensions:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/asn1/x509/X509Extension;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, p3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, p2, v2}, Lorg/bouncycastle/asn1/x509/X509Extension;-><init>(ZLorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->extOrdering:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public generateX509CRL(Ljava/security/PrivateKey;)Ljava/security/cert/X509CRL;
    .registers 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 275
    :try_start_0
    const-string v1, "BC"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->generateX509CRL(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;
    :try_end_6
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v1

    return-object v1

    .line 277
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 279
    .local v0, e:Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "BC provider not installed!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public generateX509CRL(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509CRL;
    .registers 4
    .parameter "key"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->generateX509CRL(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;

    move-result-object v0

    return-object v0
.end method

.method public generateX509CRL(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;
    .registers 15
    .parameter "key"
    .parameter "provider"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 325
    const/4 v4, 0x0

    .line 329
    .local v4, sig:Ljava/security/Signature;
    :try_start_1
    iget-object v7, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_a} :catch_65

    move-result-object v4

    .line 343
    :goto_b
    if-eqz p3, :cond_8d

    .line 345
    invoke-virtual {v4, p1, p3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 352
    :goto_10
    iget-object v7, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->extensions:Ljava/util/Hashtable;

    if-eqz v7, :cond_22

    .line 354
    iget-object v7, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v8, Lorg/bouncycastle/asn1/x509/X509Extensions;

    iget-object v9, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->extOrdering:Ljava/util/Vector;

    iget-object v10, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->extensions:Ljava/util/Hashtable;

    invoke-direct {v8, v9, v10}, Lorg/bouncycastle/asn1/x509/X509Extensions;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    .line 357
    :cond_22
    iget-object v7, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->generateTBSCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v5

    .line 361
    .local v5, tbsCrl:Lorg/bouncycastle/asn1/x509/TBSCertList;
    :try_start_28
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 362
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 364
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 366
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/Signature;->update([B)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3c} :catch_91

    .line 374
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 376
    .local v6, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v6, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 377
    iget-object v7, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 378
    new-instance v7, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v4}, Ljava/security/Signature;->sign()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 382
    :try_start_55
    new-instance v7, Lorg/bouncycastle/jce/provider/X509CRLObject;

    new-instance v8, Lorg/bouncycastle/asn1/x509/CertificateList;

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/x509/CertificateList;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v7, v8}, Lorg/bouncycastle/jce/provider/X509CRLObject;-><init>(Lorg/bouncycastle/asn1/x509/CertificateList;)V
    :try_end_64
    .catch Ljava/security/cert/CRLException; {:try_start_55 .. :try_end_64} :catch_ac

    return-object v7

    .line 331
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    .end local v5           #tbsCrl:Lorg/bouncycastle/asn1/x509/TBSCertList;
    .end local v6           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :catch_65
    move-exception v7

    move-object v3, v7

    .line 335
    .local v3, ex:Ljava/security/NoSuchAlgorithmException;
    :try_start_67
    iget-object v7, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->signatureAlgorithm:Ljava/lang/String;

    invoke-static {v7, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_6c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_67 .. :try_end_6c} :catch_6e

    move-result-object v4

    goto :goto_b

    .line 337
    :catch_6e
    move-exception v7

    move-object v2, v7

    .line 339
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception creating signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 349
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    .end local v3           #ex:Ljava/security/NoSuchAlgorithmException;
    :cond_8d
    invoke-virtual {v4, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    goto :goto_10

    .line 368
    .restart local v5       #tbsCrl:Lorg/bouncycastle/asn1/x509/TBSCertList;
    :catch_91
    move-exception v7

    move-object v2, v7

    .line 370
    .local v2, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception encoding TBS cert - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 384
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #bOut:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    .restart local v6       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :catch_ac
    move-exception v7

    move-object v2, v7

    .line 386
    .local v2, e:Ljava/security/cert/CRLException;
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception creating CRL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/security/cert/CRLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public generateX509CRL(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;
    .registers 6
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 295
    :try_start_0
    const-string v1, "BC"

    invoke-virtual {p0, p1, v1, p2}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->generateX509CRL(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;
    :try_end_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 297
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 299
    .local v0, e:Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "BC provider not installed!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSignatureAlgNames()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 398
    invoke-static {}, Lorg/bouncycastle/x509/X509Util;->getAlgNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 74
    new-instance v0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    .line 75
    return-void
.end method

.method public setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V
    .registers 6
    .parameter "issuer"

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v2, Lorg/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setIssuer(Lorg/bouncycastle/asn1/x509/X509Name;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    .line 92
    return-void

    .line 88
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 90
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t process principal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setIssuerDN(Lorg/bouncycastle/asn1/x509/X509Name;)V
    .registers 3
    .parameter "issuer"

    .prologue
    .line 101
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setIssuer(Lorg/bouncycastle/asn1/x509/X509Name;)V

    .line 102
    return-void
.end method

.method public setNextUpdate(Ljava/util/Date;)V
    .registers 4
    .parameter "date"

    .prologue
    .line 113
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setNextUpdate(Lorg/bouncycastle/asn1/x509/Time;)V

    .line 114
    return-void
.end method

.method public setSignatureAlgorithm(Ljava/lang/String;)V
    .registers 5
    .parameter "signatureAlgorithm"

    .prologue
    .line 180
    iput-object p1, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->signatureAlgorithm:Ljava/lang/String;

    .line 184
    :try_start_2
    invoke-static {p1}, Lorg/bouncycastle/x509/X509Util;->getAlgorithmOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_18

    .line 191
    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-static {v1}, Lorg/bouncycastle/x509/X509Util;->getSigAlgID(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 193
    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    iget-object v2, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 194
    return-void

    .line 186
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 188
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown signature type requested"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setThisUpdate(Ljava/util/Date;)V
    .registers 4
    .parameter "date"

    .prologue
    .line 107
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->setThisUpdate(Lorg/bouncycastle/asn1/x509/Time;)V

    .line 108
    return-void
.end method
