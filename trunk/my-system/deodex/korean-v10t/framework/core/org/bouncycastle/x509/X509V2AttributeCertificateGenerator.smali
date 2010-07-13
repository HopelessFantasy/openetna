.class public Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;
.super Ljava/lang/Object;
.source "X509V2AttributeCertificateGenerator.java"


# instance fields
.field private acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

.field private extOrdering:Ljava/util/Vector;

.field private extensions:Ljava/util/Hashtable;

.field private sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field private signatureAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extensions:Ljava/util/Hashtable;

    .line 47
    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extOrdering:Ljava/util/Vector;

    .line 51
    new-instance v0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    .line 52
    return-void
.end method


# virtual methods
.method public addAttribute(Lorg/bouncycastle/x509/X509Attribute;)V
    .registers 4
    .parameter "attribute"

    .prologue
    .line 136
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    invoke-virtual {p1}, Lorg/bouncycastle/x509/X509Attribute;->toASN1Object()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Attribute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->addAttribute(Lorg/bouncycastle/asn1/x509/Attribute;)V

    .line 137
    return-void
.end method

.method public addExtension(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5
    .parameter "OID"
    .parameter "critical"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->addExtension(Ljava/lang/String;Z[B)V

    .line 158
    return-void
.end method

.method public addExtension(Ljava/lang/String;Z[B)V
    .registers 8
    .parameter "OID"
    .parameter "critical"
    .parameter "value"

    .prologue
    .line 170
    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extensions:Ljava/util/Hashtable;

    if-nez v1, :cond_12

    .line 172
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extensions:Ljava/util/Hashtable;

    .line 173
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extOrdering:Ljava/util/Vector;

    .line 176
    :cond_12
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extensions:Ljava/util/Hashtable;

    new-instance v2, Lorg/bouncycastle/asn1/x509/X509Extension;

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, p3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, p2, v3}, Lorg/bouncycastle/asn1/x509/X509Extension;-><init>(ZLorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extOrdering:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public generateCertificate(Ljava/security/PrivateKey;Ljava/lang/String;)Lorg/bouncycastle/x509/X509AttributeCertificate;
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
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->generateCertificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/x509/X509AttributeCertificate;

    move-result-object v0

    return-object v0
.end method

.method public generateCertificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/x509/X509AttributeCertificate;
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
    .line 205
    const/4 v5, 0x0

    .line 207
    .local v5, sig:Ljava/security/Signature;
    iget-object v7, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-nez v7, :cond_d

    .line 209
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "no signature algorithm specified"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 214
    :cond_d
    :try_start_d
    iget-object v7, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_16} :catch_71

    move-result-object v5

    .line 228
    :goto_17
    if-eqz p3, :cond_99

    .line 230
    invoke-virtual {v5, p1, p3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 237
    :goto_1c
    iget-object v7, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extensions:Ljava/util/Hashtable;

    if-eqz v7, :cond_2e

    .line 239
    iget-object v7, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    new-instance v8, Lorg/bouncycastle/asn1/x509/X509Extensions;

    iget-object v9, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extOrdering:Ljava/util/Vector;

    iget-object v10, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extensions:Ljava/util/Hashtable;

    invoke-direct {v8, v9, v10}, Lorg/bouncycastle/asn1/x509/X509Extensions;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    .line 242
    :cond_2e
    iget-object v7, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->generateAttributeCertificateInfo()Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    .line 246
    .local v0, acInfo:Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;
    :try_start_34
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 247
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 249
    .local v2, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 251
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/Signature;->update([B)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_48} :catch_9d

    .line 258
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 260
    .local v6, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 261
    iget-object v7, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 262
    new-instance v7, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v5}, Ljava/security/Signature;->sign()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 266
    :try_start_61
    new-instance v7, Lorg/bouncycastle/x509/X509V2AttributeCertificate;

    new-instance v8, Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v7, v8}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;-><init>(Lorg/bouncycastle/asn1/x509/AttributeCertificate;)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_70} :catch_b8

    return-object v7

    .line 216
    .end local v0           #acInfo:Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .end local v1           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v2           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    .end local v6           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :catch_71
    move-exception v7

    move-object v4, v7

    .line 220
    .local v4, ex:Ljava/security/NoSuchAlgorithmException;
    :try_start_73
    iget-object v7, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    invoke-static {v7, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_78
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_73 .. :try_end_78} :catch_7a

    move-result-object v5

    goto :goto_17

    .line 222
    :catch_7a
    move-exception v7

    move-object v3, v7

    .line 224
    .local v3, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception creating signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 234
    .end local v3           #e:Ljava/security/NoSuchAlgorithmException;
    .end local v4           #ex:Ljava/security/NoSuchAlgorithmException;
    :cond_99
    invoke-virtual {v5, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    goto :goto_1c

    .line 253
    .restart local v0       #acInfo:Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;
    :catch_9d
    move-exception v7

    move-object v3, v7

    .line 255
    .local v3, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception encoding Attribute cert - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 268
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #bOut:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    .restart local v6       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :catch_b8
    move-exception v7

    move-object v3, v7

    .line 270
    .local v3, e:Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "constructed invalid certificate!"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public getSignatureAlgNames()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 281
    invoke-static {}, Lorg/bouncycastle/x509/X509Util;->getAlgNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 59
    new-instance v0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    .line 60
    iput-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extensions:Ljava/util/Hashtable;

    .line 61
    iput-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->extOrdering:Ljava/util/Vector;

    .line 62
    return-void
.end method

.method public setHolder(Lorg/bouncycastle/x509/AttributeCertificateHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 70
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    iget-object v1, p1, Lorg/bouncycastle/x509/AttributeCertificateHolder;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setHolder(Lorg/bouncycastle/asn1/x509/Holder;)V

    .line 71
    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/x509/AttributeCertificateIssuer;)V
    .registers 4
    .parameter "issuer"

    .prologue
    .line 79
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    iget-object v1, p1, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setIssuer(Lorg/bouncycastle/asn1/x509/AttCertIssuer;)V

    .line 80
    return-void
.end method

.method public setIssuerUniqueId([Z)V
    .registers 4
    .parameter "iui"

    .prologue
    .line 144
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented (yet)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNotAfter(Ljava/util/Date;)V
    .registers 4
    .parameter "date"

    .prologue
    .line 100
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setEndDate(Lorg/bouncycastle/asn1/DERGeneralizedTime;)V

    .line 101
    return-void
.end method

.method public setNotBefore(Ljava/util/Date;)V
    .registers 4
    .parameter "date"

    .prologue
    .line 94
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setStartDate(Lorg/bouncycastle/asn1/DERGeneralizedTime;)V

    .line 95
    return-void
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .registers 4
    .parameter "serialNumber"

    .prologue
    .line 88
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setSerialNumber(Lorg/bouncycastle/asn1/DERInteger;)V

    .line 89
    return-void
.end method

.method public setSignatureAlgorithm(Ljava/lang/String;)V
    .registers 6
    .parameter "signatureAlgorithm"

    .prologue
    .line 112
    iput-object p1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    .line 116
    :try_start_2
    invoke-static {p1}, Lorg/bouncycastle/x509/X509Util;->getAlgorithmOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_1b

    .line 124
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/DERNull;->THE_ONE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 127
    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    iget-object v2, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificateGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 128
    return-void

    .line 118
    :catch_1b
    move-exception v1

    move-object v0, v1

    .line 120
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown signature type requested"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
