.class public Lorg/bouncycastle/jce/X509V3CertificateGenerator;
.super Ljava/lang/Object;
.source "X509V3CertificateGenerator.java"


# static fields
.field private static algorithms:Ljava/util/Hashtable;


# instance fields
.field private extOrdering:Ljava/util/Vector;

.field private extensions:Ljava/util/Hashtable;

.field private sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field private signatureAlgorithm:Ljava/lang/String;

.field private tbsGen:Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const-string v8, "1.2.840.113549.1.1.5"

    const-string v7, "1.2.840.113549.1.1.4"

    const-string v6, "1.2.840.113549.1.1.2"

    const-string v5, "1.2.840.10045.4.1"

    const-string v4, "1.2.840.10040.4.3"

    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    .line 50
    sget-object v0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "MD2WITHRSAENCRYPTION"

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.2"

    invoke-direct {v2, v6}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "MD2WITHRSA"

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.2"

    invoke-direct {v2, v6}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "MD5WITHRSAENCRYPTION"

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.4"

    invoke-direct {v2, v7}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "MD5WITHRSA"

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.4"

    invoke-direct {v2, v7}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHRSAENCRYPTION"

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.5"

    invoke-direct {v2, v8}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHRSA"

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.113549.1.1.5"

    invoke-direct {v2, v8}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160WITHRSAENCRYPTION"

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.3.36.3.3.1.2"

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160WITHRSA"

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.3.36.3.3.1.2"

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHDSA"

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.10040.4.3"

    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "DSAWITHSHA1"

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.10040.4.3"

    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "SHA1WITHECDSA"

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.10045.4.1"

    invoke-direct {v2, v5}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    const-string v1, "ECDSAWITHSHA1"

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v3, "1.2.840.10045.4.1"

    invoke-direct {v2, v5}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->extensions:Ljava/util/Hashtable;

    .line 44
    iput-object v0, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->extOrdering:Ljava/util/Vector;

    .line 66
    new-instance v0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    .line 67
    return-void
.end method


# virtual methods
.method public addExtension(Ljava/lang/String;ZLorg/bouncycastle/asn1/DEREncodable;)V
    .registers 5
    .parameter "OID"
    .parameter "critical"
    .parameter "value"

    .prologue
    .line 160
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;ZLorg/bouncycastle/asn1/DEREncodable;)V

    .line 161
    return-void
.end method

.method public addExtension(Ljava/lang/String;Z[B)V
    .registers 5
    .parameter "OID"
    .parameter "critical"
    .parameter "value"

    .prologue
    .line 202
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;Z[B)V

    .line 203
    return-void
.end method

.method public addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;ZLorg/bouncycastle/asn1/DEREncodable;)V
    .registers 10
    .parameter "OID"
    .parameter "critical"
    .parameter "value"

    .prologue
    .line 171
    iget-object v3, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->extensions:Ljava/util/Hashtable;

    if-nez v3, :cond_12

    .line 173
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->extensions:Ljava/util/Hashtable;

    .line 174
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->extOrdering:Ljava/util/Vector;

    .line 177
    :cond_12
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 178
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 182
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :try_start_1c
    invoke-virtual {v1, p3}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_27

    .line 189
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, p1, p2, v3}, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->addExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;Z[B)V

    .line 190
    return-void

    .line 184
    :catch_27
    move-exception v2

    .line 186
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
    .line 213
    iget-object v0, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->extensions:Ljava/util/Hashtable;

    if-nez v0, :cond_12

    .line 215
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->extensions:Ljava/util/Hashtable;

    .line 216
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->extOrdering:Ljava/util/Vector;

    .line 219
    :cond_12
    iget-object v0, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->extensions:Ljava/util/Hashtable;

    new-instance v1, Lorg/bouncycastle/asn1/x509/X509Extension;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, p3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, p2, v2}, Lorg/bouncycastle/asn1/x509/X509Extension;-><init>(ZLorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v0, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->extOrdering:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 221
    return-void
.end method

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
    .line 233
    :try_start_0
    const-string v1, "BC"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    :try_end_6
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v1

    return-object v1

    .line 235
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 237
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
    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
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
    .line 284
    const/4 v4, 0x0

    .line 286
    .local v4, sig:Ljava/security/Signature;
    iget-object v7, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-nez v7, :cond_d

    .line 288
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "no signature algorithm specified"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 293
    :cond_d
    :try_start_d
    iget-object v7, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_16} :catch_71

    move-result-object v4

    .line 307
    :goto_17
    if-eqz p3, :cond_99

    .line 309
    invoke-virtual {v4, p1, p3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 316
    :goto_1c
    iget-object v7, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->extensions:Ljava/util/Hashtable;

    if-eqz v7, :cond_2e

    .line 318
    iget-object v7, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v8, Lorg/bouncycastle/asn1/x509/X509Extensions;

    iget-object v9, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->extOrdering:Ljava/util/Vector;

    iget-object v10, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->extensions:Ljava/util/Hashtable;

    invoke-direct {v8, v9, v10}, Lorg/bouncycastle/asn1/x509/X509Extensions;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    .line 321
    :cond_2e
    iget-object v7, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v5

    .line 325
    .local v5, tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    :try_start_34
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 326
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 328
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 330
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/Signature;->update([B)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_48} :catch_9d

    .line 337
    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 339
    .local v6, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v6, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 340
    iget-object v7, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 341
    new-instance v7, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v4}, Ljava/security/Signature;->sign()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 343
    new-instance v7, Lorg/bouncycastle/jce/provider/X509CertificateObject;

    new-instance v8, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v7, v8}, Lorg/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lorg/bouncycastle/asn1/x509/X509CertificateStructure;)V

    return-object v7

    .line 295
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    .end local v5           #tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    .end local v6           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :catch_71
    move-exception v7

    move-object v3, v7

    .line 299
    .local v3, ex:Ljava/security/NoSuchAlgorithmException;
    :try_start_73
    iget-object v7, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    invoke-static {v7, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;
    :try_end_78
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_73 .. :try_end_78} :catch_7a

    move-result-object v4

    goto :goto_17

    .line 301
    :catch_7a
    move-exception v7

    move-object v2, v7

    .line 303
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

    .line 313
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    .end local v3           #ex:Ljava/security/NoSuchAlgorithmException;
    :cond_99
    invoke-virtual {v4, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    goto :goto_1c

    .line 332
    .restart local v5       #tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    :catch_9d
    move-exception v7

    move-object v2, v7

    .line 334
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
    .line 253
    :try_start_0
    const-string v1, "BC"

    invoke-virtual {p0, p1, v1, p2}, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->generateX509Certificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    :try_end_5
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 255
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 257
    .local v0, e:Ljava/security/NoSuchProviderException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "BC provider not installed!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 74
    new-instance v0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    .line 75
    iput-object v1, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->extensions:Ljava/util/Hashtable;

    .line 76
    iput-object v1, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->extOrdering:Ljava/util/Vector;

    .line 77
    return-void
.end method

.method public setIssuerDN(Lorg/bouncycastle/asn1/x509/X509Name;)V
    .registers 3
    .parameter "issuer"

    .prologue
    .line 95
    iget-object v0, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lorg/bouncycastle/asn1/x509/X509Name;)V

    .line 96
    return-void
.end method

.method public setNotAfter(Ljava/util/Date;)V
    .registers 4
    .parameter "date"

    .prologue
    .line 107
    iget-object v0, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setEndDate(Lorg/bouncycastle/asn1/x509/Time;)V

    .line 108
    return-void
.end method

.method public setNotBefore(Ljava/util/Date;)V
    .registers 4
    .parameter "date"

    .prologue
    .line 101
    iget-object v0, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setStartDate(Lorg/bouncycastle/asn1/x509/Time;)V

    .line 102
    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .registers 8
    .parameter "key"

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

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

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 131
    return-void

    .line 127
    :catch_1f
    move-exception v1

    move-object v0, v1

    .line 129
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
    .line 85
    iget-object v0, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSerialNumber(Lorg/bouncycastle/asn1/DERInteger;)V

    .line 86
    return-void
.end method

.method public setSignatureAlgorithm(Ljava/lang/String;)V
    .registers 5
    .parameter "signatureAlgorithm"

    .prologue
    .line 136
    iput-object p1, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    .line 138
    sget-object v0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->algorithms:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 140
    iget-object v0, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-nez v0, :cond_1c

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown signature type requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1c
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->sigOID:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->THE_ONE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 149
    iget-object v0, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    iget-object v1, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 150
    return-void
.end method

.method public setSubjectDN(Lorg/bouncycastle/asn1/x509/X509Name;)V
    .registers 3
    .parameter "subject"

    .prologue
    .line 116
    iget-object v0, p0, Lorg/bouncycastle/jce/X509V3CertificateGenerator;->tbsGen:Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lorg/bouncycastle/asn1/x509/X509Name;)V

    .line 117
    return-void
.end method
