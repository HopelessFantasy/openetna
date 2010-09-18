.class public Lorg/bouncycastle/x509/X509V1CertificateGenerator;
.super Ljava/lang/Object;
.source "X509V1CertificateGenerator.java"


# instance fields
.field private sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field private signatureAlgorithm:Ljava/lang/String;

.field private tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    .line 52
    return-void
.end method


# virtual methods
.method public generateX509Certificate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
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
    .line 189
    :try_start_0
    const-string v1, "BC"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    :try_end_6
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v1

    return-object v1

    .line 191
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 193
    .local v0, e:Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "BC provider not installed!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
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
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .registers 14
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
    .line 240
    const/4 v4, 0x0

    .line 244
    .local v4, sig:Ljava/security/Signature;
    :try_start_1
    iget-object v7, p0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_a} :catch_53

    move-result-object v4

    .line 258
    :goto_b
    if-eqz p3, :cond_7b

    .line 260
    invoke-virtual {v4, p1, p3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 267
    :goto_10
    iget-object v7, p0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->generateTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v5

    .line 271
    .local v5, tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    :try_start_16
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 272
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 274
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 276
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/Signature;->update([B)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2a} :catch_7f

    .line 283
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 285
    .local v6, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v6, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 286
    iget-object v7, p0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 287
    new-instance v7, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v4}, Ljava/security/Signature;->sign()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 289
    new-instance v7, Lorg/bouncycastle/jce/provider/X509CertificateObject;

    new-instance v8, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v7, v8}, Lorg/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lorg/bouncycastle/asn1/x509/X509CertificateStructure;)V

    return-object v7

    .line 246
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    .end local v5           #tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    .end local v6           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :catch_53
    move-exception v7

    move-object v3, v7

    .line 250
    .local v3, ex:Ljava/security/NoSuchAlgorithmException;
    :try_start_55
    iget-object v7, p0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    invoke-static {v7, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_5a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_55 .. :try_end_5a} :catch_5c

    move-result-object v4

    goto :goto_b

    .line 252
    :catch_5c
    move-exception v7

    move-object v2, v7

    .line 254
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

    .line 264
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    .end local v3           #ex:Ljava/security/NoSuchAlgorithmException;
    :cond_7b
    invoke-virtual {v4, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    goto :goto_10

    .line 278
    .restart local v5       #tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    :catch_7f
    move-exception v7

    move-object v2, v7

    .line 280
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
.end method

.method public generateX509Certificate(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
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
    .line 208
    :try_start_0
    const-string v1, "BC"

    invoke-virtual {p0, p1, v1, p2}, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    :try_end_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 210
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 212
    .local v0, e:Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "BC provider not installed!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSignatureAlgNames()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 299
    invoke-static {}, Lorg/bouncycastle/x509/X509Util;->getAlgNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 59
    new-instance v0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    .line 60
    return-void
.end method

.method public setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V
    .registers 6
    .parameter "issuer"

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    new-instance v2, Lorg/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setIssuer(Lorg/bouncycastle/asn1/x509/X509Name;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    .line 91
    return-void

    .line 87
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 89
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
    .line 100
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setIssuer(Lorg/bouncycastle/asn1/x509/X509Name;)V

    .line 101
    return-void
.end method

.method public setNotAfter(Ljava/util/Date;)V
    .registers 4
    .parameter "date"

    .prologue
    .line 112
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setEndDate(Lorg/bouncycastle/asn1/x509/Time;)V

    .line 113
    return-void
.end method

.method public setNotBefore(Ljava/util/Date;)V
    .registers 4
    .parameter "date"

    .prologue
    .line 106
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setStartDate(Lorg/bouncycastle/asn1/x509/Time;)V

    .line 107
    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .registers 8
    .parameter "key"

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    new-instance v3, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 152
    return-void

    .line 148
    :catch_1f
    move-exception v1

    move-object v0, v1

    .line 150
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to process key - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .registers 4
    .parameter "serialNumber"

    .prologue
    .line 68
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_10

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serial number must be a positive integer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_10
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setSerialNumber(Lorg/bouncycastle/asn1/DERInteger;)V

    .line 74
    return-void
.end method

.method public setSignatureAlgorithm(Ljava/lang/String;)V
    .registers 5
    .parameter "signatureAlgorithm"

    .prologue
    .line 163
    iput-object p1, p0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    .line 167
    :try_start_2
    invoke-static {p1}, Lorg/bouncycastle/x509/X509Util;->getAlgorithmOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_18

    .line 174
    iget-object v1, p0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-static {v1}, Lorg/bouncycastle/x509/X509Util;->getSigAlgID(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 176
    iget-object v1, p0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    iget-object v2, p0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 177
    return-void

    .line 169
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 171
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown signature type requested"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V
    .registers 6
    .parameter "subject"

    .prologue
    .line 123
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    new-instance v2, Lorg/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setSubject(Lorg/bouncycastle/asn1/x509/X509Name;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    .line 129
    return-void

    .line 125
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 127
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

.method public setSubjectDN(Lorg/bouncycastle/asn1/x509/X509Name;)V
    .registers 3
    .parameter "subject"

    .prologue
    .line 137
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V1CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setSubject(Lorg/bouncycastle/asn1/x509/X509Name;)V

    .line 138
    return-void
.end method
